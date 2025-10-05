import SwiftUI


struct BedtimePopoverView: View {
    
    var sentence: String
    
    var body: some View {
        Form {
            VStack {
                Text(sentence)
                    .font(.headline)
                    .padding(.bottom, 9)
                
                Divider()
                
                HStack {
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("asdflk jaslf kjasdl kajsdfl asjkdfl aksjdf alskdfj alsdkj asf")
                    }
                    .font(.callout)
                }
            }
            
        }
        .fixedSize(horizontal: true, vertical: false)
        .padding() 
    }
    
}
