import '../../domain/entities/project.dart';
import '../../domain/repositories/projects_repository.dart';
import '../../infrastructure/data_sources/clickup_project_data_source_impl.dart';
import '../../infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:flutter/material.dart';

class ProjectsProvider with ChangeNotifier {
  ProjectsProvider.instance() {
    getProjects();
  }

  final ProjectsRepository _projectsRepository = ProjectsRepositoryImpl(
    projectsDataSource: ClickUpProjectDataSourceImpl(),
  );

  List<Project> _projects = [];

  List<Project> get projects => _projects;

  set projects(List<Project> projects) {
    _projects = projects;
    notifyListeners();
  }

  Future<void> getProjects() async {
    projects = await _projectsRepository.getProjects();
  }
}
