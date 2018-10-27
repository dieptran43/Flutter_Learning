import 'package:flutter/material.dart';
import 'userModel.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final User user = new User();

  @override
  Widget build(BuildContext context) {
    final TextField _txtUserName = new TextField(
      decoration: new InputDecoration(
          hintText: 'Enter your user name',
          contentPadding: new EdgeInsets.all(10.0),
          border: InputBorder.none),
      keyboardType: TextInputType.text,
      autocorrect: true,
      onChanged: (text) {
        setState(() {
          this.user.userName = text;
        });
      },
    );
final TextField _txtEmail = new TextField(
      decoration:  new InputDecoration(
        hintText: 'Your email address',
        contentPadding: new EdgeInsets.all(10.0),
        border:  InputBorder.none,
      ),
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      onChanged: (text) {
        setState((){
          this.user.email = text;
        });
      },
    );
    final TextField _txtPassword = new TextField(
      decoration:  new InputDecoration(
        hintText: 'Your password',
        contentPadding: new EdgeInsets.all(10.0),
        border:  InputBorder.none,
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,
      obscureText: true,//secure your text entry, display ****
      onChanged: (text) {
        setState((){
          this.user.password = text;
        });
      },
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Login page example'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            decoration: new BoxDecoration(
                color: new Color.fromARGB(255, 240, 240, 240),
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(6.0))),
            child: _txtUserName,
          ),
          new Container(
            margin: new
              EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            decoration: new BoxDecoration(
                color: new Color.fromARGB(255, 240, 240, 240),
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius: const BorderRadius.all(const Radius.circular(6.0))
            ),
            child: _txtEmail,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            decoration: new BoxDecoration(
                color: new Color.fromARGB(255, 240, 240, 240),
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius: const BorderRadius.all(const Radius.circular(6.0))
            ),
            child: _txtPassword,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0),
            child:new Row(
              children: <Widget>[
                new Expanded(child: new RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: new Text("Login"),
                  onPressed: () {
                    print('Username: ${user.userName}, '
                        'email: ${user.email}'
                        ', password : ${user.password}');
                  },
                )),
              ],
            ) ,
          ),
        ],
      ),
    );
  }
}
