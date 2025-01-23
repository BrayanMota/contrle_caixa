import 'package:controle_caixa/pages/base.dart';
import 'package:controle_caixa/routes.dart';
import 'package:controle_caixa/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 200.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Card Principal com fundo personalizado
              Container(
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: CustomColors.secondaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(24),
                child: Row(
                  children: [
                    // Informações da Empresa
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                backgroundImage: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png'), // Avatar da empresa
                              ),
                              SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Empresa BBS',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Ramo: Tecnologia',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                          Text(
                            'Balanço Total:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'R\$ 10.000,00',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Botões de Ações
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              RoutePaths.listEntries,
                            );
                          },
                          icon: const Icon(Icons.arrow_downward),
                          label: const Text('Entradas'),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              RoutePaths.listExits,
                            );
                          },
                          icon: const Icon(Icons.arrow_upward),
                          label: const Text('Saídas'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Área para gráfico
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: const SizedBox(
                  height: 200,
                  child: Center(
                    child: Text(
                      'Gráfico',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Lista de Dados
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Filtros
                  const Text(
                    'Atividades Recentes',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          FilterChip(
                            label: const Text('Todos'),
                            onSelected: (bool value) {},
                          ),
                          const SizedBox(width: 8),
                          FilterChip(
                            label: const Text('Pagos'),
                            onSelected: (bool value) {},
                          ),
                          const SizedBox(width: 8),
                          FilterChip(
                            label: const Text('Não pagos'),
                            onSelected: (bool value) {},
                          ),
                          const SizedBox(width: 8),
                          FilterChip(
                            label: const Text('Parcelados'),
                            onSelected: (bool value) {},
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 200,
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.search),
                                hintText: 'Buscar...',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Ação de filtro
                            },
                            icon: const Icon(Icons.filter_list),
                            label: const Text('Filtrar'),
                          ),
                          const SizedBox(width: 8),
                          DropdownButton<String>(
                            items: const [
                              DropdownMenuItem(
                                value: 'nome',
                                child: Text('Ordenar por Nome'),
                              ),
                              DropdownMenuItem(
                                value: 'data',
                                child: Text('Ordenar por Data'),
                              ),
                            ],
                            onChanged: (String? value) {
                              // Ação de ordenação
                            },
                            hint: const Text('Ordenar por'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Tabela de dados
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columnSpacing: 290,
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
                      const DataColumn(label: Text('Tipo')),
                      const DataColumn(label: Text('Data')),
                      const DataColumn(label: Text('Valor')),
                      const DataColumn(label: Text('Ações')),
                    ],
                    rows: List.generate(
                      10, // Exemplo com 10 linhas
                      (index) => DataRow(cells: [
                        const DataCell(Text('Empresa BBS')),
                        const DataCell(Text('Entrada')),
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
            ],
          ),
        ),
      ),
    );
  }
}
