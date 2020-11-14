import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_master_detail_flutter/src/core/route.dart';
import 'package:template_master_detail_flutter/src/view_model/home/home_view_model.dart';

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewModel())
      ],
      child: MaterialApp(
        title: 'YouApp',
        theme: ThemeData(),
        initialRoute: '/',
        onGenerateRoute: GenerateRoutes.defineRoutes,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
