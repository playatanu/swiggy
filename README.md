# swiggy


## Dependencies [Android]
<details>
     <summary> Click to expand </summary>
     
* [intl](https://pub.dev/packages/intl)
* [uuid](https://pub.dev/packages/uuid)
* [http](https://pub.dev/packages/http)
* [share](https://pub.dev/packages/share)
* [provider](https://pub.dev/packages/provider)
* [url_launcher](https://pub.dev/packages/url_launcher)
* [google_fonts](https://pub.dev/packages/google_fonts)
* [image_picker](https://pub.dev/packages/image_picker)
* [firebase_auth](https://pub.dev/packages/firebase_auth)
* [google_sign_in](https://pub.dev/packages/google_sign_in)
* [firebase_database](https://pub.dev/packages/firebase_database)
     
</details>


### API DOC RES
```
Restaurant Base Url = “https://raw.githubusercontent.com/playatanu/swiggy/main/server_github/data”
```
<details>
     <summary> HTTP Get Response [click to expand] </summary>
  
```
Restaurant and Food Data API

Restaurant keys [ ]

resid, 
resname, 
resimage, 
resrating, 
food[List]]
 
Food keys [ ]
 fid, 
fname, 
fimage, 
nonvag, 
fdetels, 
fprice


HTTP Get Response

[
    {    
 //Restaurant keys [ resid, resname, resimage, resrating, food[List]]                
        "resid": 1,
        "resname": "Coffee Break Cafe",
        "resimage": "https://res.cloudinary.com/...",
        "resrating": 5.4,
        "foods": [
            {
                "fid": 1,
                "fname": "Chicken Pokora",
                "fimage": "https://res.cloudinary.com/...",
                "nonvag": 1,
                "fdetels": "5 Pics",
                "fprice": 175
            },
            {
                "fid": 2,
                "fname": "Chicken Lolipop",
                "fimage": "https://res.cloudinary.com/...,
                "fdetels": "6 Pics",
                "nonvag": 1,
                "fprice": 175
            }
                  ] //Food Item List Close
    } //Restaurant close
]


```

</details>


<details>
     <summary> Model Class [click to expand] </summary>
  
```
  Restaurant Data Model Class
class ResModel {
  int resid;
  String resname;
  String resimage;
  double resreatting;
  List<Foods> foods;

  ResModel(
      {this.resid, this.resname, this.resimage, this.resreatting, this.foods});

  ResModel.fromJson(Map<String, dynamic> json) {
    resid = json['resid'];
    resname = json['resname'];
    resimage = json['resimage'];
    resreatting = json['resreatting'];
    if (json['foods'] != null) {
      foods = new List<Foods>();
      json['foods'].forEach((v) {
        foods.add(new Foods.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resid'] = this.resid;
    data['resname'] = this.resname;
    data['resimage'] = this.resimage;
    data['resreatting'] = this.resreatting;
    if (this.foods != null) {
      data['foods'] = this.foods.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

Food Model Data Class

class Foods {
  int fid;
  String fname;
  String fimage;
  int nonvag;
  String fdetels;
  int fprice;

  Foods(
      {this.fid,
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fid'] = this.fid;
    data['fname'] = this.fname;
    data['fimage'] = this.fimage;
    data['nonvag'] = this.nonvag;
    data['fdetels'] = this.fdetels;
    data['fprice'] = this.fprice;
    return data;
  }
}

  ```
  
  </details>
