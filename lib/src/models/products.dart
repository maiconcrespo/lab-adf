import 'dart:convert';

class Products {
  int id;
  String name;

Products ({required this.id, required this.name,});

Map <String,dynamic>toMap(){

return {
'id':id,
'name':name,

};

}

String toJson()=> jsonEncode(toMap());


}
