import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  Widget _orderHistory() {
    return Row(
      children: <Widget>[
        Container(
          width: 208.0,
          height: 208.0,
          margin: EdgeInsets.fromLTRB(32.0, 32.0, 16.0, 32.0),
          alignment: Alignment.bottomLeft,
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.image),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(child: Text('Taom nomi')),
            Expanded(child: Text('Miqdor')),
            Expanded(child: Text('07/20/2020')),
            Expanded(child: Text('15:00')),
          ],
        ),
      ],
    );
  }

  Widget _clientInformation() {
    return Card(
      child: Container(
        width: double.infinity,
        height: 296.0,
        margin: EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(child: Text('Mijoz')),
            Expanded(child: Text('Buyurtma raqami')),
            Expanded(child: Text('Manzil')),
            Expanded(child: Text('Telefon raqami')),
          ],
        ),
      ),
    );
  }

  Widget _additionalInformation() {
    return Card(
      child: Container(
        width: double.infinity,
        height: 200.0,
        color: Colors.black,
        margin: EdgeInsets.symmetric(horizontal: 32.0),
      ),
    );
  }

  Widget _orderButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            side: BorderSide(
                color: Colors.orange, width: 1, style: BorderStyle.solid),
          ),
          textColor: Colors.white,
          height: 72.0,
          splashColor: Colors.orange,
          disabledColor: Colors.white,
          disabledTextColor: Colors.orange,
          child: Text('Bekor qilish'),
        ),
        MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            side: BorderSide(
                color: Colors.orange, width: 1, style: BorderStyle.solid),
          ),
          textColor: Colors.white,
          height: 72.0,
          splashColor: Colors.orange,
          disabledColor: Colors.white,
          disabledTextColor: Colors.orange,
          child: Text('Qabul qilish'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {}
}
