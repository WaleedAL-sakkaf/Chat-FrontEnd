import 'package:flutter/material.dart';

class UsersModerl {
  final int id;
  final String name;
  final int phone;

  UsersModerl({
    required this.id,
    required this.name,
    required this.phone,
  });
}

class UserScreen extends StatelessWidget {
  List<UsersModerl> usersitem = [
    UsersModerl(id: 1, name: 'Jamal Sareea', phone: 96733994566),
    UsersModerl(id: 2, name: 'Waleed Al-saqaf', phone: 96733991128),
    UsersModerl(id: 3, name: 'Hood Ba-abad', phone: 96733994367),
    UsersModerl(id: 4, name: 'Gaith Shetra', phone: 96738778644),
    UsersModerl(id: 1, name: 'Jamal Sareea', phone: 96733994566),
    UsersModerl(id: 2, name: 'Waleed Al-saqaf', phone: 96733991128),
    UsersModerl(id: 3, name: 'Hohgod Ba-abad', phone: 96733994367),
    UsersModerl(id: 4, name: 'Gaith Shetra', phone: 96738778644),
    UsersModerl(id: 1, name: 'gfdg Sareea', phone: 96733994566),
    UsersModerl(id: 2, name: 'gfdg Al-saqaf', phone: 96733991128),
    UsersModerl(id: 3, name: 'gf Ba-abad', phone: 96733994367),
    UsersModerl(id: 4, name: 'ee Shetra', phone: 96738778644),
    UsersModerl(id: 1, name: 'fs Sareea', phone: 96733994566),
    UsersModerl(id: 2, name: 'Waleed Al-saqaf', phone: 96733991128),
    UsersModerl(id: 3, name: 'ewf Ba-abad', phone: 96733994367),
    UsersModerl(id: 4, name: 'hff Shetra', phone: 96738778644),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Users'),
        ),
        body: ListView.separated(
          itemBuilder: ((context, index) => bulidUsersItems(usersitem[index])),
          separatorBuilder: ((context, index) => Container(
                width: double.infinity,
                height: 2,
                color: Colors.black26,
              )),
          itemCount: usersitem.length,
          scrollDirection: Axis.vertical,
        ));
  }
}

Widget bulidUsersItems(UsersModerl usersitem) => Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            child: Text(
              '${usersitem.id}',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${usersitem.name} ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '${usersitem.phone}  ',
                style: TextStyle(fontSize: 15, color: Colors.blueGrey[700]),
              )
            ],
          )
        ],
      ),
    );
