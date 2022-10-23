import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../screens/main/components/cadastroPage.dart';

const AD_PORTO = "https://ad-porto.herokuapp.com";
const CREATE_MEMBER = "/createMember";

class CreateMember {
  static Future postMember() async {
    var url = AD_PORTO + CREATE_MEMBER;
    return await http.post(
      Uri.parse(url),
      body: jsonMember,
      headers: {"Authorization": "Bearer  token"}, //$
    );
  }
}
