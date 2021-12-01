class Player {
  final String id;
  final String nickname;
  final String avatarImg;
  final String? roomId;
  final String? characterImg;

  const Player({
    required this.id,
    required this.nickname,
    required this.avatarImg,
    this.characterImg,
    this.roomId,
  });
}
