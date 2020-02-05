//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

/// *View* sends user actions to the *Controller*.
///
/// **Controller** conforms to this protocol
protocol ___VARIABLE_ModuleName___ViewInput: class {
    
    var controllerOutput: ___VARIABLE_ModuleName___ControllerOutput? { get set }
    var controllerInput: ___VARIABLE_ModuleName___ControllerInput? { get set }
    
    // View input methods here
}

/// *Controller* tells the *Model* what to do based on the input
///
/// **Model** conforms to this protocol
protocol ___VARIABLE_ModuleName___ControllerInput: class {
    
    var modelOutput: ___VARIABLE_ModuleName___ModelOutput? { get set }
    
    // Controller input methods here
}

/// *Model* returns the result to the *Controller*
///
/// **Controller** conforms to this protocol
protocol ___VARIABLE_ModuleName___ModelOutput: class {
    // Model output methods here
}

/// *Controller* returns a UI-representable result to the *View*
///
/// **View** conforms to this protocol
protocol ___VARIABLE_ModuleName___ControllerOutput: class {
    var viewInput: ___VARIABLE_ModuleName___ViewInput? { get set }
    
    // Controller output methods here
}
