import 'package:flutter/material.dart';
import 'package:kambio_app/config/dependencies.dart';
import 'package:kambio_app/ui/currency/view_models/currency_view_model.dart';
import 'package:kambio_app/ui/currency/widgets/app_bar.dart';
import 'package:kambio_app/ui/currency/widgets/currency_card.dart';
import 'package:kambio_app/ui/currency/widgets/swap_button.dart';

class CurrencyPage extends StatefulWidget {
  const CurrencyPage({super.key});

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  final _keyRefreshTop = GlobalKey<RefreshIndicatorState>();
  final homeViewModel = injector.get<CurrencyViewModel>();

  final List<String> _availableCurrencies = [
    'USD',
    'BRL',
    'CAD',
    'CNY',
    'EUR',
    'JPY',
    'AED',
    'AFN',
    'ALL',
    'AMD',
    'ANG',
    'AOA',
    'ARS',
    'AUD',
    'AWG',
    'AZN',
    'BAM',
    'BBD',
    'BDT',
    'BGN',
    'BHD',
    'BIF',
    'BMD',
    'BND',
    'BOB',
    'BSD',
    'BTN',
    'BWP',
    'BYN',
    'BZD',
    'CDF',
    'CHF',
    'CLF',
    'CLP',
    'CNH',
    'COP',
    'CRC',
    'CUP',
    'CVE',
    'CZK',
    'DJF',
    'DKK',
    'DOP',
    'DZD',
    'EGP',
    'ERN',
    'ETB',
    'FJD',
    'FKP',
    'FOK',
    'GBP',
    'GEL',
    'GGP',
    'GHS',
    'GIP',
    'GMD',
    'GNF',
    'GTQ',
    'GYD',
    'HKD',
    'HNL',
    'HRK',
    'HTG',
    'HUF',
    'IDR',
    'ILS',
    'IMP',
    'INR',
    'IQD',
    'IRR',
    'ISK',
    'JEP',
    'JMD',
    'JOD',
    'KES',
    'KGS',
    'KHR',
    'KID',
    'KMF',
    'KRW',
    'KWD',
    'KYD',
    'KZT',
    'LAK',
    'LBP',
    'LKR',
    'LRD',
    'LSL',
    'LYD',
    'MAD',
    'MDL',
    'MGA',
    'MKD',
    'MMK',
    'MNT',
    'MOP',
    'MRU',
    'MUR',
    'MVR',
    'MWK',
    'MXN',
    'MYR',
    'MZN',
    'NAD',
    'NGN',
    'NIO',
    'NOK',
    'NPR',
    'NZD',
    'OMR',
    'PAB',
    'PEN',
    'PGK',
    'PHP',
    'PKR',
    'PLN',
    'PYG',
    'QAR',
    'RON',
    'RSD',
    'RUB',
    'RWF',
    'SAR',
    'SBD',
    'SCR',
    'SDG',
    'SEK',
    'SGD',
    'SHP',
    'SLE',
    'SLL',
    'SOS',
    'SRD',
    'SSP',
    'STN',
    'SYP',
    'SZL',
    'THB',
    'TJS',
    'TMT',
    'TND',
    'TOP',
    'TRY',
    'TTD',
    'TVD',
    'TWD',
    'TZS',
    'UAH',
    'UGX',
    'UYU',
    'UZS',
    'VES',
    'VND',
    'VUV',
    'WST',
    'XAF',
    'XCD',
    'XCG',
    'XDR',
    'XOF',
    'XPF',
    'YER',
    'ZAR',
    'ZMW',
    'ZWG',
    'ZWL',
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      homeViewModel.getCurrencyCommand.execute(homeViewModel.fromCurrency);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: homeViewModel,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(64.0),
            child: AppBarWidget(),
          ),
          body: RefreshIndicator(
            key: _keyRefreshTop,
            onRefresh: () async => homeViewModel.getCurrencyCommand.execute(
              homeViewModel.fromCurrency,
            ),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        children: [
                          CurrencyCard(
                            label: 'DE',
                            selectedCurrency: homeViewModel.fromCurrency,
                            amount: homeViewModel.amount.toString(),

                            availableCurrencies: _availableCurrencies,
                            isInput: true,
                            onAmountChanged: (value) {
                              final double? val = double.tryParse(value);
                              if (val != null) homeViewModel.setAmount(val);
                            },
                            onCurrencyChanged: homeViewModel.setFromCurrency,
                          ),
                          const SizedBox(height: 16),
                          CurrencyCard(
                            label: 'PARA',
                            selectedCurrency: homeViewModel.toCurrency,
                            amount: homeViewModel.convertedAmount
                                .toStringAsFixed(2),
                            availableCurrencies: _availableCurrencies,
                            onCurrencyChanged: homeViewModel.setToCurrency,
                          ),
                        ],
                      ),
                      Positioned(
                        child: SwapButton(onTap: homeViewModel.swapCurrencies),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.trending_up,
                            color: Colors.orange,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '1 ${homeViewModel.fromCurrency} = ${homeViewModel.currentRate.toStringAsFixed(4)} ${homeViewModel.toCurrency}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      TextButton.icon(
                        onPressed: () => homeViewModel.getCurrencyCommand
                            .execute(homeViewModel.fromCurrency),
                        icon: const Icon(
                          Icons.refresh,
                          size: 20,
                          color: Colors.orange,
                        ),
                        label: const Text(
                          'Atualizar',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFE5D9).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Ultima atualização em 12/12/2025 12:12', // Placeholder for now
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
