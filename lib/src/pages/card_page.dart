import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final title = new TextStyle(fontSize: 22, color: Colors.white, backgroundColor: Colors.pink[200]);
  final subtitle = new TextStyle(fontSize: 18, color: Colors.white70, backgroundColor: Colors.pink[100]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          title: Text('Card Page'),
        ),
        body: _lista());
  }

  Widget _cardt1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.assistant_photo, color: Colors.cyanAccent),
            title: Text('Dieguito y Andree uwu'),
            subtitle: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardt2(String direccion) {
    final card = Container(
        child: Column(children: <Widget>[
      FadeInImage(
        image: NetworkImage(direccion),
        placeholder: AssetImage('assets/jar-loading.gif'),
        fadeInDuration: Duration(milliseconds: 500),
        height: 300.0,
        fit: BoxFit.cover,
      ),
      Container(
        padding: EdgeInsets.all(10.0),
        child: Text('Descripción de la imagen en el contenedor'),
      )
    ]));

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(2.0, 10.0))
          ],
          color: Colors.white),
    );
  }

  Widget _cardt3() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.add_road, color: Colors.purple),
            title: Text('Dieguito y Andree uwu', style: title),
            subtitle: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
              , style: subtitle),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _lista() {
    //FutureBuilder
    return FutureBuilder(
      future: _getList(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        //print('builder');
        print(snapshot.data);
        return ListView(
          children: _listaImgs(snapshot.data, context),
        );
      },
    );
  }

  Future<List> _getList() {
    return Future.value([
      'https://i.pinimg.com/564x/9a/ba/60/9aba6040f5c0af8c93b388f5df24c121.jpg',
      'https://www.playerone.vg/wp-content/uploads/2020/06/Rent-A-Girlfriend-trailer-nueva-temporada-anime.jpg',
      'https://besthqwallpapers.com/Uploads/17-2-2018/41098/thumb2-zero-two-manga-anime-characters-pink-hair-darling-in-the-franxx.jpg'
    ]);
  }

  List<Widget> _listaImgs(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    for (int i = 0; i < data.length; i++) {
      opciones
        ..add(_cardt1())
        ..add(_cardt2(data[i]))
        ..add(_cardt3())
        ..add(Divider());
    }
    return opciones;
  }
}
