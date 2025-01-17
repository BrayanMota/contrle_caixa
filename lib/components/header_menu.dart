import 'package:controle_caixa/routes.dart';
import 'package:flutter/material.dart';

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final String formattedDate = "${now.day.toString().padLeft(2, '0')}/"
        "${now.month.toString().padLeft(2, '0')}/"
        "${now.year.toString().substring(2)}"; // Formato dd/mm/yy

    return Container(
      padding: const EdgeInsets.all(8), // Menor espaçamento
      color: Colors.white,
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1200), // Limita a largura
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Foto e informações do usuário
              const Row(
                children: [
                  CircleAvatar(
                    radius: 20, // Foto menor
                    backgroundImage: NetworkImage(
                      'https://i.pinimg.com/236x/13/ec/74/13ec74ec871b4fa5aee18b6c05c7718c.jpg',
                    ),
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nome da Pessoa',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        'Cargo',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const VerticalDivider(
                width: 20,
                thickness: 1,
                indent: 20,
                endIndent: 1,
              ),
              // Barra de pesquisa
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Pesquisar...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: const EdgeInsets.all(8),
                    ),
                  ),
                ),
              ),
              const VerticalDivider(
                width: 20,
                thickness: 1,
                indent: 20,
                endIndent: 1,
              ),
              // Botões
              Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        RoutePaths.createServiceProvider1,
                      );
                    },
                    icon: const Icon(Icons.person),
                    label: const Text('Nova Prestação de Serviço'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        RoutePaths.createCompany1,
                      );
                    },
                    icon: const Icon(Icons.apartment),
                    label: const Text('Nova Empresa'),
                  ),
                ],
              ),
              const SizedBox(width: 8),
              const VerticalDivider(
                width: 20,
                thickness: 1,
                indent: 20,
                endIndent: 1,
              ),
              // Ícones de notificação e configuração
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {
                      // Ação para notificações
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {
                      // Ação para configurações
                    },
                  ),
                ],
              ),
              const SizedBox(width: 8),
              const VerticalDivider(
                width: 20,
                thickness: 1,
                indent: 20,
                endIndent: 1,
              ),
              // Data e calendário
              Column(
                children: [
                  const Row(
                    children: [
                      Icon(Icons.calendar_today, size: 16),
                      SizedBox(width: 4),
                      Text(
                        'Hoje',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    formattedDate,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
