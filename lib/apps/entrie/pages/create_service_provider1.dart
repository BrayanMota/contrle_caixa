import 'package:controle_caixa/components/custom_inputs.dart';
import 'package:controle_caixa/pages/base.dart';
import 'package:controle_caixa/routes.dart';
import 'package:controle_caixa/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class ServiceProviderCreatePage1 extends StatelessWidget {
  const ServiceProviderCreatePage1({super.key});

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
                  'Adicionar Prestação de Serviço',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                // Texto de apoio (pequeno)
                const Text(
                  'Informações essenciais para registrar uma nova prestação de serviço no sistema',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Item 1: Informações da Prestação de Serviço
                    GestureDetector(
                      onTap: () {
                        // Ação para navegar para a página de informações da empresa
                      },
                      child: const Chip(
                        label: Text(
                          '1. Informações da Prestação de Serviço',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        backgroundColor: CustomColors.secondaryColor,
                      ),
                    ),
                    const SizedBox(width: 20),
                    // Item 2: Informações de Pagamento
                    GestureDetector(
                      onTap: () {
                        // Ação para navegar para a página de informações de pagamento
                      },
                      child: const Chip(
                        label: Text('2. Informações de Pagamento'),
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
                                'Informações Básicas do Tomador de Serviço',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          // Inputs
                          Column(
                            children: [
                              // Linha com inputs
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Nome da Empresa/Cliente
                                  CustomInput(
                                    label: 'Tomador de Serviço *',
                                    subLabel: 'Escreva o nome/razão social.',
                                    placeHolder: 'Tia cotinha',
                                  ),
                                  const SizedBox(width: 16),
                                  // CPF/CNPJ
                                  CustomInput(
                                    label: 'CFP/CNPJ do Tomador *',
                                    subLabel:
                                        'Número de identificação jurídica do tomador.',
                                    placeHolder: '07.007.165/0028-54',
                                  ),
                                  const SizedBox(width: 16),
                                  // Nome Fantasia
                                  CustomInput(
                                    label: 'Tipo de Prestação de Serviço',
                                    subLabel: 'Selecione o tipo de serviço.',
                                    placeHolder: 'Imposto de Renda',
                                    inputType: 'select',
                                    selectOptions: const ['Imposto de Renda'],
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // Contato
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            width: double.infinity,
                            child: const Center(
                              child: Text(
                                'Contato',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          // Inputs
                          Column(
                            children: [
                              // Linha com inputs
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Nome da Empresa/Cliente
                                  CustomInput(
                                    label: 'E-mail *',
                                    subLabel: 'Digite o e-mail do tomador.',
                                    placeHolder: 'empresabbs@gmail.com',
                                  ),
                                  const SizedBox(width: 16),
                                  // Nome Fantasia
                                  CustomInput(
                                    label: 'Telefone Comercial *',
                                    subLabel:
                                        'Telefone fixo ou celular do tomador.',
                                    placeHolder: '99999-999',
                                  ),
                                  const SizedBox(width: 16),
                                  CustomInput(
                                    label: 'Telefone Comercial 2',
                                    subLabel:
                                        'Telefone fixo ou celular do tomador.',
                                    placeHolder: '99999-999',
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                            ],
                          ),
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
                                    RoutePaths.createServiceProvider2,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: CustomColors.secondaryColor,
                                ),
                                child: const Text(
                                  'Continuar',
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
