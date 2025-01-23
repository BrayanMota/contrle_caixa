import 'package:flutter/material.dart';

import 'package:controle_caixa/apps/entrie/pages/list_entries.dart';
import 'package:controle_caixa/apps/exit/pages/create_exit.dart';
import 'package:controle_caixa/apps/exit/pages/list_exits.dart';
import 'package:controle_caixa/pages/home.dart';
import 'package:controle_caixa/apps/entrie/pages/create_company1.dart';
import 'package:controle_caixa/apps/entrie/pages/create_company2.dart';
import 'package:controle_caixa/apps/entrie/pages/create_service_provider1.dart';
import 'package:controle_caixa/apps/entrie/pages/create_service_provider2.dart.dart';

class RoutePaths {
  static const String home = '/';
  static const String listExits = '/list_exits';
  static const String createExit = '/create_exit';
  static const String listEntries = '/list_entries';
  static const String createCompany1 = '/create_company_1';
  static const String createCompany2 = '/create_company_2';
  static const String createServiceProvider1 = '/create_service_provider_1';
  static const String createServiceProvider2 = '/create_service_provider_2';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomePage(),
      listExits: (context) => const ExitListPage(),
      createExit: (context) => const ExitCreatePage(),
      listEntries: (context) => EntrieListPage(),
      createCompany1: (context) => const CompanyCreatePage1(),
      createCompany2: (context) => const CompanyCreatePage2(),
      createServiceProvider1: (context) => const ServiceProviderCreatePage1(),
      createServiceProvider2: (context) => const ServiceProviderCreatePage2(),
    };
  }
}
