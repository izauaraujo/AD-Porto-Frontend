//import 'dart:convert';
//import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

//import 'package:http/http.dart' as http;
//import 'package:http_parser/http_parser.dart';

import '../../models/Member.dart';
import '../../screens/main/components/cadastroPage.dart';
//import 'package:image_picker/image_picker.dart';
//import 'dart:io';

const AD_PORTO = "https://ad-porto.herokuapp.com";
const CREATE_MEMBER = "/createMember/";
const READ_MEMBER = "/readMember/Anesia";
const SAVE_PHOTO = "/profile/pic";

const COLLECTION_CONGREGATION = "CONGREGACOES";
const COLLECTION_MEMBER = "MEMBROS";

class RepositoryMember {
  

  static Future<void> postMember(Map<String, dynamic> member) async {
    
           await FirebaseFirestore.instance.collection(COLLECTION_CONGREGATION).doc(member['congregationName']).
           collection(COLLECTION_MEMBER).doc(member['memberName']).set(member);
             
    
    /*final dio = Dio();
    var url = AD_PORTO + CREATE_MEMBER;
    final response = await dio.post(url,
        data: jsonMember,
        options: Options(headers: {
          "Authorization":
              "Bearer eyJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE2Njg0ODE5MTAsImV4cCI6MTY2ODQ4NTUxMCwiYXV0aG9yaXRpZXMiOlsiUk9MRV9VU0VSIiwiUk9MRV9NQU5BR0VSUyJdfQ.rEBLzYHu3XE_Kdc8Eexc1a4clcGdtxmd8R9M3-YadG3acJ-vrUwFzcR7XvqHAOtVKIMELric_yX_PE-Ri9Z-MA"
        }) //$
        );
    final status = response.statusCode;
    if (status == 200) {
      // se o servidor retornar um response OK, vamos fazer o parse no JSON
      return throw Exception('success in CREATE MEMBER $status');
    } else {
      // se a responsta não for OK , lançamos um erro
      throw Exception('failed in CREATE MEMBER  $status');
    }*/
  }

  static Future<List<Member>> getMember() async {
    final dio = Dio();
    var url = AD_PORTO + READ_MEMBER;
    final response = await dio.get(url,
        options: Options(headers: {
          "Authorization":
              "Bearer eyJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE2Njg0ODE5MTAsImV4cCI6MTY2ODQ4NTUxMCwiYXV0aG9yaXRpZXMiOlsiUk9MRV9VU0VSIiwiUk9MRV9NQU5BR0VSUyJdfQ.rEBLzYHu3XE_Kdc8Eexc1a4clcGdtxmd8R9M3-YadG3acJ-vrUwFzcR7XvqHAOtVKIMELric_yX_PE-Ri9Z-MA"
        }) //$
        );
    print(response);

    if (response.statusCode == 200) {
      // se o servidor retornar um response OK, vamos fazer o parse no JSON

      return (response.data as List).map((e) {
        return new Member.fromJson(e);
      }).toList();
    } else {
      // se a responsta não for OK , lançamos um erro
      throw Exception('Failed in READ MEMBER');
    }
  }

  static Future<String> pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    var photoName;
    if (result != null) {
      Uint8List? fileBytes = result.files.first.bytes;
      String fileName = result.files.first.name;
      photoName = fileName;
      // Upload file
      await FirebaseStorage.instance
          .ref('Photos/$fileName')
          .putData(fileBytes!);
    }
    return " Photo Name $photoName";
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
}
