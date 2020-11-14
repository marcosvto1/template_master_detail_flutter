import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_master_detail_flutter/src/view_model/home/home_view_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Consumer<HomeViewModel>(
          builder: (context, home, child) {
            return Text("${home.title}");
          },
        ),
      ),
    );
  }
}
