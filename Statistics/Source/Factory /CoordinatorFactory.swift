import Foundation
import UIKit

class CoordinatorFactory {
    
    private let screensFactory: ScreensFactory
    
    init(screensFactory: ScreensFactory) {
        self.screensFactory = screensFactory
    }
    
    func createCoordinator(window: UIWindow) -> Coordinator {
        let root = UINavigationController()
        window.rootViewController = root
        let coordinator = LossesCoordinator(
            screensFactory: screensFactory,
            root: root)
        return coordinator
    }
}
