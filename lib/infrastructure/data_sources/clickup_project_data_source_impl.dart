import 'dart:convert';

import '../../domain/entities/project.dart';

import '../../domain/data_sources/projects_data_source.dart';
import '../models/clickup_task_model.dart';

class ClickUpProjectDataSourceImpl implements ProjectsDataSource {
  @override
  Future<Project> getProjectById(String id) {
    // TODO: implement getProjectById
    throw UnimplementedError();
  }

  @override
  Future<List<Project>> getProjects() async {
    const String reponse = """
      [
        {
          "id": "qwerx342",
          "custom_id": "PROD-1234",
          "name": "KD-WEB: ORBIDI",
          "custom_fields": [
            {
              "id": "abc1234",
              "name": "NIF",
              "type": "text",
              "value": "B12345678"
            }
          ],
          "markdown_description": "string"
        },
        {
          "id": "qwerx323",
          "custom_id": "PROD-1235",
          "name": "KD-SEO: FLUTTER",
          "custom_fields": [
            {
              "id": "abc1234",
              "name": "NIF",
              "type": "text",
              "value": "A87654321"
            }
          ],
          "markdown_description": "string"
        }
      ]
    """;

    await Future.delayed(const Duration(seconds: 2));

    final jsonData = jsonDecode(reponse);
    final List<dynamic> jsonList = jsonData as List<dynamic>;

    return jsonList
        .map((e) => ClickUpTaskModel.fromJson(e).toProjectEntity())
        .toList();
  }
}
