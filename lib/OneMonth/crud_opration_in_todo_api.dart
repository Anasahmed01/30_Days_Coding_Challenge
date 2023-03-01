// >>>>>>>>>>>>>>>>>>>>MODEL START<<<<<<<<<<<<<<<<<<<<<<<<<<
// .
// .
// .
// .
// .
// .
// class HomeModel {
//   bool? success;
//   List<Data>? data;

//   HomeModel({this.success, this.data});

//   HomeModel.fromJson(Map<String, dynamic> json) {
//     success = json['success'];
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['success'] = this.success;
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Data {
//   int? id;
//   String? name;
//   String? email;
//   String? username;
//   String? phone;
//   String? website;
//   Company? company;
//   Address? address;

//   Data(
//       {this.id,
//       this.name,
//       this.email,
//       this.username,
//       this.phone,
//       this.website,
//       this.company,
//       this.address});

//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     email = json['email'];
//     username = json['username'];
//     phone = json['phone'];
//     website = json['website'];
//     company =
//         json['company'] != null ? new Company.fromJson(json['company']) : null;
//     address =
//         json['address'] != null ? new Address.fromJson(json['address']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['email'] = this.email;
//     data['username'] = this.username;
//     data['phone'] = this.phone;
//     data['website'] = this.website;
//     if (this.company != null) {
//       data['company'] = this.company!.toJson();
//     }
//     if (this.address != null) {
//       data['address'] = this.address!.toJson();
//     }
//     return data;
//   }
// }

// class Company {
//   String? name;
//   String? catchPhrase;
//   String? bs;

//   Company({this.name, this.catchPhrase, this.bs});

//   Company.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     catchPhrase = json['catchPhrase'];
//     bs = json['bs'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['catchPhrase'] = this.catchPhrase;
//     data['bs'] = this.bs;
//     return data;
//   }
// }

// class Address {
//   String? street;
//   String? suite;
//   String? city;
//   String? zipcode;
//   Geo? geo;

//   Address({this.street, this.suite, this.city, this.zipcode, this.geo});

//   Address.fromJson(Map<String, dynamic> json) {
//     street = json['street'];
//     suite = json['suite'];
//     city = json['city'];
//     zipcode = json['zipcode'];
//     geo = json['geo'] != null ? new Geo.fromJson(json['geo']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['street'] = this.street;
//     data['suite'] = this.suite;
//     data['city'] = this.city;
//     data['zipcode'] = this.zipcode;
//     if (this.geo != null) {
//       data['geo'] = this.geo!.toJson();
//     }
//     return data;
//   }
// }

// class Geo {
//   double? lat;
//   double? lng;

//   Geo({this.lat, this.lng});

//   Geo.fromJson(Map<String, dynamic> json) {
//     lat = json['lat'];
//     lng = json['lng'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['lat'] = this.lat;
//     data['lng'] = this.lng;
//     return data;
//   }
// }
// .
// .
// .
// .
// .
// .
// >>>>>>>>>>>>>>>>>>>>MODEL END<<<<<<<<<<<<<<<<<<<<<<<<<<
// .
// .
// .
// .
// .
// .
// >>>>>>>>>>>>>>>>>>>>SERVICES START<<<<<<<<<<<<<<<<<<<<<<
// .
// .
// .
// .
// .
// .
// import 'dart:convert';
// import 'package:crudapi/models/home_model.dart';
// import 'package:http/http.dart' as http;

// getUser() async {
//   final url = Uri.parse('https://maaz-api.tga-edu.com/api/users');
//   final getData = await http.get(url);
//   final responseData = jsonDecode(getData.body);
//   return HomeModel.fromJson(responseData);
// }

// deleteUser({required id}) async {
//   await http.delete(
//     Uri.parse('https://maaz-api.tga-edu.com/api/users/$id'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//   );
// }

// addUser(Data model) async {
//   await http.post(
//     Uri.parse("https://maaz-api.tga-edu.com/api/users"),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(model.toJson()),
//   );
// }

// updateUser({required Data model, required id}) async {
//   await http.put(
//     Uri.parse("https://maaz-api.tga-edu.com/api/users/$id"),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(model.toJson()),
//   );
// }
// .
// .
// .
// .
// .
// .
// >>>>>>>>>>>>>>>>>>>>>>>>>>SERVICES END<<<<<<<<<<<<<<<<<<<<<<