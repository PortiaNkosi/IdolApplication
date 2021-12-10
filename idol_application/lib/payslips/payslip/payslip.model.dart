
import 'package:date_format/date_format.dart';
import 'package:idol_application/companies/company/company.model.dart';
import 'package:idol_application/objectinstance.dart';
import 'package:idol_application/users/user/user.model.dart';

class Payslip implements ObjectInstance{
  double bonus;
  String createDate;
  double grossSalary;
  int hourlyRate;
  String id;
  double medicalContribution;
  int monthlyHours;
  double netSalary;
  int overtimeHours;
  int overtimeRate;
  String paymentDate;
  String startDate;
  double tax;
  int taxNumber;
  double uif;
  int totalHours;

  User user;
  Company company;

  Payslip({
      this.bonus,
      this.createDate,
      this.grossSalary,
      this.hourlyRate,
      this.id,
      this.medicalContribution,
      this.monthlyHours,
      this.netSalary,
      this.overtimeHours,
      this.overtimeRate,
      this.paymentDate,
      this.startDate,
      this.tax,
      this.taxNumber,
      this.uif,
      this.totalHours,
      this.user,

    this.company
  });
  convertDateFromString() {
    DateTime todayDate = DateTime.parse(this.createDate);
    return formatDate(todayDate, [MM, ' ', yyyy]);
  }
  //maps the values from json to objects
  factory Payslip.fromJson(Map<String, dynamic> json) {
    return Payslip(

      //extracting the keys from json
      bonus: json['bonus'] ,
      createDate: json['createDate'],
      grossSalary: json['grossSalary'],
      hourlyRate: json['hourlyRate'] ,
      id: json['id']==null?'null':json['id'],
      medicalContribution: json['medicalContribution'] ,
      monthlyHours: json['monthlyHours'] ,
      netSalary: json['netSalary'] ,
      overtimeHours: json['overtimeHours'] ,
      overtimeRate: json['overtimeRate'],
      paymentDate: json['paymentDate'] ,
      startDate: json['startDate'] ,
      tax: json['tax'] ,
      taxNumber: json['taxNumber'] ,
      uif: json['uif'] ,
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] ),

      company: json['company']==null?Company(name:'null'):Company.fromJson(json['company']),

    );
  }

  Map<String, dynamic> toJson()=><String, dynamic>  {
   // return {
      'bonus': this.bonus,
      'createDate':createDate,
      'grossSalary':grossSalary,
      'hourlyRate':hourlyRate,
      'id':id,
      'medicalContribution':medicalContribution,
      'monthlyHours':monthlyHours,
      'netSalary':netSalary,
      'overtimeHours':overtimeHours,
      'overtimeRate':overtimeRate,
      'paymentDate':paymentDate,
      'startDate':startDate,
      'tax':tax,
      'taxNumber':taxNumber,
      'uif':uif,
      'user':user,
     // 'attachments':attachments,
      'company':company,
    };
  }

