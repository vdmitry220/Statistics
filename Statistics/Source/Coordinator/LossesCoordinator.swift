import Foundation
import UIKit

class LossesCoordinator: Coordinator {
    
    var screensFactory: ScreensFactory
        
    var root: UINavigationController
    
    init(screensFactory: ScreensFactory, root: UINavigationController) {
        self.screensFactory = screensFactory
        self.root = root
    }
    
    func start() {
        let view = screensFactory.createLossesListView(stepper: self)
        root.setViewControllers([view], animated: false)
    }
}

extension LossesCoordinator: Stepper {
    func navigateToLossesInfo() {
        let view = screensFactory.createLossesInfoView(stepper: self)
        root.pushViewController(view, animated: true)
    }
}

