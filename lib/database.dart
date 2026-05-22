/*import 'package:postgres/postgres.dart';
import 'dart:io';

class DatabaseHelper {
  // On récupère les infos depuis le fichier .env
  final String host = dotenv.env['DB_HOST'] ?? 'localhost';
  final int port = int.parse(dotenv.env['DB_PORT'] ?? '5432');
  final String dbName = dotenv.env['DB_HOST'] ?? '';
  final String user = dotenv.env['DB_USER'] ?? '';
  final String pass = dotenv.env['DB_PASS'] ?? '';

  late PostgreSQLConnection _connection;

  DatabaseHelper() {
    _connection = PostgreSQLConnection(
      host,
      port,
      dbName,
      username: user,
      password: pass,
      useSSL: false, // À passer en true avec Farès si installe certificat SSL
    );
  }

  Future<void> addAnonymizedData(String classe, String feedback) async {
    try {
      if (_connection.isClosed) await _connection.open();

      // On génère le pseudo anonyme côté Dart
      // Ici, on insère la classe et le feedback.
      // L'ident (ID) se génère tout seul grâce au SERIAL.
      await _connection.query(
        'INSERT INTO plushusers (classe, feedback, users) VALUES (@classe, @data, @user)',
        substitutionValues: {
          'classe': classe,
          'data': feedback,
          'user': 'User_Pending',
        },
      );
      print("Feedback enregistré !");
    } catch (e) {
      print('Erreur : $e');
    } finally {
      await _connection.close();
    }
  }

  // Récupérer les données pour Dgina
  Future<List<Map<String, dynamic>>> getFeedbacks() async {
    try {
      if (_connection.isClosed) await _connection.open();
      final results = await _connection.mappedResultsQuery(
        'SELECT * FROM plushusers ORDER BY last_changed DESC',
      );
      return results.map((row) => row['plushusers']!).toList();
    } catch (e) {
      print('Erreur lecture : $e');
      return [];
    }
  }
}
*/
