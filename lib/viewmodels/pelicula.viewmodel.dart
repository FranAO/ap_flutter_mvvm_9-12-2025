import 'package:ap_flutter_mvvm/models/pelicula.model.dart';
import 'package:ap_flutter_mvvm/services/pelicula.service.dart';
import 'package:flutter/cupertino.dart';

class PeliculaViewModel extends ChangeNotifier{
  final PeliculaService _peliculaService = PeliculaService();
  List<Pelicula> _peliculas = [];
  bool _cargando = false;
  List<Pelicula> get peliculas => _peliculas;
  bool get cargando => _cargando;

  Future<void> fetchPeliculas() async {
    _cargando = true;
    notifyListeners();
    _peliculas = await _peliculaService.fetchPeliculas();
    _cargando = false;
    notifyListeners();
  }
}