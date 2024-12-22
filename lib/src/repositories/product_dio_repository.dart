// import 'package:dio/dio.dart';
// import '../models/course.dart';

// class ProductDioRepository {
//   Future<Course> findByName(String name) async {
//     // final response =
//     //     await http.get(Uri.parse('http://loclahost:8080/products?name=$name'));

//     final response =
//         await Dio().get('http://loclahost:8080/products', queryParameters: {
//           'name':name,
//         });

//     try {
//       // final responseData = jsonDecode(response.body);

//       if (response.data.isEmpty) {
//         throw Exception('Produto não encontrado');
//       }

//       return Course.fromMap(response.data.first);
//     } on DioException {
//       throw Exception();
//     }
//   }
// }
