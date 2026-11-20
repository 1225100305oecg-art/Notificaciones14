import 'package:flutter/material.dart';

import '../dominio/mascota.dart';

/// Un ajolote hecho con círculos: rosa, con branquias a los lados.
class DibujoAjolote extends StatelessWidget {
  const DibujoAjolote({super.key, required this.humor});
  final Humor humor;

  String get _cara => switch (humor) {
        Humor.feliz => '',
        Humor.hambriento => '',
        Humor.famelico => '',
      };

  @override
  Widget build(BuildContext context) {
    const rosa = Color.fromARGB(255, 43, 3, 155);
    const rosaOscuro = Color.fromARGB(255, 90, 30, 255);
    Widget branquia(double angulo) => Transform.rotate(
          angle: angulo,
          child: Container(
            width: 46,
            height: 14,
            decoration: BoxDecoration(color: rosaOscuro, borderRadius: BorderRadius.circular(8)),
          ),
        );
    return SizedBox(
      width: 220,
      height: 180,
      child: Stack(alignment: Alignment.center, children: [
        Positioned(left: 6, top: 40, child: branquia(-0.5)),
        Positioned(left: 0, top: 70, child: branquia(0)),
        Positioned(left: 6, top: 100, child: branquia(0.5)),
        Positioned(right: 6, top: 40, child: branquia(0.5)),
        Positioned(right: 0, top: 70, child: branquia(0)),
        Positioned(right: 6, top: 100, child: branquia(-0.5)),
        Container(
          width: 140,
          height: 140,
          decoration: const BoxDecoration(color: rosa, shape: BoxShape.circle),
          alignment: Alignment.center,
          child: Text(_cara, style: const TextStyle(fontSize: 64)),
        ),
      ]),
    );
  }
}
