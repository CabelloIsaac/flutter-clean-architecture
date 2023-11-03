import '../entities/project.dart';

abstract class ProjectsDataSource {
  Future<List<Project>> getProjects();

  Future<Project> getProjectById(String id);
}
