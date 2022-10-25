import 'dart:core';

class Member {
  String? situation;
  String? memberRegistrationNumber;
  String? congregationName;
  String? memberName;
  String? fatherName;
  String? motherName;
  String? dateBirth;
  String? nationatily;
  String? cityBirth;
  String? districtBirth;
  String? maritalStatus;
  String? dateBaptism;
  String? churchBaptism;
  String? cityBaptism;
  String? admissionDate;
  String? CPF;
  String? RG;
  String? spouse;
  String? origination;
  String? address;
  String? addressNumber;
  String? district;
  String? city;
  String? note;

  Member(
      {this.situation,
      this.memberRegistrationNumber,
      this.congregationName,
      this.memberName,
      this.fatherName,
      this.motherName,
      this.dateBirth,
      this.nationatily,
      this.cityBirth,
      this.districtBirth,
      this.maritalStatus,
      this.dateBaptism,
      this.churchBaptism,
      this.cityBaptism,
      this.admissionDate,
      this.CPF,
      this.RG,
      this.spouse,
      this.origination,
      this.address,
      this.addressNumber,
      this.district,
      this.city,
      this.note});

  Member.fromJson(Map<String, dynamic> json) {
    situation = json['situation'];
    memberRegistrationNumber = json['memberRegistrationNumber'];
    congregationName = json['congregationName'];
    memberName = json['memberName'];
    fatherName = json['fatherName'];
    motherName = json['motherName'];
    dateBirth = json['dateBirth'];
    nationatily = json['nationatily'];
    cityBirth = json['cityBirth'];
    districtBirth = json['districtBirth'];
    maritalStatus = json['maritalStatus'];
    dateBaptism = json['DateBaptism'];
    churchBaptism = json['churchBaptism'];
    cityBaptism = json['cityBaptism'];
    admissionDate = json['admissionDate'];
    CPF = json['CPF'];
    RG = json['RG'];
    spouse = json['spouse'];
    origination = json['origination'];
    address = json['address'];
    addressNumber = json['addressNumber'];
    district = json['district'];
    city = json['city'];
    note = json['note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['situation'] = this.situation;
    data['memberRegistrationNumber'] = this.memberRegistrationNumber;
    data['congregationName'] = this.congregationName;
    data['memberName'] = this.memberName;
    data['fatherName'] = this.fatherName;
    data['motherName'] = this.motherName;
    data['dateBirth'] = this.dateBirth;
    data['nationatily'] = this.nationatily;
    data['cityBirth'] = this.cityBirth;
    data['districtBirth'] = this.districtBirth;
    data['maritalStatus'] = this.maritalStatus;
    data['DateBaptism'] = this.dateBaptism;
    data['churchBaptism'] = this.churchBaptism;
    data['cityBaptism'] = this.cityBaptism;
    data['admissionDate'] = this.admissionDate;
    data['CPF'] = this.CPF;
    data['RG'] = this.RG;
    data['spouse'] = this.spouse;
    data['origination'] = this.origination;
    data['address'] = this.address;
    data['addressNumber'] = this.addressNumber;
    data['district'] = this.district;
    data['city'] = this.city;
    data['note'] = this.note;
    return data;
  }
}



/*class Member {
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
}*/


