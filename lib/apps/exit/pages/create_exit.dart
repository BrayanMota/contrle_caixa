import 'package:controle_caixa/components/custom_inputs.dart';
import 'package:controle_caixa/pages/base.dart';
import 'package:controle_caixa/routes.dart';
import 'package:controle_caixa/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class ExitCreatePage extends StatelessWidget {
  const ExitCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Título principal
                const Text(
                  'Saída Financeira',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                // Texto de apoio (pequeno)
                const Text(
                  'Informações essenciais para informar o tipo de saída financeira da empresa',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Item 1: Informações da Empresa/Cliente
                    GestureDetector(
                      onTap: () {
                        // Ação para navegar para a página de informações da empresa
                      },
                      child: const Chip(
                        label: Text(
                          '1. Informações de Saída/Financeira',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        backgroundColor: CustomColors.secondaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 100.0,
                        right: 100,
                        bottom: 50,
                      ),
                      child: Column(
                        children: [
                          // Card grande com texto centralizado
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            width: double.infinity,
                            child: const Center(
                              child: Text(
                                'Informações de Pagamento',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          // Inputs
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomInput(
                                label: 'Tipo de Saída *',
                                subLabel: 'Informe o tipo de saída.',
                                placeHolder: 'Conta de Luz',
                              ),
                              SizedBox(width: 16),
                              CustomInput(
                                label: 'Data *',
                                subLabel: 'Informe a Data de Saída.',
                                placeHolder: '16/01/2025',
                                inputType: 'date',
                              ),
                              SizedBox(width: 16),
                              CustomInput(
                                label: 'Valor de Pagamento *',
                                subLabel: 'Informe o Valor Pago.',
                                placeHolder: 'R\$ 100,00',
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Campo de Preenchimento Obrigatório *',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed(
                                    RoutePaths.listExits,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: CustomColors.secondaryColor,
                                ),
                                child: const Text(
                                  'Concluir',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
