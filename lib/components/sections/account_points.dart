import 'package:alubank/components/box_card_widget.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPointsWidget extends StatelessWidget {
  const AccountPointsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text("Pontos da conta", style: Theme.of(context).textTheme.titleMedium,),
          ),
          const BoxCardWidget(boxContent: _AccountPointsContent()),
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text("Pontos totais:")
          ),
          Text("3000", style: Theme.of(context).textTheme.bodyLarge,),
          const Padding(
            padding: EdgeInsets.only(bottom: 8, top: 8),
            child: ContentDivisionWidget(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text("Objetivos:", style: Theme.of(context).textTheme.titleMedium,),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: ColorDotWidget(color: ThemeColors.accountPoints["delivery"]),
              ),
              const Text("Entrega grátis: 1500pts")
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: ColorDotWidget(color: ThemeColors.accountPoints["streaming"]),
                ),
                const Text("1 mês de streaming: 30000")
              ],
            ),
          )
        ],
      ),
    );
  }
}