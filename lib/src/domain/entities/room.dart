import 'package:joguinho_detetive/src/domain/entities/configs.dart';

class Room {
  final String id;
  final String name;
  final Configs? configs;
  final int currentPlayers;

  Room({
    required this.id,
    required this.name,
    this.configs,
    this.currentPlayers = 0,
  });
}
