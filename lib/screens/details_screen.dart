import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DetailsScreen extends StatelessWidget {
  void displayDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: Text('Libro Reservado'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este libro se reservo te esperamos en al Biblioteca'),
              SizedBox(
                height: 10,
              ),
              animationPollie()
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              _PosterTitle(),
              _OverView(),
              _OverView(),
              _OverView(),
              _OverView(),
              _OverView(),
              _OverView(),
            ]),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.home_repair_service),
        onPressed: () => displayDialog(context),
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          titlePadding: const EdgeInsets.all(0),
          title: Container(
            padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            color: Colors.black12,
            child: const Text(
              'titulo libro',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          background: const FadeInImage(
            placeholder: NetworkImage('http://via.placeholder.com/300x400'),
            image: NetworkImage('http://via.placeholder.com/300x400'),
            fit: BoxFit.cover,
          )),
    );
  }
}

class _PosterTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: NetworkImage('http://via.placeholder.com/200x300'),
              image: NetworkImage('http://via.placeholder.com/200x300'),
              height: 150,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text(
                'book_title',
                style: Theme.of(context).textTheme.headline5,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                'book_Origin_title',
                style: Theme.of(context).textTheme.subtitle1,
                overflow: TextOverflow.ellipsis,
              ),
              // Row(
              //   children: [
              //     Icon(Icons.star_outline, size: 15, color: Colors.grey,),
              //     Text('book ')
              //   ],
              // )
            ],
          )
        ],
      ),
    );
  }
}

class _OverView extends StatelessWidget {
  //const _OverView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        'Elit irure consectetur in eu enim tempor proident incididunt cupidatat laborum fugiat nulla labore. Anim amet incididunt ipsum ut adipisicing labore irure esse aute. Veniam id et do excepteur sint fugiat sunt sunt cillum amet esse.',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

Widget animationPollie() {
  return Center(
    child: Lottie.network(
        'https://assets6.lottiefiles.com/packages/lf20_2scSKA.json'),
  );
}
