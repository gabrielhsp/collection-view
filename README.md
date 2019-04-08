# Collection View
An example app that use `CollectionView` component to render a list of items inside an array.

To render each item, we use a `.xib` file that receives the component `CollectionViewCell` and fill this component inside our `CollectionView`.

This project doesn't use a `.storyboard` file to build the layouts of the app. Instead, all screens of our app are builded using `.xib` files and we instanciate inside the `AppDelegate.swift` the main screen of our app.
