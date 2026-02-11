# Joyful Kids Flutter App

## Overview

This document outlines the plan for developing the "Joyful Kids" Flutter application, based on the provided website design. The goal is to create a well-structured, scalable, and visually appealing mobile application.

## Current Plan: Initial Setup and Home Screen

This is the initial phase of development. The plan is to set up the project structure, create the main layout, and implement the home screen as depicted in the user-provided images.

### Steps:

1.  **Project Scaffolding:**
    *   Create a modular project structure with `modules` and `components` directories inside `lib`.
    *   Create an `assets/images` directory to store image assets for the application.
    *   Update `pubspec.yaml` to include the assets directory.

2.  **Theme and Main App:**
    *   Modify `lib/main.dart` to remove the default counter app.
    *   Set up a basic Material 3 theme with a custom color scheme and fonts that align with the "Joyful Kids" brand.
    *   The main app widget will initialize the `HomeScreen`.

3.  **Home Screen (`lib/modules/home/home_screen.dart`):**
    *   Create a stateful widget for the home screen.
    *   Implement a `Scaffold` with a custom `AppBar` and a `BottomNavigationBar`.
    *   The body of the scaffold will be a `SingleChildScrollView` to contain all the content sections.

4.  **Components:**
    *   **Custom AppBar (`lib/components/joyful_app_bar.dart`):**
        *   A `PreferredSizeWidget` that displays the "Joyful Kids" logo, a menu icon, an "EN" language button, and a user profile icon.
    *   **Custom Bottom Navigation Bar (`lib/components/joyful_bottom_nav.dart`):**
        *   A custom-painted bottom navigation bar with three icons: videos, home, and games.
    *   **Home Screen Body (`lib/modules/home/home_body.dart`):**
        *   A widget to hold the main content of the home screen. This will be a `Column` containing:
            *   Header image banner ("Your Child's Learning Wonderland").
            *   "Choose What To Learn Today?" section with category cards.
            *   "Popular This Week" section with a large content card.
            *   "Reading Corner" section with smaller content cards.
            *   Footer section with copyright and links.

5.  **Initial Content (Placeholders):**
    *   The initial implementation will use `Image.network` with placeholder URLs for all images. The user will provide the final image links.
    *   Card widgets will be created with basic styling (rounded corners, shadows) and placeholder text.
    *   Navigation will not be implemented in this phase; buttons and cards will have empty `onPressed` handlers.
