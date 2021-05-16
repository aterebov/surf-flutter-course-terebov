import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/domain/sight_type.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_styles.dart';
import 'package:places/ui/screen/app_com.dart';
import 'package:places/ui/screen/res/themes.dart';

/// Данные фильтров и методы работы с ними
class FiltersData {
  List<SightType> selectedSightType = [];
  RangeValues currentRangeValues = const RangeValues(0, 10000);
  int selectedCount = 0;

  // Моковые данные текущего местоположения
  double _baseLat = 59.938406; // широта текущей позиции
  double _baseLon = 30.321156; // долгота текущей позиции

  FiltersData() {
    updateSelectedCount();
  }

// Обновить количество отобранных мест
  void updateSelectedCount() {
    selectedCount = _getSelectedSight().length;
  }

  // Очистить фильтры
  void clearFilters() {
    selectedSightType.clear();
    currentRangeValues = const RangeValues(0, 10000);
    updateSelectedCount();
  }

  // Обновить (инвертировать) выбор заданного типа места
  void updateSelectSightType(SightType sightType) {
    if (selectedSightType.contains(sightType))
      selectedSightType.remove(sightType);
    else
      selectedSightType.add(sightType);
    updateSelectedCount();
  }

  // Получить список отобранных по условиям фильтров мест
  List<Sight> _getSelectedSight() {
    List<Sight> _selectedSight = [];
    for (Sight sight in mocks) {
      if (selectedSightType.isEmpty ||
          (selectedSightType.isNotEmpty &&
              selectedSightType.contains(sight.type))) {
        if (_isSightNear(
            sight.lat, sight.lon, _baseLat, _baseLon, currentRangeValues.end)) {
          if (currentRangeValues.start == 0 ||
              !_isSightNear(sight.lat, sight.lon, _baseLat, _baseLon,
                  currentRangeValues.start)) {
            _selectedSight.add(sight);
          }
        }
      }
    }
    return _selectedSight;
  }

  // Позволяет определить, укладывается ли расстояние от базовой точки с
  // координатами <baseLat>, <baseLon> до искомой точки места с координатами
  // <sightLat>, <sightLon> в допустимое расстояние <radius>
  //
  // For such short distances, and when the accuracy doesn't have to be exact
  // to the centimeter, you can treat the surface of the earth as flat.
  // Calculate a conversion from degrees to meters (was: kilometers)
  // at the latitude of the center point, then the Pythagorean theorem
  // can be used to get the distance/
  // Note: The code doesn't take into consideration if you are passing
  // the 0/360 longitude. If that is the case, you would have to normalize
  // the longitudes first.
  bool _isSightNear(
    double sightLat, // Широта места
    double sightLon, // Долгота места
    double baseLat, // Широта базовой точки
    double baseLon, // Долгота базовой точки
    double radius, // допустимое расстояние в метрах
  ) {
    double ky = 40000 / 360 * 1000;
    double kx = cos(pi * baseLat / 180.0) * ky;
    double dx = (baseLon - sightLon).abs() * kx;
    double dy = (baseLat - sightLat).abs() * ky;
    return sqrt(dx * dx + dy * dy) <= radius;
  }
}

/// Экран фильтров
class FiltersScreen extends StatefulWidget {
  FiltersScreen({Key key}) : super(key: key);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  FiltersData _filtersData = new FiltersData();

