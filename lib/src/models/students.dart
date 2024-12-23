import 'dart:convert';

import 'address.dart';
import 'course.dart';

class Students {
 final int? id;
 final String name;
 final int? age;
 final List<String> nameCourses;
 final List<Course> courses;
 final Address address;

  Students(
      { this.id,
      required this.name,
      this.age,
      required this.nameCourses,
      required this.courses,
      required this.address,
      });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'name': name,
      'nameCourses':nameCourses,
      'courses': courses.map((course) => course.toMap()).toList(),
      'address': address.toMap(),
    };


    if (age != null) {
      map['age'] = age;
    }
    return map;
  }

  String toJson() => jsonEncode(toMap());

  factory Students.fromMap(Map<String, dynamic> map) {
    return Students(
      id: map['id']??0,
      name:map['name']??'',
      age:map['age'],
      nameCourses: List<String>.from(map['nameCourses']??<String>{}),
      address : Address.fromMap(map['address']??<String,dynamic>{}),
      courses :map['courses']
      ?.map<Course>((courseMap)=>Course.fromMap(courseMap))
      .toList() ?? <Course>[],

    );
  }

  factory Students.fromJson(String json) => Students.fromMap(jsonDecode(json));
}
