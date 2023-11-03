import '../../domain/entities/project.dart';

class ClickUpTaskModel {
  String id;
  String customId;
  String name;
  List<CustomField> customFields;
  String markdownDescription;

  ClickUpTaskModel({
    required this.id,
    required this.customId,
    required this.name,
    required this.customFields,
    required this.markdownDescription,
  });

  factory ClickUpTaskModel.fromJson(Map<String, dynamic> json) =>
      ClickUpTaskModel(
        id: json["id"],
        customId: json["custom_id"],
        name: json["name"],
        customFields: List<CustomField>.from(
            json["custom_fields"].map((x) => CustomField.fromJson(x))),
        markdownDescription: json["markdown_description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "custom_id": customId,
        "name": name,
        "custom_fields":
            List<dynamic>.from(customFields.map((x) => x.toJson())),
        "markdown_description": markdownDescription,
      };

  String extractSKUFromName() {
    return name.split(":")[0].trim();
  }

  String extractNameFromName() {
    return name.split(":")[1].trim();
  }

  Project toProjectEntity() {
    return Project(
      name: extractNameFromName(),
      sku: extractSKUFromName(),
      nif: customFields.firstWhere((element) => element.name == "NIF").value,
    );
  }
}

class CustomField {
  String id;
  String name;
  String type;
  String value;

  CustomField({
    required this.id,
    required this.name,
    required this.type,
    required this.value,
  });

  factory CustomField.fromJson(Map<String, dynamic> json) => CustomField(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "value": value,
      };
}
