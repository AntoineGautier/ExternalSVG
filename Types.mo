within ExternalSVG;
package Types "Package with type definitions"
  extends Modelica.Icons.TypesPackage;
type Fan = enumeration(
      None
  "No fan",
      SingleConstant
  "Single fan - Constant speed",
      SingleVariable
  "Single fan - Variable speed",
      ArrayVariable
  "Fan array - Variable speed")
  "Enumeration to configure the fan";
  type FanSingle = enumeration(
      Housed
    "Housed centrifugal fan",
      Plug
    "Plug fan",
      Propeller
    "Propeller fan")
    "Enumeration to specify the type of single fan";
end Types;
