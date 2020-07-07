import 'package:flutter/material.dart';

class AvatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF000000),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              'Share-X',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Color(0xFF465BC8)),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Welcome',
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color(0xFF465BC8)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Enter your Name and pick an Avatar',
            style: TextStyle(fontSize: 22, color: Color(0xFF465BC8)),
          ),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 80,
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
          SizedBox(
            height: 10,
          ),
          TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  hintText: 'Your Name',
                  border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text('Avatar Options',
                style: TextStyle(fontSize: 22, color: Color(0xFF465BC8))),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  radius: 40,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  radius: 40,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  radius: 40,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  radius: 40,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  radius: 40,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  radius: 40,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  radius: 40,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  radius: 40,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            onPressed: () {},
            child: Text('Continue'),
            color: Color(0xFFAAFAC8),
          ),
        ],
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: Color(0xFFA3A3A3), borderRadius: BorderRadius.circular(30)),
      child: child,
    );
  }
}
