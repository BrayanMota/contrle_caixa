import 'package:flutter/material.dart';

import 'package:controle_caixa/pages/home.dart';
import 'package:controle_caixa/pages/list.dart';
import 'package:controle_caixa/pages/createCompany1.dart';
import 'package:controle_caixa/pages/createCompany2.dart';
import 'package:controle_caixa/pages/createServiceProvider1.dart';
import 'package:controle_caixa/pages/createServiceProvider2.dart';

class RoutePaths {
  static const String home = '/';
  static const String listCompanies = '/list_companies';
  static const String createCompany1 = '/create_company_1';
  static const String createCompany2 = '/create_company_2';
  static const String createServiceProvider1 = '/create_service_provider_1';
  static const String createServiceProvider2 = '/create_service_provider_2';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomePage(),
      listCompanies: (context) => const CompanyListPage(),
      createCompany1: (context) => const CompanyCreatePage1(),
      createCompany2: (context) => const CompanyCreatePage2(),
      createServiceProvider1: (context) => const ServiceProviderCreatePage1(),
      createServiceProvider2: (context) => const ServiceProviderCreatePage2(),
    };
  }
}
