import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15.0),
            
            child: CircleAvatar(
              child: Text('uwu', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
              backgroundImage : NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fvignette.wikia.nocookie.net%2Fdarling-in-the-franxx%2Fimages%2Fb%2Fb3%2FZero_Two_appearance.jpg%2Frevision%2Flatest%2Fscale-to-width-down%2F180%3Fcb%3D20180807204943&f=1&nofb=1'),
              radius: 25
            ),
          )
        ],
      ),
      body: Center(child: FadeInImage(
        placeholder: AssetImage('assets/jar-loading.gif'), 
        image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fih1.redbubble.net%2Fimage.1026834243.7707%2Fflat%2C750x%2C075%2Cf-pad%2C750x1000%2Cf8f8f8.jpg&f=1&nofb=1'),
        fadeInDuration: Duration(milliseconds: 500),
        fit: BoxFit.fill,
        ),
      )
    );
  }
}