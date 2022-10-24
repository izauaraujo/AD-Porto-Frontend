import 'dart:convert';
import 'package:admin/models/Member.dart';
import 'package:http/http.dart' as http;

import '../../screens/main/components/cadastroPage.dart';

const AD_PORTO = "https://ad-porto.herokuapp.com";
const CREATE_MEMBER = "/createMember";
const READ_MEMBER = "/readMember/{nameCongregation}";

class RepositoryMember {
  static Future<Member> postMember() async {
    var url = AD_PORTO + CREATE_MEMBER;
    final response = await http.post(
      Uri.parse(url),
      body: jsonMember,
      headers: {"Authorization": "Bearer  token"}, //$
    );
    if (response.statusCode == 200) {
      // se o servidor retornar um response OK, vamos fazer o parse no JSON
      return throw Exception('success in CREATE MEMBER');
    } else {
      // se a responsta não for OK , lançamos um erro
      throw Exception('failed in CREATE MEMBER');
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
