class MapsModel {
  dynamic status;
  List<Data>? data;

  MapsModel({this.status, this.data});

  MapsModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    data = json["data"] == null
        ? null
        : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
  }
}

class Data {
  dynamic uuid;
  dynamic displayName;
  dynamic narrativeDescription;
  dynamic tacticalDescription;
  dynamic coordinates;
  dynamic displayIcon;
  dynamic listViewIcon;
  dynamic listViewIconTall;
  dynamic splash;
  dynamic stylizedBackgroundImage;
  dynamic premierBackgroundImage;
  dynamic assetPath;
  dynamic mapUrl;
  dynamic xMultiplier;
  dynamic yMultiplier;
  dynamic xScalarToAdd;
  dynamic yScalarToAdd;
  List<Callouts>? callouts;

  Data(
      {this.uuid,
      this.displayName,
      this.narrativeDescription,
      this.tacticalDescription,
      this.coordinates,
      this.displayIcon,
      this.listViewIcon,
      this.listViewIconTall,
      this.splash,
      this.stylizedBackgroundImage,
      this.premierBackgroundImage,
      this.assetPath,
      this.mapUrl,
      this.xMultiplier,
      this.yMultiplier,
      this.xScalarToAdd,
      this.yScalarToAdd,
      this.callouts});

  Data.fromJson(Map<String, dynamic> json) {
    uuid = json["uuid"];
    displayName = json["displayName"];
    narrativeDescription = json["narrativeDescription"];
    tacticalDescription = json["tacticalDescription"];
    coordinates = json["coordinates"];
    displayIcon = json["displayIcon"];
    listViewIcon = json["listViewIcon"];
    listViewIconTall = json["listViewIconTall"];
    splash = json["splash"];
    stylizedBackgroundImage = json["stylizedBackgroundImage"];
    premierBackgroundImage = json["premierBackgroundImage"];
    assetPath = json["assetPath"];
    mapUrl = json["mapUrl"];
    xMultiplier = json["xMultiplier"];
    yMultiplier = json["yMultiplier"];
    xScalarToAdd = json["xScalarToAdd"];
    yScalarToAdd = json["yScalarToAdd"];
    callouts = json["callouts"] == null
        ? null
        : (json["callouts"] as List).map((e) => Callouts.fromJson(e)).toList();
  }
}

class Callouts {
  String? regionName;
  String? superRegionName;
  Location? location;

  Callouts({this.regionName, this.superRegionName, this.location});

  Callouts.fromJson(Map<String, dynamic> json) {
    regionName = json["regionName"];
    superRegionName = json["superRegionName"];
    location =
        json["location"] == null ? null : Location.fromJson(json["location"]);
  }
}

class Location {
  dynamic x;
  dynamic y;

  Location({this.x, this.y});

  Location.fromJson(Map<String, dynamic> json) {
    x = json["x"];
    y = json["y"];
  }
}
