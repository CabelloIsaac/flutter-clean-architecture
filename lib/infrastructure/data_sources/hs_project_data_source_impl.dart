import 'dart:convert';

import '../../domain/data_sources/projects_data_source.dart';
import '../../domain/entities/project.dart';
import '../models/hs_project_model.dart';

class HSProjectDataSourceImpl implements ProjectsDataSource {
  @override
  Future<Project> getProjectById(String id) {
    // TODO: implement getProjectById
    throw UnimplementedError();
  }

  @override
  Future<List<Project>> getProjects() async {
    const String reponse = """
      {"results": [
        {
          "properties": {
            "name": "ORBIDI",
            "sku": "KD-WEB",
            "nif": "B12345678",
            "createdate": "2023-10-30T03:30:17.883Z"
          }
        },
        {
          "properties": {
            "name": "FLUTTER",
            "sku": "KD-SEO",
            "nif": "A87654321",
            "createdate": "2023-10-30T03:30:17.883Z"
          }
        }
      ]}
    """;

    await Future.delayed(const Duration(seconds: 2));

    final jsonData = jsonDecode(reponse);
    final List<dynamic> jsonList = jsonData['results'] as List<dynamic>;

    return jsonList
        .map((e) => HSProjectModel.fromJson(e).toProjectEntity())
        .toList();
  }
}
