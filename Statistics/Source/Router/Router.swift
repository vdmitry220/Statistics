import Foundation

class Router {
    
    private let delegate: Stepper
    
    init(delegate: Stepper) {
        self.delegate = delegate
    }
    
    func navigate() {
        delegate.navigateToLossesInfo()
    }
}
