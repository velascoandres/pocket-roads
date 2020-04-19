import 'package:pocket_roads/src/constantes/nombres-submodulos.dart';
import 'app_locations.dart';
import 'package:flutter/material.dart';

class AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  // La instancia del delegador nunca podra cambiar incluso si no tiene atributos
  // Se proporciona un constructor constante
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // Incluir todos los legnuages soportados aqui
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    // La clase AppLocations es donde la carga de los archivos se ejecuta
    AppLocalizations localizations = new AppLocalizations(locale);
//    await localizations.load();
    await localizations.cargarMasivo(NOMBRES_SUBMODULOS);
    return localizations;
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}