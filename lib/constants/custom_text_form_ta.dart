import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class CustomTextFormTA extends StatefulWidget {

  @override
  _CustomTextFormTAState createState() => _CustomTextFormTAState();
}

class _CustomTextFormTAState extends State<CustomTextFormTA> {
  final TextEditingController _typeAheadController = TextEditingController();

  List<String> jobsList = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      alignment: Alignment.center,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: TypeAheadField(
        textFieldConfiguration: TextFieldConfiguration(
            cursorColor: Colors.grey,
            controller: _typeAheadController,
            autofocus: false,
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
            decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Color(0xff767676),
                ),
                suffixIcon: InkWell(
                    onTap: () => _typeAheadController.text = "",
                    child: Icon(
                      Icons.close,
                      color: Colors.grey,
                    )),
                /*prefixIcon: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Image.asset(
                                            "assets/images/ic_search.png"),
                                      ),*/
                prefixIconConstraints:
                BoxConstraints(minHeight: 20, maxHeight: 22)
              //Icon(Icons.search, color: Color(0xff767676)),
            ),
            onChanged: (value) {}),
        suggestionsCallback: (pattern) async {
          return await UserNameData.getSuggestions(pattern);
        },
        itemBuilder: (context, suggestion) {
          return ListTile(
            title: Text(suggestion),
          );
        },
        onSuggestionSelected: (suggestion) {
          setState(() {
            _typeAheadController.text = suggestion;
            // userPhone = suggestion.mobile;
            // userName = suggestion.name;
            // userStatus = suggestion.status;
          });
        },
      ),
    );
  }
}

class UserNameData {
  static final List<String> states = [
    'FURLEEN SINGH',
    'VIKAS GUPTA',
    'ABHISHEK GUPTA',
    'BHUVNESH MATHUR',
    'ROHIT SHARMA',
    'ANKIT SHARMA',
    'JASPREET SINGH',
    'GHANENDRA THAKUR',
    'BHUPESH SINGH',
    'RAJEEV RATHORE',
    'NISCHAL VERMA',
    'VIVEK SINGH',
    'RISHAB THAKUR',
    'ANIL MATHUR',
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = List();
    matches.addAll(states);
    matches.retainWhere(
          (s) => s.toLowerCase().contains(
        query.toLowerCase(),
      ),
    );
    return matches;
  }
}
