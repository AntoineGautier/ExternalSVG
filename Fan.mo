within ExternalSVG;
model Fan

  parameter ExternalSVG.Types.Fan typ
    "Equipment type"
    annotation (Evaluate=true, Dialog(group="Configuration"));
  parameter ExternalSVG.Types.FanSingle typSin=
    ExternalSVG.Types.FanSingle.Housed
    "Type of single fan"
    annotation(Dialog(tab="Graphics"));

  parameter Integer text_rotation = 0
    "Text rotation angle in icon layer"
    annotation(Dialog(tab="Graphics"));
  parameter Boolean text_flip = false
    "True to flip text horizontally in icon layer"
    annotation(Dialog(tab="Graphics"));

  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
    Bitmap(
      visible=typ==ExternalSVG.Types.Fan.ArrayVariable,
        extent={{-100,-100},{100,100}},
        fileName="modelica://ExternalSVG/Resources/Array.svg"),
    Bitmap(
      visible=(typ==ExternalSVG.Types.Fan.SingleVariable or
        typ==ExternalSVG.Types.Fan.SingleConstant) and
        typSin==ExternalSVG.Types.FanSingle.Housed,
        extent={{-100,-100},{100,100}},
        fileName="modelica://ExternalSVG/Resources/Housed.svg"),
    Bitmap(
      visible=(typ==ExternalSVG.Types.Fan.SingleVariable or
        typ==ExternalSVG.Types.Fan.SingleConstant) and
        typSin==ExternalSVG.Types.FanSingle.Plug,
        extent={{-100,-100},{100,100}},
        fileName="modelica://ExternalSVG/Resources/Plug.svg"),
    Bitmap(
      visible=(typ==ExternalSVG.Types.Fan.SingleVariable or
        typ==ExternalSVG.Types.Fan.SingleConstant) and
        typSin==ExternalSVG.Types.FanSingle.Propeller,
        extent={{-100,-100},{100,100}},
        fileName="modelica://ExternalSVG/Resources/Propeller.svg"),
    Bitmap(
      visible=typ==ExternalSVG.Types.Fan.SingleVariable or
        typ==ExternalSVG.Types.Fan.ArrayVariable,
        extent=if text_flip then {{100,-360},{-100,-160}} else {{-100,-360},{100,-160}},
        rotation=text_rotation,
          fileName="modelica://ExternalSVG/Resources/VFD.svg"),
    Line(
      visible=typ==ExternalSVG.Types.Fan.SingleVariable or
        typ==ExternalSVG.Types.Fan.ArrayVariable,
          points={{0,-100},{0,-160}},
          color={0,0,0},
          thickness=1)}),
    Diagram(
        coordinateSystem(preserveAspectRatio=false)),
    Documentation(info="<html>
<p>
This partial class provides a standard interface for fan models.
</p>
</html>"));

end Fan;
