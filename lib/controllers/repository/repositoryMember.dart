import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

import '../../models/Member.dart';
import '../../screens/main/components/cadastroPage.dart';

const AD_PORTO = "https://ad-porto.herokuapp.com";
const CREATE_MEMBER = "/createMember/";
const READ_MEMBER = "/readMember/Anesia";

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

  static Future<List<Member>> getMember() async {
    final dio = Dio();
    var url = AD_PORTO + READ_MEMBER;
    final response = await dio.get(url,
        options: Options(headers: {
          "Authorization":
              "Bearer eyJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE2NjczMjI2MDQsImV4cCI6MTY2NzMyNjIwNCwiYXV0aG9yaXRpZXMiOlsiUk9MRV9VU0VSIiwiUk9MRV9NQU5BR0VSUyJdfQ.lVsuv2Fhhm_RyklIzK4btU5nNi7G2TqUp6q-AcBb3m0uA_K170Ki-Tg2SHEWGwyk4ogryAmXhjYpNTlo_M9HTQ"
        }) //$
        );
    print(response);

    if (response.statusCode == 200) {
      // se o servidor retornar um response OK, vamos fazer o parse no JSON

      var listMember = (response.data as List).map((e) {
        return new Member.fromJson(e);
      }).toList();

      print(listMember[0].CPF);

      return listMember;
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
// Future  getUser ({string id obrigatória}) async { //Execute a solicitação GET para o endpoint"/users/" 
// Resposta userData=await _dio.get (_baseUrl +'/users/$ id'); //Imprime os dados brutos retornados pelo servidor 
 //print ('Informações do usuário: $ {userData.data}'); //Analisando os dados JSON brutos para a classe de usuário 
// User user=User.fromJson (userData.data); usuário de retorno;
//}