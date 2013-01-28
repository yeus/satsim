partial model Element1Dcd "Partial heat transfer element with two HeatPort connectors that does not store energy"
  Modelica.SIunits.HeatFlowRate Q_flow "Heat flow rate from port_c -> port_d";
  Modelica.SIunits.TemperatureDifference dT "port_a.T - port_b.T";
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_c annotation(Placement(transformation(extent = {{-110,-10},{-90,10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_d annotation(Placement(transformation(extent = {{90,-10},{110,10}}, rotation = 0)));
equation
  dT = port_c.T - port_d.T;
  port_c.Q_flow = Q_flow;
  port_d.Q_flow = -Q_flow;
  annotation(Documentation(info = "<HTML>
<p>
This partial model contains the basic connectors and variables to
allow heat transfer models to be created that <b>do not store energy</b>,
This model defines and includes equations for the temperature
drop across the element, <b>dT</b>, and the heat flow rate
through the element from port_c to port_d, <b>Q_flow</b>.
</p>
<p>
By extending this model, it is possible to write simple
constitutive equations for many types of heat transfer components.
</p>
</HTML>
"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}), graphics), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}), graphics));
end Element1Dcd;

