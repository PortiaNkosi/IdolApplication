
class Address{
  String contactNumber;
  String email;
  String province;
  String country;
  String latitude;
  String line1;
  String line2;
  String longitude;

  Address({this.contactNumber, this.email, this.province, this.country, this.latitude, this.line1, this.line2, this.longitude});
  //maps the values from json to objects
  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      contactNumber: json['contactNumber'],
      email: json['email'],
      province: json['province'],
      country: json['country'],
      latitude: json['latitude'],
      line1: json['line1'],
      line2: json['line2'] ,
      longitude: json['longitude'],

    );
  }

  Map<String, dynamic> toJson()=><String, dynamic> {
    //return {
      'contactNumber':contactNumber,
      'email':email,
      'province':province,
      'country':country,
      'latitude':latitude,
      'line1':line1,
      'line2':line2,
      'longitude':longitude
    };
  }
