import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Receitas do Mundo'),
      centerTitle: true,
      leading:
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
      backgroundColor: Colors.orange,
      actions: [
        PopupMenuButton(
          tooltip: 'Culinarias',
          icon: Icon(Icons.menu),
          onSelected: (String value) {
            Navigator.of(context).pushNamed('/$value');
          },
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                value: 'italiana',
                child: Text('Italiana'),
              ),
              PopupMenuItem(
                value: 'brasileira',
                child: Text('Brasileira'),
              )
            ];
          },
        )
      ],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
    );
  }
}

class PageAppBar extends StatelessWidget {
  const PageAppBar({Key? key, required this.nomePagina}) : super(key: key);
  final String nomePagina;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        nomePagina,
        style: TextStyle(color: Colors.black, fontSize: 24),
      ),
      centerTitle: true,
      backgroundColor: Colors.orangeAccent,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white),
      actions: [
        PopupMenuButton(
          tooltip: 'Culinarias',
          icon: Icon(Icons.menu),
          color: Colors.white,
          onSelected: (String value) {
            Navigator.of(context).pushNamed('/$value');
          },
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                value: 'italiana',
                child: Text('Italiana'),
              ),
              PopupMenuItem(
                value: 'brasileira',
                child: Text('Brasileira'),
              )
            ];
          },
        )
      ],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
    );
  }
}
