

import SwiftUI

var sampleDataRecipe: [ SearchRecipe ] =
[
    SearchRecipe(
        id: "1",
        title: "Pizza Marguerita",
        image: "https://massasaojudas.com.br/wp-content/uploads/2020/05/receita_pizza_marguerita.png"
    ),
    SearchRecipe(
        id: "2",
        title: "Lasanha De Carne",
        image: "https://supermercadosrondon.com.br/guiadecarnes/images/postagens/receita_simples_de_lasanha_de_carne_moda_2019-10-28.jpg"
    ),
    SearchRecipe(
        id: "3",
        title: "Macarrão a Bolonhesa",
        image: "https://www.sabornamesa.com.br/media/k2/items/cache/9e9e1351d6a763151a8613c1dd10d427_XL.jpg"
    )
]

struct FavoritesView: View {
    @State private var searchText = "Pesquisar"
    
    var body: some View {
        
        
        NavigationStack {
            
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Image("Logo_Sem_Slogan")
                        .resizable()
                        .frame(width: 75, height: 75, alignment: .topLeading)
                        .foregroundColor(Color.white)
                        .colorInvert()
                    
                        .padding(.vertical, -20)
                    
                    HStack {
                        ScrollView{
                            
                            ForEach(sampleDataRecipe) { recipe in
                                NavigationLink(destination: SearchRecipeView(type: "a")){
                                    RecipeView(title: recipe.title!, image: recipe.image!)
                                }
                                Spacer()
                            }
                            Spacer()
                        }
                        .listRowSeparator(.hidden, edges: .all)
                        
                    }
                    
                    
                }.padding(.vertical, 35)
                
                
                
            }
            
        }
    }
}



struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
