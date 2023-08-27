import Foundation
import UIKit

class ScreensFactory {
    
    func createLossesListView(stepper: Stepper) -> UIViewController {
        let storyboard = UIStoryboard(name: "LossesListViewController", bundle: nil)
        let view: LossesListViewController = storyboard.instantiateViewController(withIdentifier: "LossesListViewController") as! LossesListViewController
        let router = Router(delegate: stepper)
        let presenter = LossesListPresenterImp(
            view: view,
            router: router)
        view.inject(presenter: presenter)   
        return view
    }
    
    func createLossesInfoView(stepper: Stepper) -> UIViewController {
        let storyboard = UIStoryboard(name: "LossesInfoViewController", bundle: nil)
        let view: LossesInfoViewController = storyboard.instantiateViewController(withIdentifier: "LossesInfoViewController") as! LossesInfoViewController
        let presenter = LossesInfoPresenterImp(view: view)
        
        return view
    }
}
