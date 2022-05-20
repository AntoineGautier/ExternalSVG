within ExternalSVG;
model ModelWithFan
  extends Modelica.Icons.Example;
  Fan fan(typ=ExternalSVG.Types.Fan.ArrayVariable)
   annotation (Placement(transformation(extent={{-20,40},{0,60}})));
  Fan fan1(typ=ExternalSVG.Types.Fan.SingleConstant)
   annotation (Placement(transformation(extent={{-20,-20},{0,0}})));
  Fan fan2(typ=ExternalSVG.Types.Fan.SingleVariable, text_flip=true)
   annotation (Placement(transformation(extent={{60,-20},{40,0}})));
  Fan fan3(typ=ExternalSVG.Types.Fan.SingleConstant, typSin=
    ExternalSVG.Types.FanSingle.Propeller)
   annotation (Placement(transformation(extent={{-20,-60},{0,-40}})));
end ModelWithFan;
