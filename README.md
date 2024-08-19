# MVVM Mobile Application Template

This project is developed as a practice for the MVVM (Model-View-ViewModel) architecture template designed for mobile applications. The project structure is organized under specific folders to enhance code readability and maintainability.

## Project Structure

### `lib` Folder

The main directory of the project contains two primary folders:

1. **core**
2. **view**

### `core` Folder

The `core` folder holds the fundamental building blocks of the project. This folder includes various subfolders and components:

- **base**: Contains the base models and views used across the project. Other views extend from these models.
  
- **components**: Includes custom components that can be reused across different parts of the application.
  
- **constants**: Houses `app`, `enums`, `image`, and `navigation` constants, where keys, tokens, and navigation keys are defined.
  
- **extensions**: Contains extensions for `context` (to facilitate easier access to theme and context properties) and `string`.
  
- **init**: Includes a local storage folder for user settings and a `lang` folder for language options using the `EasyLocalization` package. The `navigation` folder contains the base navigation setup.

### `view` Folder

The `view` folder contains the `model`, `view`, and `view_model` files, organized by feature.

## Future Development

This project is still under development. Future plans include refactoring the `core` folder into a separate package to improve modularity and maintainability. As the project evolves, more features and improvements will be added to enhance its functionality. 

## Packages
- mobx :[mobx-pubdev-link](https://pub.dev/packages/mobx)
- easy_localization :[easy-localization-pubdev-link](https://pub.dev/packages/easy_localization)
- provider :[provider-pubdev-link](https://pub.dev/packages/provider)
- shared_preferences :[shared-preferences-pubdev-link](https://pub.dev/packages/shared_preferences)
- dio :[dio-pubdev-link](https://pub.dev/packages/dio)

