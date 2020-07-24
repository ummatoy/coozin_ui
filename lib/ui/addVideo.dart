import 'package:coozin/utilits/const.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  Widget _addVideo() {
    return Container(
      width: double.infinity,
      height: 348.0,
      margin: EdgeInsets.all(32.0),
    );
  }

  Widget _videoName() {
    return Container(
      width: double.infinity,
      height: 72.0,
      margin: EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 48.0),
      child: TextField(
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _videoDescription() {
    return Container(
      width: double.infinity,
      height: 72.0,
      margin: EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 48.0),
      child: TextField(
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _choose() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('Tanlang'),
        Container(
          height: 56.0,
          width: 312.0,
          decoration: BoxDecoration(
            color: Color(0xFFF5EE),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: TextField(
            keyboardType: TextInputType.text,
          ),
        ),
      ],
    );
  }

  Widget _addingLink() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('Linkni joylashtiring'),
        Container(
          height: 56.0,
          width: 312.0,
          decoration: BoxDecoration(
            color: Color(0xFFF5EE),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: TextField(
            keyboardType: TextInputType.text,
          ),
        ),
      ],
    );
  }

  Widget _uploadButton() {
    return Center(
      child: MaterialButton(
        color: kPrimaryColor,
        minWidth: 321.0,
        height: 72.0,
        onPressed: () {},
        child: Text(
          'YUklash',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {}
}
