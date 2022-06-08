import 'package:flutter/material.dart';
import 'package:library_app/screens/screens.dart';
import 'package:lottie/lottie.dart';

class DrawerMenu extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    const name = 'Jesus Yujra';
    const email = 'kuollivo64@gmail.com';
    const urlImg =
        'https://i.pinimg.com/originals/67/f7/d9/67f7d94f1b10bfc5d8c57ba48a91e5cf.jpg';

    return Container(
      color: const Color.fromRGBO(230, 40, 33, 1),
      child: ListView(
        padding: padding,
        children: <Widget>[
          builHeader(
              urlImage: urlImg,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      const UserPage(name: name, urlImage: urlImg)))),
          buildMenuItem(
              text: 'Perfil',
              icon: Icons.people,
              onClicked: () => selectedItem(context, 0)),
          const SizedBox(
            height: 48,
          ),
          buildMenuItem(
              text: 'Libros Reservados',
              icon: Icons.book,
              onClicked: () => selectedItem(context, 1)),
          const SizedBox(
            height: 48,
          ),
          buildMenuItem(text: 'Salir', icon: Icons.logout),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.white70,
          ),
          animationPollie()
        ],
      ),
    );
  }
}

Widget animationPollie() {
  return Center(
    child: Lottie.network(
        'https://assets3.lottiefiles.com/private_files/lf30_ipvphpwo.json'),
  );
}

Widget builHeader(
        {required String urlImage,
        required String name,
        required String email,
        required VoidCallback onClicked}) =>
    InkWell(
      onTap: onClicked,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(urlImage),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(email,
                    style: const TextStyle(fontSize: 14, color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );

Widget buildMenuItem(
    {required String text, required IconData icon, VoidCallback? onClicked}) {
  const color = Colors.white;
  const hoverColor = Colors.white70;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: const TextStyle(color: color),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => PeopleScreen()));
      break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => BookScreen()));
      break;
  }
}
