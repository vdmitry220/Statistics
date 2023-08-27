import Foundation

protocol LossesInfoPresenter: AnyObject {
    
}

class LossesInfoPresenterImp {
    
    private weak var view: LossesInfoView?
    
    init(view: LossesInfoView) {
        self.view = view
    }
}

extension LossesInfoPresenterImp: LossesInfoPresenter {
    
}
