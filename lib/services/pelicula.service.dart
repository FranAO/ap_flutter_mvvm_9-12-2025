import 'package:ap_flutter_mvvm/models/pelicula.model.dart';

class PeliculaService{
  Future<List<Pelicula>> fetchPeliculas() async {
    await Future.delayed(Duration(seconds: 3));
    return[
      Pelicula("La sociedad de la nieve", "J.A. Bayona", "Drama", 2023),
      Pelicula("Un vecino gruñon", "Marc Forster", "Comedia", 2022),
      Pelicula("La viuda negra", "Carlos Sedes", "Crime", 2025),
    ];
  }
}