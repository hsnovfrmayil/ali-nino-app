import 'package:alinino/pages/compass/compas_common/discover/discover_compass.dart';
import 'package:alinino/pages/compass/compas_common/read_follow/read_follow_compass.dart';
import 'package:alinino/pages/compass/compas_common/subject/subject_compas.dart';
import 'package:alinino/pages/compass/compas_common/what_read/what_read_compas.dart';
import 'package:alinino/pages/compass/compass_widget/text_field_compas.dart';
import 'package:flutter/material.dart';

class CompasPage extends StatelessWidget {
  const CompasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Text(
                  'Kesfet',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Tab(
                child: Text(
                  'Konular',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Tab(
                child: Text(
                  'Ne Okusam?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Tab(
                child: Text(
                  'Okur Takip Onerileri',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          title: const TextFieldCompasWidget(),
        ),
        body: const TabBarView(
          children: [
            DiscoverCompas(),
            SubjectCompas(),
            WhatReadCompas(),
            ReadFollowCompas(),
          ],
        ),
      ),
    );
  }
}
