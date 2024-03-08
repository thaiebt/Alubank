import 'package:alubank/components/box_card_widget.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class RecentActivityWidget extends StatelessWidget {
  const RecentActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: BoxCardWidget(
        boxContent: _RecentActivityContent()),
      );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: ColorDotWidget(color: ThemeColors.recentActivity["spent"])),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Saída"),
                    Text("\$9900.97", style: Theme.of(context).textTheme.bodyLarge,)
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4), 
                  child: ColorDotWidget(color: ThemeColors.recentActivity["income"]),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Entrada"),
                    Text("\$890.90", style: Theme.of(context).textTheme.bodyLarge,)
                  ],
                )
              ],
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 9),
          child: Text("Limite de gastos: \$432.90"),
        ),
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8)
          ),
          child: const LinearProgressIndicator(
            value: 0.3,
            minHeight: 8,
            color: ThemeColors.primaryColor,
            
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 16),
          child: ContentDivisionWidget(),
        ),
        const Text("Esse mês você gastou \$1500.00 com jogos. tente baixar esse custo!"),
        TextButton(onPressed: (){}, child: Text("Diga-me como!".toUpperCase(), style: TextStyle(fontSize: 16, color: ThemeColors.primaryColor),))
      ],
    );
  }
}