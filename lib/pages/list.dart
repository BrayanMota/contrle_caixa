import 'package:controle_caixa/pages/base.dart';
import 'package:flutter/material.dart';

class CompanyListPage extends StatelessWidget {
  const CompanyListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      child: Scaffold(
        body: Column(
          children: [
            const SearchBar(),
            Expanded(
              child: CompanyTable(
                companies: [
                  {
                    "name": "Empresa A",
                    "cnpj": "00.000.000/0000-00",
                    "phone": "(63) 1234-5678"
                  },
                  {
                    "name": "Empresa B",
                    "cnpj": "11.111.111/1111-11",
                    "phone": "(63) 8765-4321"
                  },
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Adicionar ação de adicionar empresa
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Pesquisar empresa",
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}

class CompanyTable extends StatelessWidget {
  final List<Map<String, String>> companies;

  const CompanyTable({Key? key, required this.companies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text("Nome")),
        DataColumn(label: Text("CNPJ")),
        DataColumn(label: Text("Telefone")),
        DataColumn(label: Text("Ações")),
      ],
      rows: companies
          .map(
            (company) => DataRow(
              cells: [
                DataCell(Text(company["name"]!)),
                DataCell(Text(company["cnpj"]!)),
                DataCell(Text(company["phone"]!)),
                DataCell(Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        // Adicionar ação de editar
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        // Adicionar ação de excluir
                      },
                    ),
                  ],
                )),
              ],
            ),
          )
          .toList(),
    );
  }
}
