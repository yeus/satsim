package DCModel
model DCtoDCModel "DC/DC Converter Model"
  parameter Real Pout;
  parameter Real Vref;
  parameter Real Vinmin;
  parameter Real Vinmax;
  parameter Real eff;
  Real Iout;
  
  model SignalCurrent "Generic current source using the input signal asource current"
    extends Electrical.Analog.Interfaces.OnePort;
    Blocks.Interfaces.InPort inPort(final n=1) ;
  end SignalCurrent;
  
  class LimPICont
      parameter Real Pout;
      parameter Real Vref;
      Blocks.Continuous.LimIntegrator LimIntegrator1(outMax=Pout/Vref) ;
      Blocks.Math.Add Add1 ;
      Blocks.Math.Gain Gain1 ;
      Blocks.Interfaces.InPort inPort ;
      Blocks.Interfaces.OutPort outPort ;
    equation
      connect(LimIntegrator1.inPort, inPort) ;
      connect(Gain1.inPort, inPort) ;
      connect(Gain1.outPort, Add1.inPort1) ;
      connect(LimIntegrator1.outPort, Add1.inPort2) ;
      connect(Add1.outPort, outPort) ;
  end LimPICont;
  
  partial class CCS
    extends Electrical.Analog.Interfaces.TwoPort;
  equation
    i1 = 0;
  end CCS;
  
  CCS CCS1 ;
  Electrical.Analog.Basic.Resistor Rhk ;
  Electrical.Analog.Basic.Capacitor Cout(C=50e-6) ;
  Electrical.Analog.Ideal.IdealDiode Din ;
  Electrical.Analog.Basic.Capacitor Cin(C=50e-6) ;
  Electrical.Analog.Interfaces.PositivePin p ;
  Electrical.Analog.Interfaces.NegativePin n ;
  Electrical.Analog.Interfaces.PositivePin p1 ;
  Electrical.Analog.Interfaces.NegativePin n1 ;
  Electrical.Analog.Sensors.CurrentSensor Amp ;
  Blocks.Math.Feedback Feedback1 ;
  Blocks.Sources.Constant Constant1(k={Vout}) ;
  Electrical.Analog.Sensors.VoltageSensor Volt ;
  Blocks.Nonlinear.Limiter Limiter1(uMax={Pout/Vout}, uMin={0});
  LimPICont LimPI(Pout=Pout, Vref=Vref) ;
  Electrical.Analog.Ideal.IdealDiode Dout ;
  SignalCurrent SignalCurrent1 ;
  equation
    connect(Volt.p, Amp.p) ;
    connect(Din.n, Cin.p) ;
    connect(Din.p, p) ;
    connect(Cin.n, n) ;
    connect(Rhk.p, Cin.p) ;
    connect(Cin.n, Rhk.n) ;
    connect(CCS1.p2, Rhk.p) ;
    connect(CCS1.n2, Rhk.n) ;
    connect(CCS1.p1, p1) ;
    connect(CCS1.n1, n1) ;
    connect(Cout.p, Volt.p) ;
    connect(Cout.n, Volt.n) ;
    connect(Volt.n, n1) ;
    connect(Amp.n, p1) ;
    connect(Constant1.outPort, Feedback1.inPort1) ;
    connect(Feedback1.outPort, LimPI.inPort) ;
    connect(LimPI.outPort, Limiter1.inPort) ;
    connect(Volt.outPort, Feedback1.inPort2) ;
    connect(Limiter1.outPort, SignalCurrent1.inPort) ;
    connect(Dout.n, SignalCurrent1.n) ;
    connect(SignalCurrent1.p, Dout.p) ;
    connect(Dout.p, Cout.n) ;
    connect(Dout.n, Cout.p) ;
    Iout = Pout/Vref;
    CCS1.i2 = (CCS1.v1)*(Amp.i)/((CCS1.v2 + 1e-10)*eff);
    SignalCurrent1.i = if p.v > Vinmin and p.v < Vinmax then SignalCurrent1.inPort.signal[1] else 0;
end DCtoDCModel;
end DCModel;
