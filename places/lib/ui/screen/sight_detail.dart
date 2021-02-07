import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/text_styles.dart';

class SightDetail extends StatelessWidget {
  final Sight sight;

  SightDetail({this.sight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 360,
                    color: Colors.lightBlueAccent[100],
                  ),
                  Positioned(
                    left: 16,
                    top: 36,
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            sight.name,
                            style: textSightDetailName,
                          ),
                          Container(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                sight.type,
                                style: textSightDetailType,
                              ),
                              Container(width: 16),
                              // Заглушка - пока непонятно как получать эти данные - может дальше будет в курсе
                              // временно - поэтому не унесено в текстовые константы
                              Text(
                                "Закрыто до 9:00",
                                style: textSightDetailWorktime,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 24.0),
                      child: Text(
                        sight.detail,
                        style: textSightDetailDetail,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 24.0),
                      child: TempButtonBuildRoute(),
                    ),
                    Container(
                      height: 1,
                      margin: const EdgeInsets.only(top: 24.0),
                      color: Color(0xFF7C7E92),
                    ),
                    Container(
                      height: 48,
                      margin: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TempButtonPlan(),
                          ),
                          Expanded(
                            child: TempButtonAddFavorites(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Заглушка кнопки Построить маршрут
// временно - поэтому текстовые строки и стили не вынесены в отдельные файлы
class TempButtonBuildRoute extends StatelessWidget {
  const TempButtonBuildRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Color(0xFF4CAF50),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
          Container(width: 10),
          Text(
            "ПОСТРОИТЬ МАРШРУТ",
            style: const TextStyle(
              fontStyle: FontStyle.normal,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 14,
              height: 18.0 / 14.0,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}

// Заглушка кнопки Запланировать
// временно - поэтому текстовые строки и стили не вынесены в отдельные файлы
class TempButtonPlan extends StatelessWidget {
  const TempButtonPlan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF7C7E92),
                width: 2,
              ),
            ),
          ),
          Container(width: 10),
          Text(
            "Запланировать",
            style: const TextStyle(
              fontStyle: FontStyle.normal,
              color: Color(0xFF7C7E92),
              fontWeight: FontWeight.w700,
              fontSize: 14,
              height: 18.0 / 14.0,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}

// Заглушка кнопки В избранное
// временно - поэтому текстовые строки и стили не вынесены в отдельные файлы
class TempButtonAddFavorites extends StatelessWidget {
  const TempButtonAddFavorites({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF3B3E5C),
                width: 2,
              ),
            ),
          ),
          Container(width: 10),
          Text(
            "В избранное",
            style: const TextStyle(
              fontStyle: FontStyle.normal,
              color: Color(0xFF3B3E5C),
              fontWeight: FontWeight.w700,
              fontSize: 14,
              height: 18.0 / 14.0,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
