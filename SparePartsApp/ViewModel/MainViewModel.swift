
import Foundation

class MainViewModel: ObservableObject {
    @Published var nameModel = BrandsModel(name: "BMW")
    @Published var model: [BrandsModel] = []
    @Published var nameGroup = GroupModel(name: "Zip5")
    @Published var group: [GroupModel] = []

    init() {
        getData()
    }
    
    func getData() {
        self.model = BrandsModel.mockData
        self.group = GroupModel.mockData
    }
}
