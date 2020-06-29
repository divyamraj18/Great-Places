import 'package:flutter/material.dart';
import 'package:greatplaces/screens/add_place_screen.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Places',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
              }
              ),
        ],
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
