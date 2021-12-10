

class LoginBean{

  	bool admin;
 	  String  firstName;
  	String password;
  	String token;
  	String username;
  	List<dynamic> permissions;

    LoginBean({this.admin, this.firstName, this.password, this.permissions,
      this.token, this.username});

    //maps the values from json to objects
    factory LoginBean.fromJson(Map<String, dynamic> json) {
      return LoginBean(
        admin: json['admin'],
        firstName: json['firstName'],
        password: json['password'],
        permissions: json['permissions'],
        token: json['token'],
        username: json['username']
      );
    }

    Map<String, dynamic> toJson() =><String, dynamic>{
      //return {
        'admin':admin,
        'firstName':firstName,
        'password':password,
        'permissions':permissions,
        'token':token,
        'username':username,
      };
    }
