import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatefulWidget {
  const ButtonsScreen({super.key});
  static const String name = 'button_screen';
  @override
  State<ButtonsScreen> createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('buttons Screen')),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Wrap(crossAxisAlignment: WrapCrossAlignment.end, children: [
        ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
        const ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),
        ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.access_alarm),
            label: const Text('Elevated Icon')),
        FilledButton(onPressed: () {}, child: const Text('Filled')),
        FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.access_time_filled),
            label: const Text('Filled')),
        OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
        SizedBox(
          height: 10,
          width: 10,
        ),
        OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.outlined_flag_outlined),
            label: const Text('Outlined')),
        _CustonButton()
      ]),
    );
  }
}

class _CustonButton extends StatelessWidget {
  const _CustonButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Material(
      color: colors.primary,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Text(
            'Custom Button',
            style: TextStyle(color: Colors.lightBlue),
          ),
        ),
      ),
    );
  }
}
