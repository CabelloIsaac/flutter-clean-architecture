class Project {
  final String name;
  final String sku;
  final String nif;
  DateTime? syncedAt;

  Project({
    required this.name,
    required this.sku,
    required this.nif,
    this.syncedAt,
  });

  String get skuAndName => "$sku: $name";
}
