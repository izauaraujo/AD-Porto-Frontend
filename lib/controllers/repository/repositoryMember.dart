import 'dart:convert';
import 'package:admin/models/Member.dart';
import 'package:dio/dio.dart';

import 'package:http/http.dart' as http;

import '../../screens/main/components/cadastroPage.dart';

const AD_PORTO = "https://ad-porto.herokuapp.com";
const CREATE_MEMBER = "/createMember/";
const READ_MEMBER = "/readMember/{nameCongregation}";

class RepositoryMember {
  static Future<Member> postMember() async {
    final dio = Dio();
    var url = AD_PORTO + CREATE_MEMBER;
    final response = await dio.post(url,
        data: jsonMember,
        options: Options(headers: {
          "Authorization":
              "Bearer Bearer eyJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE2NjY2Njg3NDMsImV4cCI6MTY2NjY3MjM0MywiYXV0aG9yaXRpZXMiOlsiUk9MRV9VU0VSIiwiUk9MRV9NQU5BR0VSUyJdfQ.8OuPhvLR46Uj7XZ_B8OiAoz2eU4LJAiqMei12_pKTj8JujcWvO4xT2x2nPmmw1PACZwItQapzZeBz2_BbcFqSg "
        }) //$
        );
    final status = response.statusCode;
    if (status == 200) {
      // se o servidor retornar um response OK, vamos fazer o parse no JSON
      return throw Exception('success in CREATE MEMBER $status');
    } else {
      // se a responsta não for OK , lançamos um erro
      throw Exception('failed in CREATE MEMBER  $status');
    }
  }

  static Future<Member> getMember() async {
    var url = AD_PORTO + READ_MEMBER;
    final response = await http.get(
      Uri.parse(url),
      headers: {"Authorization": "Bearer  token"}, //$
    );

    if (response.statusCode == 200) {
      // se o servidor retornar um response OK, vamos fazer o parse no JSON
      return Member.fromJson(json.decode(response.body));
    } else {
      // se a responsta não for OK , lançamos um erro
      throw Exception('Failed in READ MEMBER');
    }
  }
}
/*
{
    "situation": "",
    "memberRegistrationNumber": "",
    "congregationName": "",
    "memberName": "",
    "fatherName": "",
    "motherName": "",
    "dateBirth": "",
    "nationatily": "",
    "cityBirth": "",
    "districtBirth": "",
    "maritalStatus": "",
    "DateBaptism": "",
    "churchBaptism": "",
    "cityBaptism": "",
    "admissionDate": "",
    "CPF": "",
    "RG": "",
    "spouse": "",
    "origination": "",
    "address": "",
    "addressNumber": "",
    "district": "",
    "city": "",
    "note": ""
}*/