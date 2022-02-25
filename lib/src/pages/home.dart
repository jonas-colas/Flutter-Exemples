import 'package:flutter/material.dart';
// import 'package:flutter_examples/src/pages/alert_page.dart';
import 'package:flutter_examples/src/providers/menu_provider.dart';
import 'package:flutter_examples/src/utils/icon_string_util.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider.options);
    // menuProvider.loadData();
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        // print(snapshot.data);
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  _listaItems(data, BuildContext context) {
    // List<Widget>  //List<dynamic>
    final List<Widget> options = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          // final route = MaterialPageRoute(builder: (context) {
          //   return AlertPage();
          // });
          // Navigator.push(context, route);
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      options
        ..add(widgetTemp)
        ..add(Divider());
    });
    return options;
  }
}
