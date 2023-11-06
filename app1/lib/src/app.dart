import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = "APP";
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyCount(),
    );
  }
}

class MyCount extends StatefulWidget {
  const MyCount({super.key});

  @override
  State<StatefulWidget> createState() => _MyCountState();
}

class _MyCountState extends State<MyCount> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Contador',
          style: TextStyle(fontSize: 35.0, fontFamily: 'cursive'),
        ),
        backgroundColor: Color.fromARGB(133, 216, 130, 50),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 180.0,
            ),
            Text("La cantidad es: $_count"),
            const CircleAvatar(
              radius: 20s0.0,
              backgroundImage: AssetImage('images/cora.jpg'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 20.0,
          color: Color.fromARGB(133, 16, 2, 39),
        ),
      ),
      floatingActionButton: _crearBottoms(),
    );
  }

  Widget _crearBottoms() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton.extended(
          onPressed: (() {
            _count = 0;
          }),
          backgroundColor: Color.fromARGB(
              255, 174, 120, 58), // Color para el botón "restore"
          hoverColor: Color.fromARGB(255, 105, 152, 240),
          label: const Text('restore'),
          icon: Icon(Icons.restore),
          tooltip: "Menora el valor",
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton.extended(
          onPressed: (() {
            _count++;
          }),
          backgroundColor: Color.fromARGB(
              255, 219, 156, 61), // Color para el botón "restore"
          hoverColor: Color.fromARGB(255, 240, 105, 217),
          label: const Text('add'),
          icon: Icon(Icons.add),
          tooltip: "Aumento del valor",
        )
      ],
    );
  }
}
