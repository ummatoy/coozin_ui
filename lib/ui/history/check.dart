import 'package:coozin/utilits/const.dart';
import 'package:flutter/material.dart';

class CheckPage extends StatefulWidget {
  @override
  _CheckPageState createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  final String _fullName = "Yuldasheva Ummatoy";
  final String _status = " Software Developer";
  final String _bio =
      "Hi ,I am a Freelance developer working for hourly basis.";
  final String _followers = "178";
  final String _posts = "26";
  final String _likes = "10";
  Widget _buildProfileImage() {
    return Center(
      child: Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/nickfrost.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(80.0),
          border: Border.all(
            color: Colors.white,
            width: 10.0,
          ),
        ),
      ),
    );
  }

  Widget _buildFullName() {
    TextStyle _nameTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 28.0,
      fontWeight: FontWeight.w700,
    );

    return Text(
      _fullName,
      style: _nameTextStyle,
    );
  }

  Widget _buildStatus(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        _status,
        style: TextStyle(
          fontFamily: 'Spectral',
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String count) {
    TextStyle _statLabelTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.w200,
    );

    TextStyle _statCountTextStyle = TextStyle(
      color: Colors.black54,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count,
          style: _statCountTextStyle,
        ),
        Text(
          label,
          style: _statLabelTextStyle,
        ),
      ],
    );
  }

  Widget _buildStatContainer() {
    return Container(
      height: 60.0,
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        color: Color(0xFFEFF4F7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildStatItem("Followers", _followers),
          _buildStatItem("Posts", _posts),
          _buildStatItem("Scores", _likes),
        ],
      ),
    );
  }

  Widget _buildBio(BuildContext context) {
    TextStyle bioTextStyle = TextStyle(
      fontFamily: 'Spectral',
      fontWeight: FontWeight.w400, //try changing weight to w500 if not thin
      fontStyle: FontStyle.italic,
      color: Color(0xFF799497),
      fontSize: 16.0,
    );

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.all(8.0),
      child: Text(
        _bio,
        textAlign: TextAlign.center,
        style: bioTextStyle,
      ),
    );
  }

  Widget _buildSeparator(Size screenSize) {
    return Container(
      width: screenSize.width / 1.6,
      height: 2.0,
      color: Colors.black54,
      margin: EdgeInsets.only(top: 4.0),
    );
  }

  Widget _vendorCategory() {
    return Row(
      children: <Widget>[
        MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.orange),
            borderRadius: BorderRadius.circular(10.0),
          ),
          textColor: kPrimaryColor,
          color: Colors.white,
          disabledColor: Colors.orange,
          disabledTextColor: Colors.white,
          child: Text('Konditer'),
        ),
        MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.orange),
            borderRadius: BorderRadius.circular(10.0),
          ),
          textColor: kPrimaryColor,
          color: Colors.white,
          disabledColor: Colors.orange,
          disabledTextColor: Colors.white,
          child: Text('FudBloger'),
        )
      ],
    );
  }

  Widget _blogCategory() {
    return Row(
      children: <Widget>[
        Text('Taomlar'),
        Text('Retseptlar'),
        Text('Darslar'),
      ],
    );
  }

  Widget _drawerProfile() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(_fullName),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Mening hujjatlarim'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
            ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Mening chegirmalarim'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
            ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Sovg`a kartalari'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
            ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Do`stlar bilan ulashmoq'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
            ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Sozlamalar'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
            ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Chiqish'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        leading: Icon(Icons.person_pin),
      ),
    );
  }
}
