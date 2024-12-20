// import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;
// import '../models/students.dart';

// class StudentRepository {
//   Future<List<Students>> findAll() async {
//     // final studentsResult =
//     //     await http.get(Uri.parse('http://loclahost:8080/students'));

//     // if (studentsResult.statusCode != 200) {
//     //   throw Exception();
//     // }
//     final studentsResult = await Dio().get('http://loclahost:8080/students');

//     //  final studentsData = jsonDecode(studentsResult.body);

//     try {
//       return studentsResult.data.map<Students>((student) {
//         return Students.fromMap(student);
//       }).toList();
//     } on DioException catch (e) {
//       print(e);
//       throw Exception();
//     }
//   }

//   Future<Students> findById(int id) async {
//     // final studentsResult =
//     //     await http.get(Uri.parse('http://localhost:8080/students/$id'));
//     // if (studentsResult.statusCode != 200) {
//     //   throw Exception();
//     // }

//     try {
//       final studentsResult =
//           await Dio().get('http://localhost:8080/students/$id');

//       if (studentsResult.data == null) {
//         throw Exception();
//       }

//       // return Students.fromJson(studentsResult.data);

//       //Dio ja fez a conversão por isso nao precisa fazer o fromjson novamente
//       //data já é un elemento decodado, deserealizado,não preciso chamar a serealização que foi criada na classe
//       return Students.fromMap(studentsResult.data);
//     } on DioException catch (e) {
//       print(e);
//       throw Exception();
//     }
//   }

//   Future<void> insert(Students student) async {
//     final response = await http.post(
//         Uri.parse('http://localhost:8080/students'),
//         body: student.toJson(),
//         headers: {'content-type': 'application/json'});

//     if (response.statusCode != 200) {
//       throw Exception();
//     }
//   }

//   Future<void> update(Students student) async {
//     final response = await http.put(
//         Uri.parse('http://localhost:8080/${student.id}'),
//         body: student.toJson(),
//         headers: {'content-type': 'application/json'});

//     if (response.statusCode != 200) {
//       throw Exception();
//     }
//   }

//   Future<void> deleteById(int id) async {
//     final response =
//         await http.delete(Uri.parse('http://localhost:8080/students/$id'));

//     if (response.statusCode != 200) {
//       throw Exception();
//     }
//   }
// }
