import 'package:controle_caixa/components/custom_inputs.dart';
import 'package:controle_caixa/pages/base.dart';
import 'package:controle_caixa/routes.dart';
import 'package:controle_caixa/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class CompanyCreatePage2 extends StatelessWidget {
  const CompanyCreatePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Título principal
                const Text(
                  'Cadastro de uma nova empresa/cliente',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                // Texto de apoio (pequeno)
                const Text(
                  'Informações essenciais para registrar uma nova empresa ou cliente no sistema',
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
                          '1. Informações da Empresa/Cliente',
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
                        label: Text(
                          '2. Informações de Pagamento',
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
                                'Informações Gerais',
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
                                    label: 'Forma de Pagamento *',
                                    subLabel: 'Métodos aceitos de pagamento',
                                    placeHolder: 'Cartão de Crédito',
                                    inputType: 'select',
                                    selectOptions: const [
                                      'Cartão de Crédito',
                                      'Cartão de Débito',
                                      'Pix',
                                      'Boleto'
                                    ],
                                  ),
                                  const SizedBox(width: 16),
                                  // Nome Fantasia
                                  CustomInput(
                                    label: 'Valor dos Honorários *',
                                    subLabel:
                                        'Definição dos custos do serviço.',
                                    placeHolder: 'R\$1.000,00',
                                  ),
                                  const SizedBox(width: 16),
                                  // Nome Fantasia
                                  CustomInput(
                                    label: 'Tipo de Moeda',
                                    subLabel:
                                        'Determinar a moeda para recebimentos.',
                                    placeHolder: 'Real',
                                    inputType: 'select',
                                    selectOptions: const [
                                      'Real',
                                      'Euro',
                                      'Dólar',
                                      'Peso',
                                      'Yene'
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              // Linha com inputs
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // CPF/CNPJ
                                  CustomInput(
                                    label: 'Data de Pagamentos *',
                                    subLabel:
                                        'Dia dos pagamento para contas ou serviços.',
                                    placeHolder: '1 a 10',
                                    inputType: 'select',
                                    selectOptions: const [
                                      '1 a 10',
                                      '11 a 20',
                                      '21 a final do mês'
                                    ],
                                  ),
                                  const SizedBox(width: 16),
                                  // Responsável
                                  CustomInput(
                                    label: 'Dia do inicio do Pagamento *',
                                    subLabel:
                                        'O Dia que o cliente vai começar o pagamento.',
                                    placeHolder: '10/10/2024',
                                    inputType: 'date',
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
                                'Dados Bancários',
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
                                    label: 'Nome do Banco da Empresa',
                                    subLabel:
                                        'Nome da instituição financeira da empresa.',
                                    placeHolder: 'Banco do Brasil',
                                  ),
                                  const SizedBox(width: 16),
                                  // Nome Fantasia
                                  CustomInput(
                                    label: 'Nome do Banco que vai Receber',
                                    subLabel:
                                        'Nome da sua instituição financeira.',
                                    placeHolder: 'Caixa Econômica Federal',
                                  ),
                                  const SizedBox(width: 16),
                                  CustomInput(
                                    label: 'CPF/CNPJ do Titular da Conta',
                                    subLabel:
                                        'Para garantir a compatibilidade de dados.',
                                    placeHolder: '07.007.165/0028-54',
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
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    child: const Text(
                                      'Etapa Anterior',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                        RoutePaths.listCompanies,
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          CustomColors.secondaryColor,
                                    ),
                                    child: const Text(
                                      'Continuar',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
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
