//
//  JokesViewModel.swift
//  JokesApp
//
//  Created by Fatih Filizol on 13.11.2022.
//

import Foundation
import Alamofire

class JokesViewModel : ObservableObject{
    
    @Published var jokes = [Value]()
    
    init(){
        getJokes()
    }
    
    func getJokes (){
        
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json", method: .get).responseDecodable(of: Welcome.self) { response in
            
            switch response.result {
                case .failure(let error):
                    print(error)
                case .success(let data):
                    let value = data.value
                    self.jokes = value
            }
            
        }
        
        
        
    }
    
}
