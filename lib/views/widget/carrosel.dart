import 'dart:async';
import 'package:flutter/material.dart';
import 'package:receitas_18_04/model/receita.dart';
import 'package:receitas_18_04/views/widget/cards_receitas.dart';

class Carrossel extends StatefulWidget {
  const Carrossel({super.key, required this.listCards});

  final List<Receita> listCards;

  @override
  State<Carrossel> createState() => _CarrosselState();
}

class _CarrosselState extends State<Carrossel> {
  late final PageController _pageController;
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _timer = Timer.periodic(const Duration(seconds: 10), (Timer timer) {
      if (_pageController.page == widget.listCards.length - 1) {
        _pageController.animateToPage(0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      } else {
        _pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: PageView(
            controller: _pageController,
            children: widget.listCards.map((receita) {
              return CardReceita(receita: receita);
            }).toList(),
          ),
        ),
        Positioned(
          left: -15,
          top: 0,
          bottom: 0,
          child: SizedBox(
            width: 50,
            height: 50,
            child: GestureDetector(
              onTap: () => _pageController.previousPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut),
              child: const Icon(Icons.arrow_left),
            ),
          ),
        ),
        Positioned(
          right: -15,
          top: 0,
          bottom: 0,
          child: SizedBox(
            width: 50,
            height: 50,
            child: GestureDetector(
              onTap: () => _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut),
              child: const Icon(Icons.arrow_right),
            ),
          ),
        ),
      ],
    );
  }
}
