# Ajolotito Hambriento — Notificaciones en Flutter con TDD

Proyecto completo basado en el manual **Ajolotito Hambriento** (*Desarrollo Móvil Integral · UTNG*).

## Estructura del proyecto

- `lib/dominio/`: Lógica pura y reglas de negocio (`reloj.dart`, `mascota.dart`, `categoria.dart`, `mensajes.dart`, `politica.dart`, `payload.dart`, `planificador.dart`, `puerto.dart`, `almacen.dart`, `gestor_permiso.dart`, `servicio.dart`).
- `lib/infra/`: Adaptadores reales (`puerto_real.dart`, `almacen_prefs.dart`).
- `lib/presentacion/`: Estado y pantallas (`ajolote_vm.dart`, `dibujo_ajolote.dart`, `pantalla_ajolote.dart`, `pantalla_ajustes.dart`).
- `lib/app.dart` y `lib/main.dart`: Ciclo de vida e inicialización.
- `test/`: Suite completa de pruebas (`falsos.dart`, `mascota_test.dart`, `politica_payload_test.dart`, `planificador_test.dart`, `permiso_test.dart`, `servicio_test.dart`, `vm_test.dart`, `pantalla_test.dart`).

## Configuración de plataforma (Android / iOS)

Recuerda revisar los bloques de `AndroidManifest.xml`, `android/app/build.gradle.kts` (desugaring) e `ios/Runner/AppDelegate.swift` indicados en la Ronda 1 del manual antes de compilar en dispositivo físico o emulador.

## Ejecutar pruebas y app

```bash
flutter pub get
flutter test
flutter run
```
