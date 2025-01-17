import 'package:controle_caixa/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomThemeData {
  ThemeData themeData() {
    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: CustomColors.primaryColor,
          foregroundColor: Colors.black, // Cor do texto
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

// class CustomThemeData {
//   ThemeData themeData() {
//     return ThemeData(
//       primaryColor: CustomColors.primaryColor,
//       scaffoldBackgroundColor: Colors.white,
//       fontFamily: 'Roboto', // Fonte global opcional

//       // Estilo para ElevatedButton
//       elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ElevatedButton.styleFrom(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           backgroundColor: CustomColors.primaryColor,
//           foregroundColor: Colors.white, // Cor do texto
//           textStyle: const TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 14,
//           ),
//         ),
//       ),

//       // Estilo para OutlinedButton
//       outlinedButtonTheme: OutlinedButtonThemeData(
//         style: OutlinedButton.styleFrom(
//           side: BorderSide(color: CustomColors.primaryColor, width: 2),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           foregroundColor: CustomColors.primaryColor,
//         ),
//       ),

//       // Estilo para TextButton
//       textButtonTheme: TextButtonThemeData(
//         style: TextButton.styleFrom(
//           foregroundColor: CustomColors.primaryColor,
//           textStyle: const TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 14,
//           ),
//         ),
//       ),

//       // Estilo para AppBar
//       appBarTheme: AppBarTheme(
//         backgroundColor: CustomColors.primaryColor,
//         titleTextStyle: const TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//           fontSize: 18,
//         ),
//         iconTheme: const IconThemeData(
//           color: Colors.white,
//         ),
//       ),

//       // Estilo para TextField
//       inputDecorationTheme: InputDecorationTheme(
//         filled: true,
//         fillColor: Colors.grey[200],
//         contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide(
//             color: CustomColors.primaryColor,
//           ),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: Colors.grey,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide(
//             color: CustomColors.primaryColor,
//             width: 2,
//           ),
//         ),
//         hintStyle: const TextStyle(
//           color: Colors.grey,
//         ),
//       ),
//     );
//   }
// }

