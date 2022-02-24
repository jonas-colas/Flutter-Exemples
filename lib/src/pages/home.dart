import 'package:flutter/material.dart';
import 'package:flutter_examples/src/providers/menu_provider.dart';

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
          children: _listaItems(snapshot.data),
        );
      },
    );
  }

  _listaItems(data) {
    // List<Widget>  //List<dynamic>
    final List<Widget> options = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.account_circle, color: Colors.blue),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {},
      );
      options
        ..add(widgetTemp)
        ..add(Divider());
    });
    return options;
  }
}
