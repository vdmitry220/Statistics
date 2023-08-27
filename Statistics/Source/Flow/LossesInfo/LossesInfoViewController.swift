import UIKit

protocol LossesInfoView: AnyObject {
    
}

class LossesInfoViewController: UIViewController {
    
    private var presenter: LossesInfoPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cyan
    }
    
    func inject(presenter: LossesInfoPresenter) {
        self.presenter = presenter
    }
}

extension LossesInfoViewController: LossesInfoView {
    
}
