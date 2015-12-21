within iboss.MaterialDatabase;

record Material "Thermal Properties of materials w/o storage"
  extends Modelica.Icons.Record;
  parameter Modelica.SIunits.ThermalConductivity k "Thermal conductivity";
  parameter Modelica.SIunits.SpecificHeatCapacity c "Specific heat capacity";
  parameter Modelica.SIunits.Density d "Mass density";
end Material;