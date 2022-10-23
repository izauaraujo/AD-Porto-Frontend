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

  Member(
      {this.name,
      this.mother,
      this.father,
      this.birthday,
      this.nationatily,
      this.naturality,
      this.stateBirth,
      this.maritalStatus,
      this.profession,
      this.admissionDate,
      this.rg,
      this.cpf,
      this.address,
      this.addressNumber,
      this.spouse,
      this.dateBaptism,
      this.churchCityBaptism,
      this.churchName,
      this.dateChurchBaptism,
      this.cityBirth,
      this.streetAvenue,
      this.number,
      this.district,
      this.city,
      this.cityBaptism,
      this.origination,
      this.note});

  Member.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mother = json['mother'];
    father = json['father'];
    birthday = json['birthday'];
    nationatily = json['nationatily'];
    naturality = json['naturality'];
    stateBirth = json['stateBirth'];
    maritalStatus = json['maritalStatus'];
    profession = json['profession'];
    admissionDate = json['admissionDate'];
    rg = json['rg'];
    cpf = json['cpf'];
    address = json['address'];
    addressNumber = json['addressNumber'];
    spouse = json['spouse'];
    dateBaptism = json['dateBaptism'];
    churchCityBaptism = json['churchCityBaptism'];
    churchName = json['churchName'];
    dateChurchBaptism = json['dateChurchBaptism'];
    cityBirth = json['cityBirth'];
    streetAvenue = json['streetAvenue'];
    number = json['number'];
    district = json['district'];
    city = json['city'];
    cityBaptism = json['cityBaptism'];
    origination = json['origination'];
    note = json['note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['mother'] = this.mother;
    data['father'] = this.father;
    data['birthday'] = this.birthday;
    data['nationatily'] = this.nationatily;
    data['naturality'] = this.naturality;
    data['stateBirth'] = this.stateBirth;
    data['maritalStatus'] = this.maritalStatus;
    data['profession'] = this.profession;
    data['admissionDate'] = this.admissionDate;
    data['rg'] = this.rg;
    data['cpf'] = this.cpf;
    data['address'] = this.address;
    data['addressNumber'] = this.addressNumber;
    data['spouse'] = this.spouse;
    data['dateBaptism'] = this.dateBaptism;
    data['churchCityBaptism'] = this.churchCityBaptism;
    data['churchName'] = this.churchName;
    data['dateChurchBaptism'] = this.dateChurchBaptism;
    data['cityBirth'] = this.cityBirth;
    data['streetAvenue'] = this.streetAvenue;
    data['number'] = this.number;
    data['district'] = this.district;
    data['city'] = this.city;
    data['cityBaptism'] = this.cityBaptism;
    data['origination'] = this.origination;
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


