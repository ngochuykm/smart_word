import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Applocalizations {
  final Locale locale;

  Applocalizations(this.locale);
  static const LocalizationsDelegate<Applocalizations> delegate =
      _ApplocalizationsDegate();
  static Applocalizations of(BuildContext context) {
    return Localizations.of<Applocalizations>(context, Applocalizations);
  }

  Map<String, String> _localizedStrings;

  Future load() async {
    String jsonString =
        await rootBundle.loadString('lang/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
    return true;
  }

  String transplate(String key) {
    return _localizedStrings[key];
  }
}

class _ApplocalizationsDegate extends LocalizationsDelegate<Applocalizations> {
  const _ApplocalizationsDegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'vi', 'ko', 'cn'].contains(locale.languageCode);
  }

  @override
  Future<Applocalizations> load(Locale locale) async {
    Applocalizations localizations = new Applocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_ApplocalizationsDegate old) => false;
}
