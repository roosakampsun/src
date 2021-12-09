import 'dart:convert';

//import 'package:enum_to_string/enum_to_string.dart';
//Json result:
//[{"status":"success","min":1,"max":1000,"random":38}]

class RandomInfo {
  String status;
  int min;
  int max;
  int random;

  //Condition condition;

  RandomInfo(this.status, this.min, this.max, this.random);

  Map<String, dynamic> toJson() => {'Status':status, 'min': min, 'max': max, 'random': random };  //mida me tahame jsonisse kirjutada

  RandomInfo.fromJson(Map<String, dynamic> json)  //standard täpne järjekord
      : status = json['status'],
        min = json['min'],
        max = json['max'],
        random = json['random'];

   @override
  String toString() {
    String json = jsonEncode(toJson());
    return json;
  }
  }


