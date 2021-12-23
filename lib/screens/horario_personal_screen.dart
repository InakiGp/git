import 'package:flutter/material.dart';
import 'package:ijandula/provider/centro_provider.dart';
import 'package:provider/provider.dart';

class HorarioPersonalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final centroProvider = Provider.of<CentroProvider>(context);
    final listadoProfesores = centroProvider.listaProfesores;
    return Scaffold(
      appBar: AppBar(
        title: Text("HORARIO"),
      ),
      body: Center(
        child: Container(
          child: ListView.builder(
              itemCount: listadoProfesores.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "horario_prof_screen",
                        arguments: index);
                  },
                  child: ListTile(
                    title: Text(listadoProfesores[index].nombre),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
