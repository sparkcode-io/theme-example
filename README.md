# theme-example

Final project code for my video series on creating a theme for SwiftUI and UIKit

https://www.youtube.com/watch?v=LceTGKSVN_c&list=PLSe7GyVxLXLnLy39jHMx6WZ1hkp_4RbCw

The point of this project is to demonstrate that by using a centralized theme we can make apps more accessible and easier to modify our colors/fonts. By using semantic naming and adding a layer of abstraction (theme object), our code becomes more maintainable and we only need to modify a centralized location in order to make widespread changes to all of our views.

The theme is created in UIKit and contains SwiftUI wrappers so that apps can support both UIKit and SwiftUI views easily. 

There are some basic unit tests that cover loading the color assets and fonts that verify that they will not fail to load.
