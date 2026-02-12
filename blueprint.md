# Joyful Kids Flutter App

## Overview

This document outlines the development of the "Joyful Kids" Flutter application. The goal is to create a well-structured, scalable, and visually appealing mobile and web application based on the user's design specifications.

## Style, Design, and Features

This section details the design, styling, and features implemented in the application from the initial version to the current version.

### V1 - Initial Implementation:

*   **Project Structure:**
    *   A modular project structure was created with `modules` and `components` directories inside `lib` for better organization.
    *   An `assets/images` directory was created and populated with all necessary image assets.
    *   `pubspec.yaml` was updated to include the `google_fonts` and `readmore` packages, along with the assets directory.

*   **Theme and Main App:**
    *   The `lib/main.dart` file was configured to set up the main application widget.
    *   A `ThemeProvider` was implemented to manage light and dark themes.
    *   Light and dark `ThemeData` were defined using `ThemeData.fromSeed` with a primary color and `GoogleFonts` for typography.
    *   The debug banner was removed from the `MaterialApp`.

*   **Home Screen (`lib/modules/home/home_screen.dart`):**
    *   A `Scaffold` was implemented with a custom `AppBar`, `Drawer`, `BottomNavigationBar`, and a `SingleChildScrollView` body.
    *   The body includes a background image and a responsive layout using `LayoutBuilder` to switch between `HomeBody` (mobile) and `HomeBodyWeb` (web).

*   **Core Components:**
    *   **`JoyfulAppBar` (`lib/components/joyful_app_bar.dart`):**
        *   Displays the app logo.
        *   Includes a hamburger menu icon to open the drawer.
        *   Features a styled language selector dropdown that shows the current language ('EN').
        *   Contains a user profile icon.
    *   **`JoyfulDrawer` (`lib/components/joyful_drawer.dart`):** A placeholder drawer for future navigation.
    *   **`JoyfulBottomNav` (`lib/components/joyful_bottom_nav.dart`):** A custom-painted bottom navigation bar with icons for "Videos," "Home," and "Games."
    *   **`AppFooter` (`lib/modules/home/footer.dart`):** A footer section displaying copyright information and social media links.

*   **Home Screen Content:**
    *   **`HomeBanner` (`lib/modules/home/home_banner.dart`):** Displays the main banner image.
    *   **`HomeBody` and `HomeBodyWeb` (`lib/modules/home/home_body.dart`, `lib/modules/home/home_body_web.dart`):**
        *   Displays the main heading "Choose What To Learn Today?".
        *   Presents category cards for "Interactive Learning Videos," "Reading Corner," and "Game Galaxy" with distinct background colors and icons.
    *   **"Popular this Week" Section:**
        *   Refactored to be dynamic using a `PopularItem` model and a `ListView.builder`.
        *   Items are displayed in styled cards with images and titles.
        *   Includes a "View All" button.
    *   **"Reading Corner" Section (`lib/modules/home/reading_corner.dart`):**
        *   Refactored to be dynamic using a `ReadingItem` model and a `GridView.builder`.
        *   Displays articles in styled cards with images and titles.
        *   Uses the `readmore` package to show truncated text with a "Read more" option.
        *   Includes a "View All" button.

## Current Plan: No Active Plan

All initial development tasks have been completed. The application's home screen is fully implemented and styled according to the provided designs. The codebase is structured for future scalability. Waiting for the user's next request.
