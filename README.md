
---  

```md
# 🚀 Jadoo Landing Page (For ICLAN TEST)

Un projet **Flutter** conçu pour une landing page moderne et responsive.  
Il est structuré de manière modulaire pour une meilleure organisation du code.  

---

## 📸 **Aperçu**
![Landing Page](docs/images/preview.png)

---

## 🛠 **Technologies utilisées**
- **Flutter** (Framework UI)
- **Dart** (Langage de programmation)
- **flutter_gen** (Génération automatique des assets)

---

## 📂 **Structure du projet**

lib
├── gen                   # Assets générés automatiquement
│   └── assets.gen.dart  
├── main.dart             # Point d'entrée du projet  
└── src  
    ├── app.dart         # Initialisation de l'application  
    ├── core             # Noyau du projet (Constantes, Extensions)  
    │   ├── constants  
    │   │   ├── app_colors.dart  # Palette de couleurs  
    │   │   └── app_strings.dart # Chaînes de texte  
    │   └── extensions  
    │       ├── context_x.dart   # Extensions sur BuildContext  
    │       └── strings_x.dart   # Extensions sur String  
    ├── screens           # Écrans de l'application  
    │   └── landing  
    │       ├── components       # Composants réutilisables  
    │       │   ├── brands_section.dart  
    │       │   ├── category_card.dart  
    │       │   ├── destinations_section.dart  
    │       │   ├── testimonial_card.dart  
    │       │   ├── subscription_section.dart  
    │       │   └── testimonials_section.dart  
    │       └── landing_screen.dart  
    └── shared            # Widgets partagés  
        └── widgets  
            ├── navbar.dart         # Barre de navigation  
            ├── footer.dart         # Pied de page  
            ├── landing_background.dart  # Arrière-plan  
            ├── navlinks.dart       # Liens de navigation  
            └── sections_head.dart  # Titres des sections  
```

---

## 🚀 **Comment exécuter le projet ?**
### 📌 Prérequis :
- Flutter installé ✅  
- Dart installé ✅  
- Un émulateur ou un appareil physique 📱  

### 📌 Étapes :
1. **Cloner le projet**  
   ```sh
   git clone https://github.com/Starland9/jadoo_iclan.git
   cd jadoo-iclan
   ```

2. **Installer les dépendances**  
   ```sh
   flutter pub get
   ```

3. **Générer les assets (si `flutter_gen` est utilisé)**  
   ```sh
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Lancer l'application**  
   ```sh
   flutter run
   ```

---

## 🎨 **Personnalisation**
- **Modifier les couleurs :** `lib/src/core/constants/app_colors.dart`
- **Modifier les textes :** `lib/src/core/constants/app_strings.dart`
- **Ajouter des sections :** `lib/src/screens/landing/components/`

---

## ✨ **Fonctionnalités**
✔️ Design responsive 📱💻  
✔️ Composants réutilisables 🔄  
✔️ Navigation fluide 🌊  
✔️ Facile à personnaliser 🎨  
✔️ Code bien structuré 🏗️  


## 📜 **Licence**
Ce projet est sous licence **MIT**.  
📩 Contacte-moi si tu veux collaborer !  

---

🔥 **Happy Coding!** 🚀  

