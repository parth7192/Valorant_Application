class ValoModel {
  ValoModel({
    num? status,
    List<Data>? data,
  }) {
    _status = status;
    _data = data;
  }

  ValoModel.fromJson(dynamic json) {
    _status = json['status'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  num? _status;
  List<Data>? _data;
  ValoModel copyWith({
    num? status,
    List<Data>? data,
  }) =>
      ValoModel(
        status: status ?? _status,
        data: data ?? _data,
      );
  num? get status => _status;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Data {
  Data({
    String? uuid,
    String? displayName,
    String? description,
    String? developerName,
    dynamic characterTags,
    String? displayIcon,
    String? displayIconSmall,
    String? bustPortrait,
    String? fullPortrait,
    String? fullPortraitV2,
    String? killfeedPortrait,
    String? background,
    List<String>? backgroundGradientColors,
    String? assetPath,
    bool? isFullPortraitRightFacing,
    bool? isPlayableCharacter,
    bool? isAvailableForTest,
    bool? isBaseContent,
    Role? role,
    dynamic recruitmentData,
    List<Abilities>? abilities,
    dynamic voiceLine,
  }) {
    _uuid = uuid;
    _displayName = displayName;
    _description = description;
    _developerName = developerName;
    _characterTags = characterTags;
    _displayIcon = displayIcon;
    _displayIconSmall = displayIconSmall;
    _bustPortrait = bustPortrait;
    _fullPortrait = fullPortrait;
    _fullPortraitV2 = fullPortraitV2;
    _killfeedPortrait = killfeedPortrait;
    _background = background;
    _backgroundGradientColors = backgroundGradientColors;
    _assetPath = assetPath;
    _isFullPortraitRightFacing = isFullPortraitRightFacing;
    _isPlayableCharacter = isPlayableCharacter;
    _isAvailableForTest = isAvailableForTest;
    _isBaseContent = isBaseContent;
    _role = role;
    _recruitmentData = recruitmentData;
    _abilities = abilities;
    _voiceLine = voiceLine;
  }

  Data.fromJson(dynamic json) {
    _uuid = json['uuid'];
    _displayName = json['displayName'];
    _description = json['description'];
    _developerName = json['developerName'];
    _characterTags = json['characterTags'];
    _displayIcon = json['displayIcon'];
    _displayIconSmall = json['displayIconSmall'];
    _bustPortrait = json['bustPortrait'];
    _fullPortrait = json['fullPortrait'];
    _fullPortraitV2 = json['fullPortraitV2'];
    _killfeedPortrait = json['killfeedPortrait'];
    _background = json['background'];
    _backgroundGradientColors = json['backgroundGradientColors'] != null
        ? json['backgroundGradientColors'].cast<String>()
        : [];
    _assetPath = json['assetPath'];
    _isFullPortraitRightFacing = json['isFullPortraitRightFacing'];
    _isPlayableCharacter = json['isPlayableCharacter'];
    _isAvailableForTest = json['isAvailableForTest'];
    _isBaseContent = json['isBaseContent'];
    _role = json['role'] != null ? Role.fromJson(json['role']) : null;
    _recruitmentData = json['recruitmentData'];
    if (json['abilities'] != null) {
      _abilities = [];
      json['abilities'].forEach((v) {
        _abilities?.add(Abilities.fromJson(v));
      });
    }
    _voiceLine = json['voiceLine'];
  }
  String? _uuid;
  String? _displayName;
  String? _description;
  String? _developerName;
  dynamic _characterTags;
  String? _displayIcon;
  String? _displayIconSmall;
  String? _bustPortrait;
  String? _fullPortrait;
  String? _fullPortraitV2;
  String? _killfeedPortrait;
  String? _background;
  List<String>? _backgroundGradientColors;
  String? _assetPath;
  bool? _isFullPortraitRightFacing;
  bool? _isPlayableCharacter;
  bool? _isAvailableForTest;
  bool? _isBaseContent;
  Role? _role;
  dynamic _recruitmentData;
  List<Abilities>? _abilities;
  dynamic _voiceLine;
  Data copyWith({
    String? uuid,
    String? displayName,
    String? description,
    String? developerName,
    dynamic characterTags,
    String? displayIcon,
    String? displayIconSmall,
    String? bustPortrait,
    String? fullPortrait,
    String? fullPortraitV2,
    String? killfeedPortrait,
    String? background,
    List<String>? backgroundGradientColors,
    String? assetPath,
    bool? isFullPortraitRightFacing,
    bool? isPlayableCharacter,
    bool? isAvailableForTest,
    bool? isBaseContent,
    Role? role,
    dynamic recruitmentData,
    List<Abilities>? abilities,
    dynamic voiceLine,
  }) =>
      Data(
        uuid: uuid ?? _uuid,
        displayName: displayName ?? _displayName,
        description: description ?? _description,
        developerName: developerName ?? _developerName,
        characterTags: characterTags ?? _characterTags,
        displayIcon: displayIcon ?? _displayIcon,
        displayIconSmall: displayIconSmall ?? _displayIconSmall,
        bustPortrait: bustPortrait ?? _bustPortrait,
        fullPortrait: fullPortrait ?? _fullPortrait,
        fullPortraitV2: fullPortraitV2 ?? _fullPortraitV2,
        killfeedPortrait: killfeedPortrait ?? _killfeedPortrait,
        background: background ?? _background,
        backgroundGradientColors:
            backgroundGradientColors ?? _backgroundGradientColors,
        assetPath: assetPath ?? _assetPath,
        isFullPortraitRightFacing:
            isFullPortraitRightFacing ?? _isFullPortraitRightFacing,
        isPlayableCharacter: isPlayableCharacter ?? _isPlayableCharacter,
        isAvailableForTest: isAvailableForTest ?? _isAvailableForTest,
        isBaseContent: isBaseContent ?? _isBaseContent,
        role: role ?? _role,
        recruitmentData: recruitmentData ?? _recruitmentData,
        abilities: abilities ?? _abilities,
        voiceLine: voiceLine ?? _voiceLine,
      );
  String? get uuid => _uuid;
  String? get displayName => _displayName;
  String? get description => _description;
  String? get developerName => _developerName;
  dynamic get characterTags => _characterTags;
  String? get displayIcon => _displayIcon;
  String? get displayIconSmall => _displayIconSmall;
  String? get bustPortrait => _bustPortrait;
  String? get fullPortrait => _fullPortrait;
  String? get fullPortraitV2 => _fullPortraitV2;
  String? get killfeedPortrait => _killfeedPortrait;
  String? get background => _background;
  List<String>? get backgroundGradientColors => _backgroundGradientColors;
  String? get assetPath => _assetPath;
  bool? get isFullPortraitRightFacing => _isFullPortraitRightFacing;
  bool? get isPlayableCharacter => _isPlayableCharacter;
  bool? get isAvailableForTest => _isAvailableForTest;
  bool? get isBaseContent => _isBaseContent;
  Role? get role => _role;
  dynamic get recruitmentData => _recruitmentData;
  List<Abilities>? get abilities => _abilities;
  dynamic get voiceLine => _voiceLine;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = _uuid;
    map['displayName'] = _displayName;
    map['description'] = _description;
    map['developerName'] = _developerName;
    map['characterTags'] = _characterTags;
    map['displayIcon'] = _displayIcon;
    map['displayIconSmall'] = _displayIconSmall;
    map['bustPortrait'] = _bustPortrait;
    map['fullPortrait'] = _fullPortrait;
    map['fullPortraitV2'] = _fullPortraitV2;
    map['killfeedPortrait'] = _killfeedPortrait;
    map['background'] = _background;
    map['backgroundGradientColors'] = _backgroundGradientColors;
    map['assetPath'] = _assetPath;
    map['isFullPortraitRightFacing'] = _isFullPortraitRightFacing;
    map['isPlayableCharacter'] = _isPlayableCharacter;
    map['isAvailableForTest'] = _isAvailableForTest;
    map['isBaseContent'] = _isBaseContent;
    if (_role != null) {
      map['role'] = _role?.toJson();
    }
    map['recruitmentData'] = _recruitmentData;
    if (_abilities != null) {
      map['abilities'] = _abilities?.map((v) => v.toJson()).toList();
    }
    map['voiceLine'] = _voiceLine;
    return map;
  }
}

class Abilities {
  Abilities({
    String? slot,
    String? displayName,
    String? description,
    String? displayIcon,
  }) {
    _slot = slot;
    _displayName = displayName;
    _description = description;
    _displayIcon = displayIcon;
  }

  Abilities.fromJson(dynamic json) {
    _slot = json['slot'];
    _displayName = json['displayName'];
    _description = json['description'];
    _displayIcon = json['displayIcon'];
  }
  String? _slot;
  String? _displayName;
  String? _description;
  String? _displayIcon;
  Abilities copyWith({
    String? slot,
    String? displayName,
    String? description,
    String? displayIcon,
  }) =>
      Abilities(
        slot: slot ?? _slot,
        displayName: displayName ?? _displayName,
        description: description ?? _description,
        displayIcon: displayIcon ?? _displayIcon,
      );
  String? get slot => _slot;
  String? get displayName => _displayName;
  String? get description => _description;
  String? get displayIcon => _displayIcon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['slot'] = _slot;
    map['displayName'] = _displayName;
    map['description'] = _description;
    map['displayIcon'] = _displayIcon;
    return map;
  }
}

class Role {
  Role({
    String? uuid,
    String? displayName,
    String? description,
    String? displayIcon,
    String? assetPath,
  }) {
    _uuid = uuid;
    _displayName = displayName;
    _description = description;
    _displayIcon = displayIcon;
    _assetPath = assetPath;
  }

  Role.fromJson(dynamic json) {
    _uuid = json['uuid'];
    _displayName = json['displayName'];
    _description = json['description'];
    _displayIcon = json['displayIcon'];
    _assetPath = json['assetPath'];
  }
  String? _uuid;
  String? _displayName;
  String? _description;
  String? _displayIcon;
  String? _assetPath;
  Role copyWith({
    String? uuid,
    String? displayName,
    String? description,
    String? displayIcon,
    String? assetPath,
  }) =>
      Role(
        uuid: uuid ?? _uuid,
        displayName: displayName ?? _displayName,
        description: description ?? _description,
        displayIcon: displayIcon ?? _displayIcon,
        assetPath: assetPath ?? _assetPath,
      );
  String? get uuid => _uuid;
  String? get displayName => _displayName;
  String? get description => _description;
  String? get displayIcon => _displayIcon;
  String? get assetPath => _assetPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = _uuid;
    map['displayName'] = _displayName;
    map['description'] = _description;
    map['displayIcon'] = _displayIcon;
    map['assetPath'] = _assetPath;
    return map;
  }
}
