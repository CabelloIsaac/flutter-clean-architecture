import '../../../../domain/entities/project.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/projects_provider.dart';
import 'project_list_tile.dart';

class ProjectsListView extends StatelessWidget {
  const ProjectsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final projectsProvider = Provider.of<ProjectsProvider>(context);
    List<Project> projects = projectsProvider.projects;
    return ListView.builder(
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return ListTile(title: ProjectListTile(project: projects[index]));
      },
    );
  }
}
