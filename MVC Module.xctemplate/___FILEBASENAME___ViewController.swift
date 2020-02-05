//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___VARIABLE_ModuleName___ViewController: UIViewController {

    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let view = ___VARIABLE_ModuleName___View()
        let model = ___VARIABLE_ModuleName___Model()
               
        self.controllerOutput = view
        self.controllerOutput?
            .viewInput = self
        self.controllerInput = model
        self.controllerInput?
            .modelOutput = self
        
        self.view = view as UIView
    }

    // MARK: - Properties
    var controllerOutput: ___VARIABLE_ModuleName___ControllerOutput?
    var controllerInput: ___VARIABLE_ModuleName___ControllerInput?
}

// MARK: - View Input
extension ___VARIABLE_ModuleName___ViewController: ___VARIABLE_ModuleName___ViewInput {
    // Implement methods
}

// MARK: - Model Output
extension ___VARIABLE_ModuleName___ViewController: ___VARIABLE_ModuleName___ModelOutput {
    // Implement methods
}
