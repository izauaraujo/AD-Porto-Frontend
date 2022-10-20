import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../models/Member.dart';

class PageCadastro extends StatefulWidget {
  const PageCadastro({Key? key}) : super(key: key);

  @override
  State<PageCadastro> createState() => _PageCadastroState();
}

class _PageCadastroState extends State<PageCadastro> {
  final _memberNamecontroller = TextEditingController();
  final _congregationNamecontroller = TextEditingController();
  final _fatherMemberNamecontroller = TextEditingController();
  final _motherMemberNamecontroller = TextEditingController();
  final _nationalitycontroller = TextEditingController();
  final _cityBirthcontroller = TextEditingController();
  final _stateBirthcontroller = TextEditingController();
  final _maritalStatuscontroller = TextEditingController();
  final _churchBaptismcontroller = TextEditingController();
  final _CPFcontroller = TextEditingController();
  final _RGcontroller = TextEditingController();
  final _spousecontroller = TextEditingController();
  final _originationcontroller = TextEditingController();
  final _streetAvenuecontroller = TextEditingController();
  final _numbercontroller = TextEditingController();
  final _notecontroller = TextEditingController();
  final _datebirthcontroller = TextEditingController();
  final _citycontroller = TextEditingController();
  final _districtcontroller = TextEditingController();
  final _cityBaptismcontroller = TextEditingController();
  final _dateBaptismcontroller = TextEditingController();
  final _admissionDatecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                color: Colors.blue[300],
                child: const Center(
                  child: Text(
                    "CADASTRO NOVOS MEMBROS",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _congregationNamecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Congregação"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _memberNamecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Nome"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _fatherMemberNamecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Nome do Pai"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _motherMemberNamecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Nome da Mãe"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                controller: _RGcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("RG"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CpfInputFormatter(),
                ],
                controller: _CPFcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("CPF"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  DataInputFormatter()
                ],
                controller: _datebirthcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Data de Nascimento"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _nationalitycontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Nacionalidade"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _stateBirthcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Estado nascimento"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _cityBirthcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Cidade nascimento"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _streetAvenuecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Endereço"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _numbercontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Numero"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _districtcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Bairro"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _citycontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Cidade"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _maritalStatuscontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Estado Civil"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _spousecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Nome Esposo/a"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _churchBaptismcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Igreja de Batismo"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _cityBaptismcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Cidade de Batismo"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _dateBaptismcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Data de Batismo"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _originationcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Originarion"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _admissionDatecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Data de Admissão"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _notecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Notas"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 110,
                  height: 30,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green, onPrimary: Colors.black),
                      onPressed: () {
                        setState(() {
                          cadastrar();
                        });
                      },
                      child: const Text(
                        "Cadastrar",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
                Container(
                  width: 110,
                  height: 30,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red, onPrimary: Colors.black),
                      onPressed: () {
                        setState(() {
                          sair();
                        });
                      },
                      child: const Text("Sair",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  cadastrar() {
    final member = new Member();
    member.churchName = _congregationNamecontroller.text;
    member.name = _memberNamecontroller.text;
    member.father = _fatherMemberNamecontroller.text;

    _memberNamecontroller.clear();
    print(member);
  }

  sair() {}
}
