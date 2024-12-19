# tachiyomi_clone
A front-end clone for a mobile application called Tachiyomi

Overview
This Flutter project contains a MangaPage widget designed to display detailed information about a manga. The widget includes an image, titles, metadata, expandable descriptions, category tags, and a chapter list, all packaged in an intuitive and user-friendly interface.

The code is modular, with separate widgets for components like titles, buttons, and expandable descriptions, making it easy to reuse or customize parts of the interface.

Features
Main Components
AppBar:

Includes navigation and utility buttons (back, download, filter, and options).
Matches the theme of the app with a light purple background.
Image Section:

Displays the manga cover image with rounded borders.
Main Title and Metadata:

Shows the manga's title and metadata, such as author, status, and source.
Metadata is presented using custom TitleSection widgets for consistency.
Action Buttons:

A row of buttons for library management, tracking, and web view, created using the ButtonSection widget.
Expandable Description:

Provides a summary of the manga with an expandable/collapsible view.
Category Tags:

Horizontal list of buttons representing the manga's genres, created using the HorizontalElevatedButton widget.
Chapter List:

Displays a scrollable list of chapters with their release dates.
Each chapter has an icon indicating download status.
Floating Action Button:

A "Start" button for user interaction.

Usage
Running the App
Clone the repository and navigate to the project directory.
Run flutter pub get to fetch dependencies.
Start the app with flutter run.

Potential Enhancements
Interactivity: Add navigation or download functionality for chapters.
API Integration: Connect the chapter list and metadata to a backend or API.
Search Feature: Include a search bar in the AppBar for better navigation.
Dynamic Content: Replace hardcoded data with API-fetched information.






![Screenshot 2024-12-20 010545](https://github.com/user-attachments/assets/8e6c5ede-aa3d-4f7d-b789-4d5efd318c42)


https://github.com/user-attachments/assets/5890b0a0-6799-4a3c-a8b7-09ddcd69ba38
