
import Foundation

class SearchViewModel: ObservableObject {
    @Published var all: [GroupModel] = []
    
    init() {
        getData()
        self.all = GroupModel.mockData
    }
    
    func getData() {
        
    }
}
