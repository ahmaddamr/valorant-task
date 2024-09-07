class AgentModel {
  int? status;
  List<Data>? data;

  AgentModel({this.status, this.data});

  AgentModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    data = json["data"] == null
        ? null
        : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
  }
}

class Data {
  String? uuid;
  String? displayName;
  String? description;
  String? developerName;
  dynamic characterTags;
  String? displayIcon;
  String? displayIconSmall;
  String? bustPortrait;
  String? fullPortrait;
  String? fullPortraitV2;
  String? killfeedPortrait;
  String? background;
  List<String>? backgroundGradientColors;
  String? assetPath;
  bool? isFullPortraitRightFacing;
  bool? isPlayableCharacter;
  bool? isAvailableForTest;
  bool? isBaseContent;
  Role? role;
  dynamic recruitmentData;
  List<Abilities>? abilities;
  dynamic voiceLine;

  Data(
      {this.uuid,
      this.displayName,
      this.description,
      this.developerName,
      this.characterTags,
      this.displayIcon,
      this.displayIconSmall,
      this.bustPortrait,
      this.fullPortrait,
      this.fullPortraitV2,
      this.killfeedPortrait,
      this.background,
      this.backgroundGradientColors,
      this.assetPath,
      this.isFullPortraitRightFacing,
      this.isPlayableCharacter,
      this.isAvailableForTest,
      this.isBaseContent,
      this.role,
      this.recruitmentData,
      this.abilities,
      this.voiceLine});

  Data.fromJson(Map<String, dynamic> json) {
    uuid = json["uuid"];
    displayName = json["displayName"];
    description = json["description"];
    developerName = json["developerName"];
    characterTags = json["characterTags"];
    displayIcon = json["displayIcon"];
    displayIconSmall = json["displayIconSmall"];
    bustPortrait = json["bustPortrait"];
    fullPortrait = json["fullPortrait"];
    fullPortraitV2 = json["fullPortraitV2"];
    killfeedPortrait = json["killfeedPortrait"];
    background = json["background"];
    backgroundGradientColors = json["backgroundGradientColors"] == null
        ? null
        : List<String>.from(json["backgroundGradientColors"]);
    assetPath = json["assetPath"];
    isFullPortraitRightFacing = json["isFullPortraitRightFacing"];
    isPlayableCharacter = json["isPlayableCharacter"];
    isAvailableForTest = json["isAvailableForTest"];
    isBaseContent = json["isBaseContent"];
    role = json["role"] == null ? null : Role.fromJson(json["role"]);
    recruitmentData = json["recruitmentData"];
    abilities = json["abilities"] == null
        ? null
        : (json["abilities"] as List)
            .map((e) => Abilities.fromJson(e))
            .toList();
    voiceLine = json["voiceLine"];
  }
}

class Abilities {
  String? slot;
  String? displayName;
  String? description;
  String? displayIcon;

  Abilities({this.slot, this.displayName, this.description, this.displayIcon});

  Abilities.fromJson(Map<String, dynamic> json) {
    slot = json["slot"];
    displayName = json["displayName"];
    description = json["description"];
    displayIcon = json["displayIcon"];
  }
}

class Role {
  String? uuid;
  String? displayName;
  String? description;
  String? displayIcon;
  String? assetPath;

  Role(
      {this.uuid,
      this.displayName,
      this.description,
      this.displayIcon,
      this.assetPath});

  Role.fromJson(Map<String, dynamic> json) {
    uuid = json["uuid"];
    displayName = json["displayName"];
    description = json["description"];
    displayIcon = json["displayIcon"];
    assetPath = json["assetPath"];
  }
}
