class NbaModel {
  NbaModel({
      this.data,});

  NbaModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  List<Data>? data;
NbaModel copyWith({  List<Data>? data,
}) => NbaModel(  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Data {
  Data({
      this.id, 
      this.conference, 
      this.division, 
      this.city, 
      this.name, 
      this.fullName, 
      this.abbreviation,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    conference = json['conference'];
    division = json['division'];
    city = json['city'];
    name = json['name'];
    fullName = json['full_name'];
    abbreviation = json['abbreviation'];
  }
  num? id;
  String? conference;
  String? division;
  String? city;
  String? name;
  String? fullName;
  String? abbreviation;
Data copyWith({  num? id,
  String? conference,
  String? division,
  String? city,
  String? name,
  String? fullName,
  String? abbreviation,
}) => Data(  id: id ?? this.id,
  conference: conference ?? this.conference,
  division: division ?? this.division,
  city: city ?? this.city,
  name: name ?? this.name,
  fullName: fullName ?? this.fullName,
  abbreviation: abbreviation ?? this.abbreviation,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['conference'] = conference;
    map['division'] = division;
    map['city'] = city;
    map['name'] = name;
    map['full_name'] = fullName;
    map['abbreviation'] = abbreviation;
    return map;
  }

}