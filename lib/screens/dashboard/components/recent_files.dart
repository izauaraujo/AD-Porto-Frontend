//import 'dart:ffi';

import 'package:admin/models/Member.dart';
import 'package:admin/models/RecentFile.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../controllers/repository/repositoryMember.dart';

// ignore: must_be_immutable
class RecentFiles extends StatelessWidget {
   RecentFiles({
    Key? key,
  }) : super(key: key);
  late Future<List<Member>> members = RepositoryMember.getMember();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
              width: double.infinity,
              height: 400,
              child: FutureBuilder<List<Member>>(
                future: members,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          Member listMember = snapshot.data![index];

                          return Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Container(
                                        child: CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.white,
                                      backgroundImage: NetworkImage(
                                          "https://loremflickr.com/320/32$index"),
                                    ))),
                                Container(
                                    //color: secondaryColor.withBlue(1),
                                    padding: EdgeInsetsDirectional.zero,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            listMember.memberRegistrationNumber
                                                .toString(),
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ])),
                                Container(
                                    padding:
                                        EdgeInsetsDirectional.only(start: 20),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            listMember.memberName.toString(),
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ]))
                              ]);
                          // return ListTile(
                          //  title: Text(listMember.memberName.toString()),
                          //  subtitle: Text(
                          //      listMember.memberRegistrationNumber.toString()),
                          //);
                        });
                  } else if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  }
                  return const CircularProgressIndicator();
                },
              ))
        ]));
  }
}
