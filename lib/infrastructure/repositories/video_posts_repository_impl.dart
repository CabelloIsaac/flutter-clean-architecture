import '../../domain/data_sources/projects_data_source.dart';
import '../../domain/entities/project.dart';
import '../../domain/repositories/projects_repository.dart';

class ProjectsRepositoryImpl implements ProjectsRepository {
  final ProjectsDataSource projectsDataSource;

  ProjectsRepositoryImpl({required this.projectsDataSource});

  @override
  Future<Project> getProjectById(String id) {
    // TODO: implement getProjectById
    throw UnimplementedError();
  }

  @override
  Future<List<Project>> getProjects() {
    return projectsDataSource.getProjects();
  }
}
