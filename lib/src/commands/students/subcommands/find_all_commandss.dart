import 'dart:io';

import 'package:args/command_runner.dart';

import '../../../repositories/student_repository.dart';

class FindAllCommandss extends Command {
  final StudentRepository repository;

  @override
  String get description => 'Find all students';
  @override
  String get name => 'findAll';

  FindAllCommandss(this.repository);
  @override
  Future<void> run() async {
    print('Aguarde buscando alunos...');
    final students = await repository.findAll();
    print('Apresentar tambem os cursos ? (S ou N)');
    final showCourses = stdin.readLineSync();
    print('---------------------------------------------');
    print('Alunos:');
    print('---------------------------------------------');
    for (var student in students) {
      if (showCourses?.toLowerCase() == 's') {
        print(
            '${student.id} - ${student.name} ${student.courses.where((course)=>course.isStudent).map((e) => e.name).toList()}');
      } else {
        print('${student.id} - ${student.name}');
      }
    }
  }
}
