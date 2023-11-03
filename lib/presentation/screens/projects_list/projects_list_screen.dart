import 'package:flutter/material.dart';

import 'widgets/projects_list_view.dart';

class ProjectsListScreen extends StatelessWidget {
  static const String route = "/ProjectsListScreen";

  const ProjectsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Projects"),
      ),
      body: ProjectsListView(),
    );
  }
}
