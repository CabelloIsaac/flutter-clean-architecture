import '../../domain/entities/project.dart';

class HSProjectModel {
  Properties properties;

  HSProjectModel({
    required this.properties,
  });

  factory HSProjectModel.fromJson(Map<String, dynamic> json) => HSProjectModel(
        properties: Properties.fromJson(json["properties"]),
      );

  Map<String, dynamic> toJson() => {
        "properties": properties.toJson(),
      };

  Project toProjectEntity() => Project(
        name: properties.name,
        sku: properties.sku,
        nif: properties.nif,
        syncedAt: properties.createdate,
      );
}

class Properties {
  String name;
  String sku;
  String nif;
  DateTime createdate;

  Properties({
    required this.name,
    required this.sku,
    required this.nif,
    required this.createdate,
  });

  factory Properties.fromJson(Map<String, dynamic> json) => Properties(
        name: json["name"],
        sku: json["sku"],
        nif: json["nif"],
        createdate: DateTime.parse(json["createdate"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "sku": sku,
        "nif": nif,
        "createdate": createdate.toIso8601String(),
      };
}
