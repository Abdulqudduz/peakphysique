// import 'package:flutter/material.dart';

// class CustomTextFormField extends StatefulWidget {
//   @override
//   State<CustomTextFormField> createState() => _CustomTextFormFieldState();
// }

// class _CustomTextFormFieldState extends State<CustomTextFormField> {
//   String? cityName;
//   bool cityIsValid = true;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(20.0),
//       child: TextFormField(
//         onChanged: (value) {
//           setState(() {
//             // cityName = value;
//             // cityIsValid = CityIsValid().checkCity(cityName ?? 'default city');
//           });
//         },
//         onSubmitted: (value) {
//           setState(() {
//             cityName = value;
//             cityIsValid = CityIsValid().checkCity(cityName ?? 'default city');

//             if (cityIsValid) {
//               Navigator.pop(context, cityName);
//             }
//           });
//         },
//         validator: (value) {
//           if (value == null || value.isEmpty) {
//             return 'User Name is required';
//           }
//           return null;
//         },
//         style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//               color: Colors.black,
//             ),
//         cursorColor: cityIsValid ? Colors.blue : Colors.red,
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: Colors.white,
//           icon: Icon(Icons.location_city),
//           prefixIcon: Icon(Icons.search),
//           hintText: 'Enter city name for weather',
//           errorText: cityIsValid ? null : 'Invalid city name',
//           errorStyle: TextStyle(color: Colors.red),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//             borderSide: BorderSide(
//               color: cityIsValid ? Colors.blue : Colors.red,
//               width: 2.0,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
