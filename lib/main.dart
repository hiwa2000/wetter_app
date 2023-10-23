import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherApp(),
    );
  }
}

class WeatherApp extends StatelessWidget {
  // Erstelle ein Beispielobjekt der Klasse WeatherData
  final WeatherData weatherData = WeatherData(
    city: 'Berlin',
    temperature: 25.0,
    weatherCondition: 'Sonnig',
  );

  @override
  Widget build(BuildContext context) {
    // Füge ein Scaffold hinzu, um die Grundstruktur der App zu erstellen
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 210, 169),
      // Füge eine AppBar hinzu, die einen sinnvollen Titel enthält
      appBar: AppBar(
        title: Text('Wetter-App'),
        backgroundColor: Colors.orange, // Hinzufügen der Hintergrundfarbe zur AppBar
      ),
      // Verwende den vorhandenen Container als Body des Scaffold
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Füge dem Container den Text "Willkommen zur Wetter-App!" hinzu und ändere die Farbe und Schriftgröße des Textes
            const Text(
              'Willkommen zur Wetter-App!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
                
              ),
            ),
            const SizedBox(height: 20),
            // Erstelle die Klasse WeatherData mit den Attributen city, temperature und weatherCondition
            // Legen Sie ein Beispielobjekt der Klasse WeatherData in der main-Methode an und übergeben Sie es der Klasse WeatherApp als Attribut
            // Ändere den vorhandenen Text so, dass das aktuelle Wetter in der Stadt des Beispielobjekts angezeigt wird
            Text(
              'Aktuelles Wetter in ${weatherData.city}: ${weatherData.temperature} Wetter: ${weatherData.weatherCondition}',
              style: const TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center, 
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherData {
  // Erstelle die Klasse WeatherData mit den Attributen city, temperature und weatherCondition
  final String city;
  final double temperature;
  final String weatherCondition;

  WeatherData({
    required this.city,
    required this.temperature,
    required this.weatherCondition,
  });
}
