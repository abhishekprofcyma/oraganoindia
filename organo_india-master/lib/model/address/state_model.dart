class StateModelDataState {
/*
{
  "id": 1,
  "user_id": 1,
  "country_id": 2,
  "name": "Maharashtra",
  "status": true,
  "created_at": "2021-09-30T06:30:07.000000Z",
  "updated_at": "2021-10-14T07:04:22.000000Z",
  "deleted_at": null
} 
*/

  int? id;
  int? userId;
  int? countryId;
  String? name;
  bool? status;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  StateModelDataState({
    this.id,
    this.userId,
    this.countryId,
    this.name,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
  StateModelDataState.fromJson(Map<String, dynamic> json) {
    id = json["id"]?.toInt();
    userId = json["user_id"]?.toInt();
    countryId = json["country_id"]?.toInt();
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
    data["country_id"] = countryId;
    data["name"] = name;
    data["status"] = status;
    data["created_at"] = createdAt;
    data["updated_at"] = updatedAt;
    data["deleted_at"] = deletedAt;
    return data;
  }
}

class StateModelData {
/*
{
  "state": [
    {
      "id": 1,
      "user_id": 1,
      "country_id": 2,
      "name": "Maharashtra",
      "status": true,
      "created_at": "2021-09-30T06:30:07.000000Z",
      "updated_at": "2021-10-14T07:04:22.000000Z",
      "deleted_at": null
    }
  ]
} 
*/

  List<StateModelDataState>? state;

  StateModelData({
    this.state,
  });
  StateModelData.fromJson(Map<String, dynamic> json) {
    if (json["state"] != null) {
      final v = json["state"];
      final arr0 = <StateModelDataState>[];
      v.forEach((v) {
        arr0.add(StateModelDataState.fromJson(v));
      });
      state = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (state != null) {
      final v = state;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v.toJson());
      });
      data["state"] = arr0;
    }
    return data;
  }
}

class StateModel {
/*
{
  "success": true,
  "data": {
    "state": [
      {
        "id": 1,
        "user_id": 1,
        "country_id": 2,
        "name": "Maharashtra",
        "status": true,
        "created_at": "2021-09-30T06:30:07.000000Z",
        "updated_at": "2021-10-14T07:04:22.000000Z",
        "deleted_at": null
      }
    ]
  },
  "message": "state list."
} 
*/

  bool? success;
  StateModelData? data;
  String? message;

  StateModel({
    this.success,
    this.data,
    this.message,
  });
  StateModel.fromJson(Map<String, dynamic> json) {
    success = json["success"];
    data =
        (json["data"] != null) ? StateModelData.fromJson(json["data"]) : null;
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
