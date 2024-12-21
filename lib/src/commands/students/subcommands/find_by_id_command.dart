import 'package:args/command_runner.dart';

import '../../../repositories/student_repository.dart';

class FindByIdCommand extends Command {
  final StudentRepository studentRepository;

  @override
  String get description => 'Find Student by Id';

  @override
  String get name => 'byId';

  FindByIdCommand(this.studentRepository) {
    argParser.addOption('id', help: 'Student Id', abbr: 'i');
  }

  @override
  Future<void> run() async {
    //print(argResults?['id']);

    if (argResults?['id'] == null) {
      print('por favor envie o id do aluno com o comando --id=0 o -i 0');
      return;
    }

    final id = int.parse(argResults?['id']);

    print('Aguarde buscando alunos...');
    final student = await studentRepository.findById(id);
    print('---------------------------------');
    print('Aluno ${student.name}');
    print('---------------------------------');
    print('Nome:${student.name}');
    print('Idade:${student.age ?? 'nao informado'}');
    print('Curso:');
    student.nameCourses.forEach(print);
    print('Endereço');
    print('   ${student.address.street} ${student.address.zipCode}');
  }
}
