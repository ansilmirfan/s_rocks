# s_rocks

A new Flutter project.

---

### Packages used

| Packages          | Description                                    |
| ----------------- | ---------------------------------------------- |
| 'firebase_core '  | For initialising the application with firebase |
| 'cloud_firestore' | For accessing cloud in firebase                |
| 'get_it'          | For dependency injection                       |
| 'provider'        | For state management                           |
| 'shimmer'         | For loading shimmer effect                     |

---

## 🖼️Preview

<img src="assets/images/s-rcoks-screenshot.png" alt="App Screenshot" width="500"/>

---

## 🎬 Demo Video

<a href="https://drive.google.com/file/d/1HnnXAgIdbnNRg6DwWFP_W8RgVMoP01p8/view?usp=sharing">
  <img src="assets/images/s-rcoks-screenshot.png" alt="Watch Demo Video" width="200"/>
</a>

---

## 📁 Folder Structure

--bash

<pre>
s_rocks/
│
├── assets/                         # Contains static assets used in the app
│   ├── fonts/                      # Custom fonts
│   ├── images/                     # Image assets
│   │   ├── .../                    # Other image files
│   │   └── icons/                  # Icons used in the app
│
├── lib/                            # Main application source code
│   ├── core/                       # Core setup and utilities shared across the app
│   │   └── dependency_injection/   # Handles dependency injection setup
│   │       └── injector.dart       # Initializes and provides dependencies
│
│   ├── data/                       # Data layer for external services
│   │   └── firebase_services.dart  # Handles Firebase CRUD operations
│
│   ├── models/                     # Data models used throughout the app
│   │   └── music_service_model.dart # Model representing a music service
│
│   ├── res/                        # App resources like styles and constants
│   │   ├── constants/              # Application-wide constant values
│   │   └── style/                  # Styling (colors, themes, radius, etc.)
│   │       ├── app_colors.dart     # Color definitions
│   │       ├── app_text_theme.dart # Text theme styles
│   │       ├── app_theme.dart      # ThemeData 
│   │       ├── color_scheme.dart   # Color scheme 
│   │       └── radius.dart         # Border radius 
│   ├── res/
│   │   └── firebase_repository.dart # Repository pattern implementation for Firebase
│
│   ├── utils/                      # Utility classes and extensions
│   │   └── extensions/             # Custom Dart extension methods
│   │       ├── route_extension.dart # Extension for route navigation
│   │       └── space_extension.dart # Extension for spacing widgets
│
│   ├── view/                       # UI components/screens
│   │   ├── bottom_nav/             # Bottom navigation-related widgets
│   │   │   ├── widgets/            # Widgets specific to bottom nav
│   │   │   └── bottom_nav.dart     # Bottom navigation bar widget
│   │   ├── home/                   # Home screen
│   │   │   ├── widgets/            # Home screen-specific widgets
│   │   │   └── home.dart           # Home screen layout
│   │   ├── splash_screen/          # Splash screen
│   │   │   └── splash_screen.dart  # Splash screen widget
│   │   ├── view_page/              # View page screen
│   │   │   └── view_page.dart      # View page layout
│   │   └── widgets/                # Shared or global UI widgets
│
│   ├── view_model/                 # View models for state management (Provider)
│   │   └── music_service_view_model.dart # Logic for managing music service UI state
│
│   └── main.dart                   # App entry point
</pre>

---
