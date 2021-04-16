import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('PRESIONAR'),
          onPressed: () => _showAlert(context),
          style: ElevatedButton.styleFrom(
            primary: Colors.pink[300],
            shape: StadiumBorder()
          )
        ),
      ),
    );
  }
          
  _showAlert(BuildContext context) {
    showDialog(
      context: context,      
      barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Albedo uwu'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.network('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fstatici.behindthevoiceactors.com%2Fbehindthevoiceactors%2F_img%2Fchars%2Fthumbs%2Falbedo--12.2_thumb.jpg&f=1&nofb=1'),
              Text('Albedo (アルベド) is the Overseer of the Guardians of the Great Tomb of Nazarick.'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Yameteeee'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(), 
              child: Text('uwu'),
            ),
          ]
        );
      },
    );
  }
}