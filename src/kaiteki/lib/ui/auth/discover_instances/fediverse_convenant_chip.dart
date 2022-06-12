import 'package:flutter/material.dart';
import 'package:kaiteki/di.dart';
import 'package:kaiteki/utils/extensions.dart';
import 'package:mdi/mdi.dart';

class FediverseCovenantChip extends StatelessWidget {
  static const String _url =
      "https://github.com/pixeldesu/fediverse-friendly-moderation-covenant/blob/master/README.md";

  const FediverseCovenantChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.getL10n();
    final colorScheme = Theme.of(context).colorScheme;

    return ActionChip(
      onPressed: () => _onPressed(context),
      backgroundColor: colorScheme.secondary,
      label: Text(
        l10n.usesFediverseCovenant,
        style: TextStyle(color: colorScheme.onSecondary),
      ),
      avatar: Icon(
        Mdi.star,
        size: 20,
        color: colorScheme.onSecondary,
      ),
    );
  }

  Future<void> _onPressed(BuildContext context) async {
    await context.launchUrl(_url);
  }
}