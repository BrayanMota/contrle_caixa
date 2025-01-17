import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final String subLabel;
  final String placeHolder;
  final String inputType; // Para determinar qual tipo de input
  final List<String>? selectOptions; // Para as opções do dropdown

  const CustomInput({
    super.key,
    required this.label,
    required this.subLabel,
    required this.placeHolder,
    this.inputType = 'text', // Por padrão é 'text'
    this.selectOptions, // Apenas necessário se for 'select'
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subLabel,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(height: 8),
          // Verifica o tipo de input para renderizar o campo adequado
          _buildInputField(context),
        ],
      ),
    );
  }

  // Função que cria o tipo de campo de acordo com o inputType
  Widget _buildInputField(BuildContext context) {
    if (inputType == 'date') {
      // Campo para selecionar a data
      return TextField(
        decoration: InputDecoration(
          hintText: placeHolder,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w300,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onTap: () async {
          FocusScope.of(context).requestFocus(FocusNode()); // Fecha o teclado
          final DateTime? picked = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2101),
          );
          if (picked != null) {
            // Atualize a data aqui se necessário
          }
        },
        readOnly: true, // Torna o campo somente leitura para o picker de data
      );
    } else if (inputType == 'select' && selectOptions != null) {
      // Campo dropdown
      return DropdownButtonFormField<String>(
        decoration: InputDecoration(
          hintText: placeHolder,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w300,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        items: selectOptions!
            .map(
              (option) => DropdownMenuItem<String>(
                value: option,
                child: Text(option),
              ),
            )
            .toList(),
        onChanged: (String? value) {
          // Ação quando o valor for selecionado
        },
        isExpanded: true, // Expande o dropdown para preencher o espaço
      );
    } else {
      // Campo de texto normal
      return TextField(
        decoration: InputDecoration(
          hintText: placeHolder,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w300,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );
    }
  }
}
