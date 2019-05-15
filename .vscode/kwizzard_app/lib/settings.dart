import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => new _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _images = false;
  bool _videos = false;
  bool _notif = false;
  bool _email = false;

  void _onChanged1(bool value) => setState(() => _images = value);
  void _onChanged2(bool value) => setState(() => _videos = value);
  void _onChanged3(bool value) => setState(() => _notif = value);
  void _onChanged4(bool value) => setState(() => _email = value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new SwitchListTile(
                  value: _images,
                  activeColor: Colors.red,
                  activeTrackColor: Colors.red,
                  onChanged: _onChanged1,
                  title: new Text('Allow Images', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
              ),
              new SwitchListTile(
                  value: _videos,
                  activeColor: Colors.red,
                  activeTrackColor: Colors.red,
                  onChanged: _onChanged2,
                  title: new Text('Allow videos over N size', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
              ),
              new SwitchListTile(
                  value: _notif,
                  activeColor: Colors.red,
                  activeTrackColor: Colors.red,
                  onChanged: _onChanged3,
                  title: new Text('Allow push notifications', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
              ),
              new SwitchListTile(
                  value: _email,
                  activeColor: Colors.red,
                  activeTrackColor: Colors.red,
                  onChanged: _onChanged4,
                  title: new Text('Allow emails', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}