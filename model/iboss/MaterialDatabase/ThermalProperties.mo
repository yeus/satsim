within iboss.MaterialDatabase;

record ThermalProperties "Thermal properties of materials with storage"
  extends Modelica.Icons.Record;
  parameter Modelica.SIunits.ThermalConductivity k "Thermal conductivity";
  parameter Modelica.SIunits.SpecificHeatCapacity c "Specific heat capacity";
  parameter Modelica.SIunits.Density d "Mass density";
end ThermalProperties;