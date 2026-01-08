# <img src="assets/images/logos/kambio_logo.png" width="40" height="40" alt="Kambio Logo"> Kambio

A modern Flutter Currency Exchanger application built as a study project to explore **Domain-Driven Design (DDD)** and real-time data integration.

## 🚀 Overview

**Kambio** is designed to provide users with a clean, efficient, and reliable way to convert currencies. It leverages the [ExchangeRate-API](https://www.exchangerate-api.com/) for accurate, real-time data and ensures a smooth user experience even with limited connectivity.

### Key Features

- **Real-time Conversion:** Fetches the latest exchange rates from `exchangerate-api.com`.
- **Offline Support:** Persists the last fetched rates using `shared_preferences` for offline access.
- **Clean Architecture:** Implemented using **DDD (Domain-Driven Design)** principles for high maintainability and testability.
- **Smooth UX:** Includes a dynamic splash screen and intuitive UI components.
- **Auto-Update:** Background updates ensure rates are always fresh (every 30 minutes).

## 🛠️ Built With

- **Framework:** [Flutter](https://flutter.dev/)
- **Architecture:** Domain-Driven Design (DDD)
- **API:** [ExchangeRate-API](https://www.exchangerate-api.com/)
- **State & Flow Management:** `result_dart`, `result_command`, `auto_injector`
- **Networking:** `dio`
- **Local Storage:** `shared_preferences`
- **Connectivity:** `connectivity_plus`

## 📸 Preview

<p align="center">
  <img src="assets/videos/examples/kambio_splash_screen.gif" width="300" alt="Splash Screen">
  <img src="assets/videos/examples/kambio_exmaple.gif" width="300" alt="App Example">
</p>

## 🏗️ Architecture (DDD)

The project is structured following DDD separation of concerns:

- **Domain:** Core business logic, entities, and repository interfaces.
- **Data:** API implementations, DTOs, and local data sources.
- **UI:** Widgets, ViewModels, and UI state management.
- **Config/Utils:** Dependency injection setup and helper utilities.

---

_Created for study purposes by claudineijr._
