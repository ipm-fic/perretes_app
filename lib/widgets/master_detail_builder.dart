import 'package:flutter/material.dart';

import 'package:perretes_app/config/app_config.dart';
import 'package:perretes_app/widgets/lista_razas_screen.dart';
import 'package:perretes_app/widgets/master_and_detail_screen.dart';


class MasterDetailBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        int breakPoint = AppConfig.of(context).breakPoint;
        bool chooseMasterAndDetail = constraints.smallest.longestSide > breakPoint &&
        MediaQuery.of(context).orientation == Orientation.landscape;
        return chooseMasterAndDetail ? MasterAndDetailScreen() : ListaRazasScreen();
      }
    );
  }
}
