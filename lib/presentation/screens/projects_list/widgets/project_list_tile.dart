import '../../../../domain/entities/project.dart';
import 'package:flutter/material.dart';

class ProjectListTile extends StatelessWidget {
  const ProjectListTile({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(project.skuAndName),
      subtitle: Text(project.nif),
    );
  }
}
