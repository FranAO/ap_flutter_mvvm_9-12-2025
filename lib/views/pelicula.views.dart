import 'package:ap_flutter_mvvm/viewmodels/pelicula.viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PeliculaView extends StatelessWidget{
  const PeliculaView({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final peliculaViewmodel = Provider.of<PeliculaViewModel>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Mis peliculas MVVM"),),
      body: peliculaViewmodel.cargando? Center(child: CircularProgressIndicator(),):
          ListView.builder(
            itemBuilder: (context, index) {
              final pelicula = peliculaViewmodel.peliculas[index];
              return ListTile(title: Text("${pelicula.Titulo} (${pelicula.Anio})"),
                subtitle: Text("${pelicula.Director}, (${pelicula.Genero})"),
              );
            },
            itemCount: peliculaViewmodel.peliculas.length,
          ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          peliculaViewmodel.fetchPeliculas();
        },
        child: Icon(Icons.refresh),
        ),
    );
  }
}