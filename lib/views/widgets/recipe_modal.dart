import 'package:flutter/material.dart';

class RecipeModal extends StatelessWidget {
  final List preparationSteps;

  // constructor
  RecipeModal({this.preparationSteps});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: new Container(
          decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(20.0),
                topRight: const Radius.circular(20.0),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 10.0, spreadRadius: 0.0)
              ]),
          alignment: Alignment.topLeft,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 10),
                    child: Text(
                      "Recipe Name",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Colors.black87),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                    color: const Color(0xfff8f8f8),
                    width: 1,
                  ))),
                  // content goes here
                  child: ListView.builder(
                      itemCount: preparationSteps.length,
                      itemBuilder: (context, index) {
                        return Text(preparationSteps[index]);
                      }))
            ],
          )),
    );
  }
}
