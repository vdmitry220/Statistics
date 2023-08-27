import Foundation
import UIKit

class AppFactory {
    
    private let screenFactory: ScreensFactory
    private let coordinatorFactory: CoordinatorFactory
    
    init() {
        self.screenFactory = .init()
        self.coordinatorFactory = .init(screensFactory: screenFactory)
    }
    
    func initiateView(window: UIWindow) {
        let coordiantor = coordinatorFactory.createCoordinator(window: window)
        coordiantor.start()
    }
}
