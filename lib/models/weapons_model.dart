class WeaponsModel {
  dynamic status;
  List<Data>? data;

  WeaponsModel({this.status, this.data});

  WeaponsModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    data = json["data"] == null
        ? null
        : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
  }
}

class Data {
  String? uuid;
  String? displayName;
  String? category;
  String? defaultSkinUuid;
  String? displayIcon;
  String? killStreamIcon;
  String? assetPath;
  WeaponStats? weaponStats;
  ShopData? shopData;
  List<Skins>? skins;

  Data(
      {this.uuid,
      this.displayName,
      this.category,
      this.defaultSkinUuid,
      this.displayIcon,
      this.killStreamIcon,
      this.assetPath,
      this.weaponStats,
      this.shopData,
      this.skins});

  Data.fromJson(Map<String, dynamic> json) {
    uuid = json["uuid"];
    displayName = json["displayName"];
    category = json["category"];
    defaultSkinUuid = json["defaultSkinUuid"];
    displayIcon = json["displayIcon"];
    killStreamIcon = json["killStreamIcon"];
    assetPath = json["assetPath"];
    weaponStats = json["weaponStats"] == null
        ? null
        : WeaponStats.fromJson(json["weaponStats"]);
    shopData =
        json["shopData"] == null ? null : ShopData.fromJson(json["shopData"]);
    skins = json["skins"] == null
        ? null
        : (json["skins"] as List).map((e) => Skins.fromJson(e)).toList();
  }
}

class Skins {
  String? uuid;
  String? displayName;
  String? themeUuid;
  String? contentTierUuid;
  String? displayIcon;
  dynamic wallpaper;
  String? assetPath;
  List<Chromas>? chromas;
  List<Levels>? levels;

  Skins(
      {this.uuid,
      this.displayName,
      this.themeUuid,
      this.contentTierUuid,
      this.displayIcon,
      this.wallpaper,
      this.assetPath,
      this.chromas,
      this.levels});

  Skins.fromJson(Map<String, dynamic> json) {
    uuid = json["uuid"];
    displayName = json["displayName"];
    themeUuid = json["themeUuid"];
    contentTierUuid = json["contentTierUuid"];
    displayIcon = json["displayIcon"];
    wallpaper = json["wallpaper"];
    assetPath = json["assetPath"];
    chromas = json["chromas"] == null
        ? null
        : (json["chromas"] as List).map((e) => Chromas.fromJson(e)).toList();
    levels = json["levels"] == null
        ? null
        : (json["levels"] as List).map((e) => Levels.fromJson(e)).toList();
  }
}

class Levels {
  String? uuid;
  String? displayName;
  dynamic levelItem;
  String? displayIcon;
  dynamic streamedVideo;
  String? assetPath;

  Levels(
      {this.uuid,
      this.displayName,
      this.levelItem,
      this.displayIcon,
      this.streamedVideo,
      this.assetPath});

  Levels.fromJson(Map<String, dynamic> json) {
    uuid = json["uuid"];
    displayName = json["displayName"];
    levelItem = json["levelItem"];
    displayIcon = json["displayIcon"];
    streamedVideo = json["streamedVideo"];
    assetPath = json["assetPath"];
  }
}

class Chromas {
  String? uuid;
  String? displayName;
  dynamic displayIcon;
  String? fullRender;
  dynamic swatch;
  dynamic streamedVideo;
  String? assetPath;

  Chromas(
      {this.uuid,
      this.displayName,
      this.displayIcon,
      this.fullRender,
      this.swatch,
      this.streamedVideo,
      this.assetPath});

  Chromas.fromJson(Map<String, dynamic> json) {
    uuid = json["uuid"];
    displayName = json["displayName"];
    displayIcon = json["displayIcon"];
    fullRender = json["fullRender"];
    swatch = json["swatch"];
    streamedVideo = json["streamedVideo"];
    assetPath = json["assetPath"];
  }
}

class ShopData {
  dynamic cost;
  String? category;
  dynamic shopOrderPriority;
  String? categoryText;
  GridPosition? gridPosition;
  bool? canBeTrashed;
  dynamic image;
  String? newImage;
  dynamic newImage2;
  String? assetPath;

