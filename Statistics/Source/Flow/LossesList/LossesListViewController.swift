import UIKit

protocol LossesListView: AnyObject {
    
}

class LossesListViewController: UIViewController {
    
    private var presenter: LossesListPresenter!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
    }
    
    func inject(presenter: LossesListPresenter) {
        self.presenter = presenter
    }
}

// MARK: - LossesListView

extension LossesListViewController: LossesListView {

}



