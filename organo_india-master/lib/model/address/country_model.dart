class CountryModelDataCountry {
/*
{
  "id": 2,
  "user_id": 1,
  "name": "India",
  "status": true,
  "created_at": "2021-09-30T11:36:30.000000Z",
  "updated_at": "2021-10-14T07:04:16.000000Z",
  "deleted_at": null
} 
*/

  int? id;
  int? userId;
  String? name;
  bool? status;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  CountryModelDataCountry({
    this.id,
    this.userId,
    this.name,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
  CountryModelDataCountry.fromJson(Map<String, dynamic> json) {
    id = json["id"]?.toInt();
    userId = json["user_id"]?.toInt();
    name = json["name"]?.toString();
    status = json["status"];
    createdAt = json["created_at"]?.toString();
    updatedAt = json["updated_at"]?.toString();
    deletedAt = json["deleted_at"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["user_id"] = userId;
    data["name"] = name;
    data["status"] = status;
    data["created_at"] = createdAt;
    data["updated_at"] = updatedAt;
    data["deleted_at"] = deletedAt;
    return data;
  }
}

class CountryModelData {
/*
{
  "country": [
    {
      "id": 2,
      "user_id": 1,
      "name": "India",
      "status": true,
      "created_at": "2021-09-30T11:36:30.000000Z",
      "updated_at": "2021-10-14T07:04:16.000000Z",
      "deleted_at": null
    }
  ]
} 
*/

  List<CountryModelDataCountry>? country;

  CountryModelData({
    this.country,
  });
  CountryModelData.fromJson(Map<String, dynamic> json) {
    if (json["country"] != null) {
      final v = json["country"];
      final arr0 = <CountryModelDataCountry>[];
      v.forEach((v) {
        arr0.add(CountryModelDataCountry.fromJson(v));
      });
      country = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (country != null) {
      final v = country;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v.toJson());
      });
      data["country"] = arr0;
    }
    return data;
  }
}

class CountryModel {
/*
{
  "success": true,
  "data": {
    "country": [
      {
        "id": 2,
        "user_id": 1,
        "name": "India",
        "status": true,
        "created_at": "2021-09-30T11:36:30.000000Z",
        "updated_at": "2021-10-14T07:04:16.000000Z",
        "deleted_at": null
      }
    ]
  },
  "message": "country list."
} 
*/

  bool? success;
  CountryModelData? data;
  String? message;

  CountryModel({
    this.success,
    this.data,
    this.message,
  });
  CountryModel.fromJson(Map<String, dynamic> json) {
    success = json["success"];
    data =
        (json["data"] != null) ? CountryModelData.fromJson(json["data"]) : null;
    message = json["message"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["success"] = success;
    if (data != null) {
      data["data"] = this.data!.toJson();
    }
    data["message"] = message;
    return data;
  }
}
