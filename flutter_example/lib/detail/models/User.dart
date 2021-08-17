import 'dart:collection';
import 'dart:core';

class User {
  final String firstName;
  final String lastName;
  final String website;

  const User(this.firstName, this.lastName, this.website);

  //json에서 값 받아오기
  User.fromJson(Map<String, dynamic> json):
      this.firstName = json['first_name'],
      this.lastName = json['last_name'],
      this.website = json['website'];

  //json으로 값 보내기
  Map<String, dynamic> toJson() => {
    "first_name": this.firstName,
    "last_name": this.lastName,
    "website": this.website
  };

}