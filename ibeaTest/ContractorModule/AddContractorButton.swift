//
//  AddContractorRow.swift
//  ibeaTest
//
//  Created by Vladimir on 23.11.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

//инкапсулировать вбю11213123

import SwiftUI

struct AddContractorButton: View {
    @State private var isShowed: Bool = false
    
    var body: some View {
        VStack {
            Button(isShowed ? "-" : "+"){self.isShowed.toggle()}
                .frame(width: 350, height: 40, alignment: .center)
                .border(Color.blue)
            if isShowed{
                AddContractorRow()
            }
            
        }
    }
}


struct AddContractorButton_Previews: PreviewProvider {
    static var previews: some View {
        AddContractorButton()
    }
}

