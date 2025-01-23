import 'package:controle_caixa/pages/base.dart';
import 'package:controle_caixa/routes.dart';
import 'package:flutter/material.dart';

class ExitListPage extends StatelessWidget {
  const ExitListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Entrada
                      Text(
                        'Saída',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Acompanhe as saídas registradas no sistema.',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          RoutePaths.createExit,
                        );
                      },
                      child: const Text('Cadastrar'))
                ],
              ),

              // Filtros e Ordenação
              Row(
                children: [
                  // Campo de busca
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Buscar...',
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.filter_alt),
                          onPressed: () {
                            // Ação do filtro
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Ordenar por
                  DropdownButton<String>(
                    hint: const Text('Ordenar por'),
                    items: ['Nome', 'Data', 'Valor']
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      // Ação para ordenar
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Título e descrição
              const Text(
                'Gestão de todas as saídas',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                'Acompanhe e gerencie os detalhes das empresas parceiras, datas de entrada, tipo da empresa, forma de contratos e status de pagamentos de forma eficiente e organizada.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 16),

              // Tabela de dados
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columnSpacing: 400,
                    columns: [
                      DataColumn(
                        label: Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (value) {
                                // Selecionar todos
                              },
                            ),
                            const Text('Nome'),
                          ],
                        ),
                      ),
                      const DataColumn(label: Text('Data')),
                      const DataColumn(label: Text('Valor')),
                      const DataColumn(label: Text('Ações')),
                    ],
                    rows: List.generate(
                      10, // Exemplo com 10 linhas
                      (index) => DataRow(cells: [
                        const DataCell(
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Empresa BBS'),
                              Text(
                                'email@empresa.com',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const DataCell(Text('16/01/2025')),
                        const DataCell(Text('R\$1.000,00')),
                        DataCell(
                          IconButton(
                            icon: const Icon(Icons.more_vert),
                            onPressed: () {
                              // Ação do botão de mais opções
                            },
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),

              // Navegador de páginas
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      // Página anterior
                    },
                  ),
                  const SizedBox(width: 16),
                  TextButton(
                    onPressed: () {
                      // Página específica
                    },
                    child: const Text('1'),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      // Página específica
                    },
                    child: const Text('2'),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      // Página específica
                    },
                    child: const Text('3'),
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      // Próxima página
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _filterButton(String label, bool isSelected) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: isSelected ? Colors.blue : Colors.grey,
        ),
        backgroundColor: isSelected ? Colors.blue[50] : Colors.transparent,
      ),
      onPressed: () {
        // Ação do filtro
      },
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.blue : Colors.black,
        ),
      ),
    );
  }
}
