import 'dart:core';

class Member {
  String? name;
  String? mother;
  String? father;
  String? birthday;
  String? nationatily;
  String? naturality;
  String? stateBirth;
  String? maritalStatus;
  String? profession;
  String? admissionDate;
  String? rg;
  String? cpf;
  String? address;
  String? addressNumber;
  String? spouse;
  String? dateBaptism;
  String? churchCityBaptism;
  String? churchName;
  String? dateChurchBaptism;
  String? cityBirth;
  String? streetAvenue;
  String? number;
  String? district;
  String? city;
  String? cityBaptism;
  String? origination;
  String? note;

  Map toJson() => {
        'name': name,
        'mother': mother,
        'father': father,
        'birthday': birthday,
        'nationatily': birthday,
        'naturality': naturality,
        'stateBirth': stateBirth,
        'maritalStatus': maritalStatus,
        'profession': profession,
        'admissionDate': profession,
        'rg': rg,
        'cpf': cpf,
        'address': address,
        'addressNumber': addressNumber,
        'spouse': spouse,
        'dateBaptism': dateBaptism,
        'churchCityBaptism': churchCityBaptism,
        'churchName': churchName,
        'dateChurchBaptism': dateChurchBaptism,
        'cityBirth': cityBirth,
        'streetAvenue': streetAvenue,
        'number': number,
        'district': district,
        'city': district,
        'cityBaptism': cityBaptism,
        'origination': origination,
        'note': note,
      };
}
