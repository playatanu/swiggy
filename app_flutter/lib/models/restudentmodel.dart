class RestudentModel {
  int? resid;
  String? resname;
  String? resimage;
  double? resreatting;
  List<Foods>? foods;

  RestudentModel(jsonDecode,
      {this.resid, this.resname, this.resimage, this.resreatting, this.foods});

  RestudentModel.fromJson(Map<String, dynamic> json) {
    resid = json['resid'];
    resname = json['resname'];
    resimage = json['resimage'];
    resreatting = json['resreatting'];
    if (json['foods'] != null) {
      foods = <Foods>[];
      json['foods'].forEach((v) {
        foods!.add(Foods.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['resid'] = resid;
    data['resname'] = resname;
    data['resimage'] = resimage;
    data['resreatting'] = resreatting;
    if (foods != null) {
      data['foods'] = foods!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Foods {
  int? fid;
  String? fname;
  String? fimage;
  int? nonvag;
  String? fdetels;
  int? fprice;

  Foods(
      {required this.fid,
      this.fname,
      this.fimage,
      this.nonvag,
      this.fdetels,
      this.fprice});

  Foods.fromJson(Map<String, dynamic> json) {
    fid = json['fid'];
    fname = json['fname'];
    fimage = json['fimage'];
    nonvag = json['nonvag'];
    fdetels = json['fdetels'];
    fprice = json['fprice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fid'] = fid;
    data['fname'] = fname;
    data['fimage'] = fimage;
    data['nonvag'] = nonvag;
    data['fdetels'] = fdetels;
    data['fprice'] = fprice;
    return data;
  }
}
