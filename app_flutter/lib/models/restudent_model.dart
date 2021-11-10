import 'dart:convert';

List<RestudentModel> restaurantModelFromJson(String str) =>
    List<RestudentModel>.from(
      json.decode(str).map(
            (x) => RestudentModel.fromJson(x),
          ),
    );
String restaurantModelToJson(List<RestudentModel> data) => json.encode(
      List<dynamic>.from(
        data.map(
          (x) => x.toJson(),
        ),
      ),
    );

class RestudentModel {
  RestudentModel({
    required this.resid,
    required this.resname,
    required this.resimage,
    required this.resreatting,
    required this.address,
    required this.type,
    required this.foods,
  });

  int resid;
  String resname;
  String resimage;
  double resreatting;
  String address;
  String type;
  List<Food> foods;

  factory RestudentModel.fromJson(Map<String, dynamic> json) => RestudentModel(
        resid: json["resid"],
        resname: json["resname"],
        resimage: json["resimage"],
        resreatting: json["resreatting"].toDouble(),
        address: json["address"],
        type: json["type"],
        foods: List<Food>.from(json["foods"].map((x) => Food.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "resid": resid,
        "resname": resname,
        "resimage": resimage,
        "resreatting": resreatting,
        "address": address,
        "type": type,
        "foods": List<dynamic>.from(foods.map((x) => x.toJson())),
      };
}

class Food {
  Food({
    required this.fid,
    required this.fname,
    required this.fimage,
    required this.nonVeg,
    required this.fdetels,
    required this.fprice,
  });

  int fid;
  String fname;
  String fimage;
  int nonVeg;
  String fdetels;
  int fprice;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        fid: json["fid"],
        fname: json["fname"],
        fimage: json["fimage"],
        nonVeg: json["nonVeg"],
        fdetels: json["fdetels"],
        fprice: json["fprice"],
      );

  Map<String, dynamic> toJson() => {
        "fid": fid,
        "fname": fname,
        "fimage": fimage,
        "nonVeg": nonVeg,
        "fdetels": fdetels,
        "fprice": fprice,
      };
}



// class RestudentModel {
//   int? resid;
//   String? resname;
//   String? resimage;
//   double? resreatting;
//   List<Foods>? foods;

//   RestudentModel(jsonDecode,
//       {this.resid, this.resname, this.resimage, this.resreatting, this.foods});

//   RestudentModel.fromJson(Map<String, dynamic> json) {
//     resid = json['resid'];
//     resname = json['resname'];
//     resimage = json['resimage'];
//     resreatting = json['resreatting'];
//     if (json['foods'] != null) {
//       foods = <Foods>[];
//       json['foods'].forEach((v) {
//         foods!.add(Foods.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['resid'] = resid;
//     data['resname'] = resname;
//     data['resimage'] = resimage;
//     data['resreatting'] = resreatting;
//     if (foods != null) {
//       data['foods'] = foods!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Foods {
//   int? fid;
//   String? fname;
//   String? fimage;
//   int? nonvag;
//   String? fdetels;
//   int? fprice;

//   Foods(
//       {required this.fid,
//       this.fname,
//       this.fimage,
//       this.nonvag,
//       this.fdetels,
//       this.fprice});

//   Foods.fromJson(Map<String, dynamic> json) {
//     fid = json['fid'];
//     fname = json['fname'];
//     fimage = json['fimage'];
//     nonvag = json['nonvag'];
//     fdetels = json['fdetels'];
//     fprice = json['fprice'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['fid'] = fid;
//     data['fname'] = fname;
//     data['fimage'] = fimage;
//     data['nonvag'] = nonvag;
//     data['fdetels'] = fdetels;
//     data['fprice'] = fprice;
//     return data;
//   }
// }
