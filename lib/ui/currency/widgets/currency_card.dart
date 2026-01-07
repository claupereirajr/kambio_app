import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String label;
  final String selectedCurrency;
  final String amount;
  final List<String> availableCurrencies;
  final ValueChanged<String>? onCurrencyChanged;
  final ValueChanged<String>? onAmountChanged;
  final bool isInput;

  const CurrencyCard({
    super.key,
    required this.label,
    required this.selectedCurrency,
    required this.amount,
    required this.availableCurrencies,
    this.onCurrencyChanged,
    this.onAmountChanged,
    this.isInput = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.deepOrange.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              DropdownButton<String>(
                value: selectedCurrency,
                underline: const SizedBox(),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: availableCurrencies.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) onCurrencyChanged?.call(value);
                },
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 12),
              Expanded(
                child: isInput
                    ? TextField(
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          isDense: true,
                        ),
                        onChanged: onAmountChanged,
                        controller: TextEditingController(text: amount)
                          ..selection = TextSelection.fromPosition(
                            TextPosition(offset: amount.length),
                          ),
                      )
                    : Text(
                        amount,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
