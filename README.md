# RPA Challenge – Robot Framework riešenie

## 📄 Zadanie

Toto riešenie je súčasťou výberového konania na pozíciu **Test Automation Developer – brigádnik/brigádnička**.

Cieľom úlohy je otestovať schopnosť vytvoriť jednoduchý automatizačný skript pomocou **Robot Framework** a knižnice **BrowserLibrary** alebo **SeleniumLibrary**.

Vašou úlohou je vyriešiť časť **“Input Forms”** na stránke [www.rpachallenge.com](https://www.rpachallenge.com), kde robot načíta údaje z Excel súboru a následne ich zadá do formulára.

---

## 🛠️ Použité technológie

- [Robot Framework](https://robotframework.org/)
- [RPA Framework](https://rpaframework.org/) (`RPA.Excel.Files`, `Browser`)
- Excel súbor `challenge.xlsx` so vstupnými údajmi

---

## 📁 Štruktúra projektu

```
.
├── challenge.xlsx        # Excel s testovacími dátami
├── robot.robot           # Hlavný automatizačný skript
└── README.md             # Tento súbor
```

---

## ▶️ Spustenie

Na spustenie tohto skriptu je potrebné mať nainštalovaný **Python**, **Robot Framework** a **RPA Framework**:

```bash
pip install robotframework
pip install rpaframework
```


Treba dať run na **rfbrowser**:
```bash
pipenv run rfbrowser init
```

Potom môžeš spustiť skript:

```bash
pipenv run robot rpa_challenge.robot
```

> Poznámka: V premennej `${HEADLESS}` si môžeš zapnúť/vypnúť zobrazovanie prehliadača (nastavením na `True` alebo `False`).

---

## 📌 Priebeh skriptu

1. Načíta sa Excel súbor `challenge.xlsx`.
2. Otvorí sa prehliadač a stránka [rpachallenge.com](https://www.rpachallenge.com).
3. Klikne sa na tlačidlo **Start**.
4. Pre každý riadok v tabuľke sa vyplní formulár:
   - First Name
   - Last Name
   - Email
   - Role in Company
   - Address
   - Company Name
   - Phone Number
5. Formulár sa odošle.
6. Proces sa opakuje pre všetky riadky v Exceli.

---
