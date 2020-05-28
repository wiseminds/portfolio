import 'package:flutter/material.dart';
import 'package:navigation_rail/navigation_rail.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Porple Admin',
      theme: _theme(ThemeData.light().copyWith(
        accentColor: Colors.red,
      )),
      home: MyHomePage(title: 'Porple'),
    );
  }

  ThemeData _theme(ThemeData base) {
    return ThemeData(
      primarySwatch: Colors.blue,
      appBarTheme: base.appBarTheme.copyWith(elevation: 0.0),
      floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
        elevation: 2.0,
        backgroundColor: base.accentColor,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavRail(
      drawerHeaderBuilder: (context) {
        return Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Wisdom Ekeh"),
              accountEmail: Text("ekeh.wisdom@gmail.com"),
            ),
          ],
        );
      },
      drawerFooterBuilder: (context) {
        return Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("About"),
            ),
          ],
        );
      },
      currentIndex: _currentIndex,
      onTap: (val) {
        if (mounted)
          setState(() {
            _currentIndex = val;
          });
      },
      title: Text(widget.title),
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          Container(color: Colors.blue[300]),
          Container(color: Colors.red[300]),
          Container(color: Colors.purple[300]),
          Container(color: Colors.grey[300]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      tabs: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text("Folders"),
          icon: Icon(Icons.folder),
        ),
        BottomNavigationBarItem(
          title: Text("History"),
          icon: Icon(Icons.history),
        ),
        BottomNavigationBarItem(
          title: Text("Gallery"),
          icon: Icon(Icons.photo_library),
        ),
        BottomNavigationBarItem(
          title: Text("Camera"),
          icon: Icon(Icons.camera),
        ),
      ],
    );
  }
}

