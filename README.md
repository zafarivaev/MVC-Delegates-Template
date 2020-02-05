# VIPER Template
Xcode File Template for generating MVC modules: Model, View, and Controller. Written in Swift 5

# How To Install
1. Clone the repository
2. Navigate to Xcode Templates folder: ```~/Library/Developer/Xcode/Templates/```. If Templates folder doesn't exist, create it
3. Copy and paste the MVC Module.xctemplate in Templates folder

# Use
1. Open Xcode
2. ```File -> New -> File``` or ```⌘ N```
3. Scroll down till you see ```MVC Module``` template and choose it.
4. Set a name for your module. Examples: ```Home, Auth, SignIn```

# Generated Code

Let's suppose we wanted to create the Auth module. Here's how it would look:

### Contract
```AuthContract.swift```
```swift
import UIKit

/// *View* sends user actions to the *Controller*.
///
/// **Controller** conforms to this protocol
protocol AuthViewInput: class {
    
    var controllerOutput: AuthControllerOutput? { get set }
    var controllerInput: AuthControllerInput? { get set }
    
    // View input methods here
}

/// *Controller* tells the *Model* what to do based on the input
///
/// **Model** conforms to this protocol
protocol AuthControllerInput: class {
    
    var modelOutput: AuthModelOutput? { get set }
    
    // Controller input methods here
}

/// *Model* returns the result to the *Controller*
///
/// **Controller** conforms to this protocol
protocol AuthModelOutput: class {
    // Model output methods here
}

/// *Controller* returns a UI-representable result to the *View*
///
/// **View** conforms to this protocol
protocol AuthControllerOutput: class {
    var viewInput: AuthViewInput? { get set }
    
    // Controller output methods here
}
```

### Model
```AuthModel.swift```
```swift
import Foundation

class AuthModel {
    
    weak var modelOutput: AuthModelOutput?
}

// MARK: - Controller Input
extension AuthModel: AuthControllerInput {
    // Implement methods
}
```

### View
```AuthView.swift```
```swift
import UIKit

class AuthView: UIView {
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        
    }
    
    // MARK: - Properties
    weak var viewInput: AuthViewInput?
}

// MARK: - Controller Output
extension AuthView: AuthControllerOutput {
    
    // Implement methods
    
}

// MARK: - UI Setup
extension AuthView {
    private func setupUI() {
        // Add subviews and set constraints here
    }
}

```

### Controller
```AuthViewController.swift```
```swift
import UIKit

class AuthViewController: UIViewController {

    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let view = AuthView()
        let model = AuthModel()
               
        self.controllerOutput = view
        self.controllerOutput?
            .viewInput = self
        self.controllerInput = model
        self.controllerInput?
            .modelOutput = self
        
        self.view = view as UIView
    }

    // MARK: - Properties
    var controllerOutput: AuthControllerOutput?
    var controllerInput: AuthControllerInput?
}

// MARK: - View Input
extension AuthViewController: AuthViewInput {
    // Implement methods
}

// MARK: - Model Output
extension AuthViewController: AuthModelOutput {
    // Implement methods
}
```
