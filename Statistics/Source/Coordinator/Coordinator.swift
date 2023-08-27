import Foundation
import UIKit

protocol Coordinator: AnyObject {
    
    var root: UINavigationController { get }
    
    func start()
}
