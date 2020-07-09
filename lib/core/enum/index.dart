abstract class Enum {
  final Map<String, String> enums;
  Enum(this.enums);
  Map<String, String> getter() => enums;
  String getLabel(String value) => enums[value] ?? null;
}