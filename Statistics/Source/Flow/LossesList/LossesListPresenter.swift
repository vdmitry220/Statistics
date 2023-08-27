import Foundation

protocol LossesListPresenter: AnyObject {
    func navigate()
}

class LossesListPresenterImp {
    
    private weak var view: LossesListView?
    private var router: Router?


    init(view: LossesListView, router: Router) {
        self.view = view
        self.router = router
    }
}

extension LossesListPresenterImp: LossesListPresenter {
    
    func navigate() {
        router?.navigate()
    }
}
