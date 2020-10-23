import 'package:flutter/material.dart';
import 'package:healthplus/components/form_error.dart';
import 'package:healthplus/constants.dart';
import '../components/default_button.dart';
import 'package:healthplus/size_config.dart';

class Appointment extends StatefulWidget {
  static String routeName = '/appointment-page';

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;
  String labelText;
  String password;
  bool remember = false;
  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Book an Appointment"),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                onSaved: (newValue) => password = newValue,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    removeError(error: kPassNullError);
                  } else if (value.length >= 8) {
                    removeError(error: kShortPassError);
                  }
                  return null;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    addError(error: kPassNullError);
                    return "";
                  } else if (value.length < 8) {
                    addError(error: kShortPassError);
                    return "";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter your name",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(Icons.account_box),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                onSaved: (newValue) => email = newValue,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    removeError(error: kEmailNullError);
                  } else if (emailValidatorRegExp.hasMatch(value)) {
                    removeError(error: kInvalidEmailError);
                  }
                  return null;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    addError(error: kEmailNullError);
                    return "";
                  } else if (!emailValidatorRegExp.hasMatch(value)) {
                    addError(error: kInvalidEmailError);
                    return "";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              TextFormField(
                obscureText: true,
                onSaved: (newValue) => password = newValue,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    removeError(error: kPassNullError);
                  } else if (value.length >= 8) {
                    removeError(error: kShortPassError);
                  }
                  return null;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    addError(error: "Please Enter an Address");
                    return "";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Address",
                  hintText: "Enter your address",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(Icons.location_city),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              TextFormField(
                obscureText: true,
                onSaved: (newValue) => password = newValue,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    removeError(error: kPassNullError);
                  } else if (value.length >= 8) {
                    removeError(error: kShortPassError);
                  }
                  return null;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    addError(error: "Please Enter an Address");
                    return "";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Date",
                  hintText: "Enter Date",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(Icons.calendar_today),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              FormError(errors: errors),
              SizedBox(height: getProportionateScreenHeight(20)),
              DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
