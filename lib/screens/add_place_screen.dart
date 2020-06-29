import 'package:flutter/material.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = '/add-place';
  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a new Place'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      //controller: _titleController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(),
                    FlatButton(onPressed: null, child: null)
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            child: RaisedButton.icon(
                color: Theme.of(context).accentColor,
                splashColor: Colors.green,
                elevation: 0,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                icon: Icon(
                  Icons.add,
                  size: 36,
                ),
                label: Text(
                  'Add Place',
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ),
        ],
      ),
    );
  }
}
