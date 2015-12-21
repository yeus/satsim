within iboss.iboss_thermal.obsolete;

model heater_OnOff_noEvent "On-off controller for heater"
  parameter Real hysteresis = 5 "hysteresis of the heater";
  input Modelica.Blocks.Interfaces.RealInput reference_low "Connector of Real input signal used as reference signal" annotation(Placement(transformation(extent = {{-140, 80}, {-100, 40}}), iconTransformation(extent = {{-140, 80}, {-100, 40}})));
  input Modelica.Blocks.Interfaces.RealInput u "Connector of Real input signal used as measurement signal" annotation(Placement(transformation(extent = {{-140, -40}, {-100, -80}}), iconTransformation(extent = {{-140, -40}, {-100, -80}})));
  output Modelica.Blocks.Interfaces.RealOutput y(start = 0) "Connector of Real output signal used as actuator signal" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
  extends Modelica.Blocks.Icons.PartialBooleanBlock;

  function bangbang_heat
    input Real ref_low;
    input Real hys;
    input Real value;
    input Real actual_state;
    output Real state_out;
  algorithm
    if value < ref_low then
      state_out := 1;
    elseif value > ref_low + hys then
      state_out := 0;
    else
      state_out := actual_state;
    end if;
  end bangbang_heat;
equation
  y = noEvent(bangbang_heat(reference_low, hysteresis, u, y));
  annotation(Icon(graphics = {Text(textString = "low", lineThickness = 0.5, extent = {{-108.5, 14.5}, {27.5, -15.5}}), Text(textString = "u", extent = {{-94, -52}, {-34, -74}}), Line(points = {{-76, -32}, {-68, -6}, {-50, 26}, {-24, 40}, {-2, 42}, {16, 36}, {32, 28}, {48, 12}, {58, -6}, {68, -28}}, color = {255, 0, 0}), Line(points = {{-78, -2}, {-6, 18}, {82, -12}}, color = {255, 0, 0}), Line(points = {{-78, 12}, {-6, 30}, {82, 0}}), Line(points = {{-78, -16}, {-6, 4}, {82, -26}}), Line(points = {{-82, -18}, {-56, -18}, {-56, -40}, {64, -40}, {64, -20}, {90, -20}}, color = {255, 0, 255}), Text(textString = "high", lineThickness = 0.5, extent = {{-105.5, 66.7}, {30.5, 36.7}})}), Documentation(info = "<html>
<p>The block OnOffController sets the output signal <b>y</b> to <b>true</b> when
the input signal <b>u</b> falls below the <b>reference</b> signal minus half of
the bandwidth and sets the output signal <b>y</b> to <b>false</b> when the input
signal <b>u</b> exceeds the <b>reference</b> signal plus half of the bandwidth.</p>
</html>"), experiment(StopTime = 1, StartTime = 0));
end heater_OnOff_noEvent;