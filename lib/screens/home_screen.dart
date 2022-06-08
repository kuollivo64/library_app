import 'package:flutter/material.dart';
import 'package:library_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: DrawerMenu(),
        ),
        appBar: AppBar(
          title: const Text('Biblioteca Univalle'),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.search_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //card
              CardSwiper(),
              //listado
              const BookSlider(
                nameCollection: 'Contabilidad',
              ),
              //listado
              const BookSlider(
                nameCollection: 'Medicina',
              ),
              //listado
              const BookSlider(
                nameCollection: 'Informatica',
              ),
            ],
          ),
        ));
  }
}
