package dcmodel
  model DCtoDCModel "DC/DC Converter Model"
    parameter Real Pout;
    model SignalCurrent "Generic current source using the input signal asource current"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      Modelica.Blocks.Interfaces.InPort inPort(final n = 1);
    end SignalCurrent;
    class LimPICont
      parameter Real Pout;
      parameter Real Vref;
      Modelica.Blocks.Continuous.LimIntegrator LimIntegrator1(outMax = Pout / Vref);
      Modelica.Blocks.Math.Add Add1;
      Modelica.Blocks.Math.Gain Gain1;
      Modelica.Blocks.Interfaces.InPort inPort;
      Modelica.Blocks.Interfaces.OutPort outPort;
    equation
      connect(LimIntegrator1.inPort,inPort);
      connect(Gain1.inPort,inPort);
      connect(Gain1.outPort,Add1.inPort1);
      connect(LimIntegrator1.outPort,Add1.inPort2);
      connect(Add1.outPort,outPort);
    end LimPICont;
    partial class CCS
      extends Modelica.Electrical.Analog.Interfaces.TwoPort;
    equation
      i1 = 0;
    end CCS;
    SignalCurrent SignalCurrent1 annotation(Placement(visible = true, transformation(origin = {50.7463,34.4942}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Ideal.IdealDiode Dout annotation(Placement(visible = true, transformation(origin = {-38.1426,38.1426}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    LimPICont LimPI(Pout = Pout, Vref = Vref) annotation(Placement(visible = true, transformation(origin = {-0.995025,42.1227}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Blocks.Nonlinear.Limiter Limiter1(uMax = {Pout / Vout}, uMin = {0}) annotation(Placement(visible = true, transformation(origin = {-27.8607,-38.806}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Sensors.VoltageSensor Volt annotation(Placement(visible = true, transformation(origin = {41.4594,-33.4992}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant Constant1(k = {Vout}) annotation(Placement(visible = true, transformation(origin = {-50.4146,-1.3267}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Blocks.Math.Feedback Feedback1 annotation(Placement(visible = true, transformation(origin = {68.6567,-1.65837}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Sensors.CurrentSensor Amp annotation(Placement(visible = true, transformation(origin = {14.262,-56.3847}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    annotation(Icon(), Diagram());
    Modelica.Electrical.Analog.Basic.Capacitor Cin(C = 0.00005) annotation(Placement(visible = true, transformation(origin = {72.3051,-55.058}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Ideal.IdealDiode Din annotation(Placement(visible = true, transformation(origin = {-4.31177,-71.6418}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Capacitor Cout(C = 0.00005) annotation(Placement(visible = true, transformation(origin = {52.073,52.073}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor Rhk annotation(Placement(visible = true, transformation(origin = {-42.4544,34.8259}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    CCS CCS1 annotation(Placement(visible = true, transformation(origin = {57.3798,27.1973}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Real Iout annotation(Placement(visible = true, transformation(origin = {-7.62852,53.068}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real eff annotation(Placement(visible = true, transformation(origin = {-0.331675,-42.7861}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real Vinmax annotation(Placement(visible = true, transformation(origin = {6.30182,21.5589}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real Vinmin annotation(Placement(visible = true, transformation(origin = {2.6534,-20.8955}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    parameter Real Vref annotation(Placement(visible = true, transformation(origin = {-7.9602,9.61857}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Interfaces.NegativePin n1 annotation(Placement(visible = true, transformation(origin = {-99.1708,-52.4046}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.1708,-52.4046}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Interfaces.PositivePin p annotation(Placement(visible = true, transformation(origin = {-99.5025,45.7711}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.5025,45.7711}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Interfaces.NegativePin n annotation(Placement(visible = true, transformation(origin = {101.161,-50.4146}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {101.161,-50.4146}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    Modelica.Electrical.Analog.Interfaces.PositivePin p1 annotation(Placement(visible = true, transformation(origin = {100.497,46.1028}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {100.497,46.1028}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  equation
    connect(Volt.p,Amp.p);
    connect(Din.n,Cin.p);
    connect(Din.p,p);
    connect(Cin.n,n);
    connect(Rhk.p,Cin.p);
    connect(Cin.n,Rhk.n);
    connect(CCS1.p2,Rhk.p);
    connect(CCS1.n2,Rhk.n);
    connect(CCS1.p1,p1);
    connect(CCS1.n1,n1);
    connect(Cout.p,Volt.p);
    connect(Cout.n,Volt.n);
    connect(Volt.n,n1);
    connect(Amp.n,p1);
    connect(Constant1.outPort,Feedback1.inPort1);
    connect(Feedback1.outPort,LimPI.inPort);
    connect(LimPI.outPort,Limiter1.inPort);
    connect(Volt.outPort,Feedback1.inPort2);
    connect(Limiter1.outPort,SignalCurrent1.inPort);
    connect(Dout.n,SignalCurrent1.n);
    connect(SignalCurrent1.p,Dout.p);
    connect(Dout.p,Cout.n);
    connect(Dout.n,Cout.p);
    Iout = Pout / Vref;
    CCS1.i2 = (CCS1.v1 * Amp.i) / ((CCS1.v2 + 0.0000000001) * eff);
    SignalCurrent1.i = if p.v > Vinmin and p.v < Vinmax then SignalCurrent1.inPort.signal[1] else 0;
  end DCtoDCModel;
end dcmodel;

