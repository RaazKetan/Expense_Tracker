// Its a normal class and it will not extend statless or stateflul
// widget, It will just be a blueprint for a normal class object
// to use in my dart code. Its not a widget

//Define how a transaction should look like
import 'package:flutter/foundation.dart';
//this foundation is the file  that exposes refractors like @required
//We can import material.dart too bcoz its internaly based on foundation.dart

class Transaction
{
 final String? id;
 final String? title;
 final double? amount;
 final DateTime? date;
 // Adding named argument
 Transaction({
   @required this.id,
 @required this.title,
   @required this.amount,
 @required this.date
 });
}