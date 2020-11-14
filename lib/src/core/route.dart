import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:template_master_detail_flutter/src/view/pages/pages.dart';

class GenerateRoutes {
  static Route<dynamic> defineRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/': 
        return MaterialPageRoute(builder: (_) => HomePage());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('Nenhuma rota definida para ${settings.name}')),
          )
        );
    }
  }

  toRoute({Widget widget}) {
    return MaterialPageRoute(builder: (_) => widget);
  }
}