  // callback для дочерних виджетов
  void refreshFiltersScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: (Theme.of(context).brightness == Brightness.dark)
          ? darkFiltersScreenTheme
          : lightFiltersScreenTheme,
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: FiltersScreenAppBar(
              filtersData: _filtersData,
              refreshParent: refreshFiltersScreen,
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  FiltersScreenTypeSightSelection(
                    filtersData: _filtersData,
                    refreshParent: refreshFiltersScreen,
                  ),
                  const SizedBox(height: 56),
                  FiltersScreenRangeSlider(
                    filtersData: _filtersData,
                    refreshParent: refreshFiltersScreen,
                  ),
                  Spacer(),
                  SvgElevatedButton(
                    onPressed: () {
                      print("Show button pressed");
                    },
                    label: filtersButtonShowText +
                        " (${_filtersData.selectedCount})",
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

/// AppBar экрана фильтров
class FiltersScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const FiltersScreenAppBar({
    Key key,
    @required FiltersData filtersData,
    @required Function refreshParent,
  })  : _filtersData = filtersData,
        _refreshParent = refreshParent,
        super(key: key);

  final FiltersData _filtersData;
  final Function _refreshParent;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Stack(
        children: [
          const SizedBox(height: 56, width: double.infinity),
          Positioned(
            left: 16,
            top: 16,
            child: Container(
              width: 24,
              height: 24,
              child: TextButton(
                onPressed: () {
                  print("Arrow button pressed");
                },
                style: TextButton.styleFrom(
                  primary: Theme.of(context).buttonColor,
                  padding: EdgeInsets.all(0),
                ),
                child: SvgIcon(iconSvgAssetName: "res/image/arrow.svg"),
              ),
            ),
          ),
          Positioned(
            right: 16,
            top: 18,
            child: Container(
              height: 24,
              child: TextButton(
                onPressed: () {
                  _filtersData.clearFilters();
                  _refreshParent();
                },
                child: Text(filtersButtonClearText),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      titleSpacing: 0.0,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56);
}

/// Выбор типов мест на экране фильтров
class FiltersScreenTypeSightSelection extends StatelessWidget {
  const FiltersScreenTypeSightSelection({
    Key key,
    @required FiltersData filtersData,
    @required Function refreshParent,
  })  : _filtersData = filtersData,
        _refreshParent = refreshParent,
        super(key: key);

  final FiltersData _filtersData;
  final Function _refreshParent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          child: Text(
            filtersTypeSightGroupTitleText,
            textAlign: TextAlign.left,
            style: textRegular12SlateGrey56,
          ),
        ),
        Container(
          width: double.infinity,
          height: 224,
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              runSpacing: 40,
              children: mockSightTypeStorage
                  .map((e) => TypeSwitch(
                        sightType: e,
                        isSelected: _filtersData.selectedSightType.contains(e),
                        onTap: () {
                          _filtersData.updateSelectSightType(e);
                          _refreshParent();
                        },
                      ))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

/// Виджет переключателя типа места для фильтра
class TypeSwitch extends StatelessWidget {
  const TypeSwitch({
    Key key,
    @required SightType sightType,
    @required bool isSelected,
    @required Function onTap,
  })  : _sightType = sightType,
        _isSelected = isSelected,
        _onTap = onTap,
        super(key: key);

  final SightType _sightType;
  final bool _isSelected;
  final Function _onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                    color: _isSelected
                        ? Theme.of(context).dividerColor.withOpacity(0.16)
                        : Theme.of(context).cardColor.withOpacity(0.16),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      _sightType.icon,
                      color: _isSelected
                          ? Theme.of(context).dividerColor
                          : Theme.of(context).cardColor,
                    ),
                  ),
                ),
                if (_isSelected)
                  Positioned(
                    right: -4,
                    bottom: -4,
                    child: SvgPicture.asset(
                      (Theme.of(context).brightness == Brightness.dark)
                          ? "res/image/tick_choice_dark.svg"
                          : "res/image/tick_choice_light.svg",
                    ),
                  )
              ],
            ),
            const SizedBox(height: 12),
            Container(
              height: 16,
              width: 96,
              child: Text(
                _sightType.name,
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.subtitle2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FiltersScreenRangeSlider extends StatefulWidget {
  const FiltersScreenRangeSlider({
    Key key,
    @required FiltersData filtersData,
    @required Function refreshParent,
  })  : _filtersData = filtersData,
        _refreshParent = refreshParent,
        super(key: key);

  // final String _rangeLabel;
  final FiltersData _filtersData;
  final Function _refreshParent;

  @override
  _FiltersScreenRangeSliderState createState() =>
      _FiltersScreenRangeSliderState();
}

/// Выбор диапазона расстояний на экране фильтров
class _FiltersScreenRangeSliderState extends State<FiltersScreenRangeSlider> {
  // Получить отображение диапазона расстояний
  String _getRangeLabel() {
    return "от ${widget._filtersData.currentRangeValues.start.toStringAsFixed(0)} до ${widget._filtersData.currentRangeValues.end.toStringAsFixed(0)} м";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                filtersRangeTitleText,
                style: Theme.of(context).primaryTextTheme.subtitle1,
              ),
              Text(
                _getRangeLabel(),
                style: textRegular16SlateGrey,
              ),
            ],
          ),
          Container(
            width: double.infinity,
            child: RangeSlider(
              values: widget._filtersData.currentRangeValues,
              min: 0,
              max: 10000,
              divisions: 100,
              onChanged: (RangeValues values) {
                setState(() {
                  widget._filtersData.currentRangeValues = values;
                });
              },
              onChangeEnd: (RangeValues values) {
                widget._filtersData.currentRangeValues = values;
                widget._filtersData.updateSelectedCount();
                widget._refreshParent();
              },
            ),
          ),
        ],
      ),
    );
  }
}
