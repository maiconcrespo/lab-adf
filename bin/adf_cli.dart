import 'package:adf_cli/src/commands/students/students_commands.dart';
import 'package:args/command_runner.dart';

void main(List<String> arguments) {
//   final argParser = ArgParser();
//   argParser.addFlag('data', abbr: 'd');
//   argParser.addOption('name', abbr: 'n');
//   argParser.addOption('template', abbr: 't');
//   final argResult = argParser.parse(arguments);

//   print('${argResult['data']}');
//   print('${argResult['name']}');
//   print('${argResult['template']}');
//
  CommandRunner('ADF CLI', 'ADF CLI')
    ..addCommand(StudentsCommand())
    ..run(arguments);
}

// class ExemploCommand extends Command {
//   @override
//   String get description => 'Exemplo de Comando';

//   @override
//   String get name => 'exemplo';

//   ExemploCommand() {
//     argParser.addOption(
//       'template',
//       abbr: 't',
//       help: 'Template Criaçao do projeto',
//     );
//   }

//   @override
//   run() {
//     print(argResults?['Template']);
//     print('Executar cualquier coisa');
//   }
// }