  ShopData(
      {this.cost,
      this.category,
      this.shopOrderPriority,
      this.categoryText,
      this.gridPosition,
      this.canBeTrashed,
      this.image,
      this.newImage,
      this.newImage2,
      this.assetPath});

  ShopData.fromJson(Map<String, dynamic> json) {
    cost = json["cost"];
    category = json["category"];
    shopOrderPriority = json["shopOrderPriority"];
    categoryText = json["categoryText"];
    gridPosition = json["gridPosition"] == null
        ? null
        : GridPosition.fromJson(json["gridPosition"]);
    canBeTrashed = json["canBeTrashed"];
    image = json["image"];
    newImage = json["newImage"];
    newImage2 = json["newImage2"];
    assetPath = json["assetPath"];
  }
}

class GridPosition {
  dynamic row;
  dynamic column;

  GridPosition({this.row, this.column});

  GridPosition.fromJson(Map<String, dynamic> json) {
    row = json["row"];
    column = json["column"];
  }
}

class WeaponStats {
  dynamic fireRate;
  dynamic magazineSize;
  dynamic runSpeedMultiplier;
  dynamic equipTimeSeconds;
  dynamic reloadTimeSeconds;
  dynamic firstBulletAccuracy;
  dynamic shotgunPelletCount;
  String? wallPenetration;
  String? feature;
  dynamic fireMode;
  String? altFireType;
  AdsStats? adsStats;
  dynamic altShotgunStats;
  dynamic airBurstStats;
  List<DamageRanges>? damageRanges;

  WeaponStats(
      {this.fireRate,
      this.magazineSize,
      this.runSpeedMultiplier,
      this.equipTimeSeconds,
      this.reloadTimeSeconds,
      this.firstBulletAccuracy,
      this.shotgunPelletCount,
      this.wallPenetration,
      this.feature,
      this.fireMode,
      this.altFireType,
      this.adsStats,
      this.altShotgunStats,
      this.airBurstStats,
      this.damageRanges});

  WeaponStats.fromJson(Map<String, dynamic> json) {
    fireRate = json["fireRate"];
    magazineSize = json["magazineSize"];
    runSpeedMultiplier = json["runSpeedMultiplier"];
    equipTimeSeconds = json["equipTimeSeconds"];
    reloadTimeSeconds = json["reloadTimeSeconds"];
    firstBulletAccuracy = json["firstBulletAccuracy"];
    shotgunPelletCount = json["shotgunPelletCount"];
    wallPenetration = json["wallPenetration"];
    feature = json["feature"];
    fireMode = json["fireMode"];
    altFireType = json["altFireType"];
    adsStats =
        json["adsStats"] == null ? null : AdsStats.fromJson(json["adsStats"]);
    altShotgunStats = json["altShotgunStats"];
    airBurstStats = json["airBurstStats"];
    damageRanges = json["damageRanges"] == null
        ? null
        : (json["damageRanges"] as List)
            .map((e) => DamageRanges.fromJson(e))
            .toList();
  }
}

class DamageRanges {
  dynamic rangeStartMeters;
  dynamic rangeEndMeters;
  dynamic headDamage;
  dynamic bodyDamage;
  dynamic legDamage;

  DamageRanges(
      {this.rangeStartMeters,
      this.rangeEndMeters,
      this.headDamage,
      this.bodyDamage,
      this.legDamage});

  DamageRanges.fromJson(Map<String, dynamic> json) {
    rangeStartMeters = json["rangeStartMeters"];
    rangeEndMeters = json["rangeEndMeters"];
    headDamage = json["headDamage"];
    bodyDamage = json["bodyDamage"];
    legDamage = json["legDamage"];
  }
}

class AdsStats {
  dynamic zoomMultiplier;
  dynamic fireRate;
  dynamic runSpeedMultiplier;
  dynamic burstCount;
  dynamic firstBulletAccuracy;

  AdsStats(
      {this.zoomMultiplier,
      this.fireRate,
      this.runSpeedMultiplier,
      this.burstCount,
      this.firstBulletAccuracy});

  AdsStats.fromJson(Map<String, dynamic> json) {
    zoomMultiplier = json["zoomMultiplier"];
    fireRate = json["fireRate"];
    runSpeedMultiplier = json["runSpeedMultiplier"];
    burstCount = json["burstCount"];
    firstBulletAccuracy = json["firstBulletAccuracy"];
  }
}
