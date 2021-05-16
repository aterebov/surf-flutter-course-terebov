import 'package:flutter/cupertino.dart';
import 'package:places/domain/sight.dart';
import 'package:places/domain/sight_type.dart';
import 'package:places/ui/res/assets.dart';

// Заглушка с тестовыми данными мест
final List mocks = [
  Sight(
    name: 'Пряности и радости',
    lat: 59.958406,
    lon: 30.321156,
    // url: 'https://ginza.ru/spb',
    url:
        'https://ginza.ru/images/w1500/20160530/e7aa74ed91595c1f0fa918137961555f.jpg',
    detail:
        'На двух этажах «Пряностей» нарядно и по-домашнему. Уютно и тепло во всех залах: и в крытой мансарде среди разноцветных стульев под вьющейся зеленью, и в каминном зале, где от пола до потолка шкафы ломятся от вина, и в большом зале, где в канареечных горшках расселись фикусы, а в нишах поместились важные синие попугаи.',
    type: mockSightTypeStorage[1], // ресторан
  ),
  Sight(
    name: 'Наутилус Инн',
    lat: 59.922061,
    lon: 30.416886,
    // url: 'https://www.nautilus-inn.ru/',
    url:
        'https://www.nautilus-inn.ru/upload/medialibrary/c41/c41357734bb6da52721846c2a28ae401.jpg',
    detail:
        'Этот 3-звездочный отель находится в центре Санкт-Петербурга, всего в 10 минутах езды от Невского проспекта. К услугам гостей ресторан, оформленный в морском стиле, тренажерный зал и салон красоты.',
    type: mockSightTypeStorage[0], // отель
  ),
  Sight(
    name: 'Музей железных дорог России',
    lat: 59.905666,
    lon: 30.297802,
    // url: 'https://rzd-museum.ru/',
    url:
        'https://rzd-museum.ru/uploads/about-us/2/dsfvIeOyX7_oSfnhlEG5NL_ZSTRoXWVp.jpg',
    detail:
        'Наш музейный комплекс — главный железнодорожный музей России и один из крупнейших музеев железных дорог в мире. Торжественное открытие, приуроченное к 180-летию железных дорог России, состоялось 30 октября 2017 года.',
    type: mockSightTypeStorage[4], // музей
  ),
  Sight(
    name: 'Летний сад',
    lat: 59.950482,
    lon: 30.348966,
    // url: 'https://rusmuseum.ru/summer-garden/',
    url: 'https://rusmuseum.ru/upload/medialibrary/ca6/summer-garden.jpg',
    detail:
        'Летний сад — любимое детище Петра I, жемчужина в парковом ожерелье Петербурга.',
    type: mockSightTypeStorage[2], // особое место
  ),
];

// Заглушка с тестовыми данными типов мест
List mockSightTypeStorage = [
  SightType(name: 'Отель', icon: icon_hotel),
  SightType(name: 'Ресторан', icon: icon_restourant),
  SightType(name: 'Особое место', icon: icon_other),
  SightType(name: 'Парк', icon: icon_park),
  SightType(name: 'Музей', icon: icon_museum),
  SightType(name: 'Кафе', icon: icon_cafe)
];
