import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackBarScreen({super.key});
  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackba = SnackBar(
      content: const Text('New Context'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackba);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas Seguro!'),
        content: const Text('ahora se cerrara'),
        actions: [
          TextButton.icon(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.cancel_presentation),
              label: const Text('Cancelar')),
          TextButton.icon(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.approval),
              label: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    Text(
                        'Dolore cupidatat nostrud pariatur sunt minim voluptate velit officia quis. Et nisi et fugiat eu deserunt in esse commodo dolore velit reprehenderit sint tempor. Dolore ea ullamco exercitation proident non pariatur incididunt. Labore nisi tempor tempor consectetur fugiat est ullamco veniam tempor aliquip. Magna minim eu commodo anim commodo adipisicing duis. In in aute ullamco id. Occaecat sunt incididunt officia quis anim officia officia nisi.')
                  ]);
                },
                child: Text('licenses ')),
            FilledButton.tonal(
                onPressed: () {
                  openDialog(context);
                },
                child: Text('dialogs show ')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showCustomSnackbar(context),
          icon: const Icon(Icons.remove_red_eye_outlined),
          label: const Text('show SnackBar')),
    );
  }
}
