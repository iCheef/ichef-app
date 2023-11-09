

import SwiftUI

struct FavoritesView: View {
    var body: some View {

            NavigationStack {
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 500, height: 1000)
                                .foregroundColor(Color("Background"))
                                .ignoresSafeArea()
                            
                
                                VStack(alignment: .leading, spacing: 0) {
                                  VStack(alignment: .leading, spacing: 0) {
                                    VStack(alignment: .leading, spacing: 0) {
                                      VStack(alignment: .leading, spacing: 0) {
                                        HStack(spacing: 0) {
                                          HStack(spacing: 0) {
                                            VStack(alignment: .leading, spacing: 0) {
                                              Text("1:47")
                                                .lineSpacing(23)
                                                .foregroundColor(.white)
                                            }
                                          }
                                          .padding(EdgeInsets(top: 18, leading: 0, bottom: 13, trailing: 0))
                                          .frame(maxWidth: .infinity, minHeight: 54, maxHeight: 54)
                                          VStack(alignment: .leading, spacing: 0) {
                                            Rectangle()
                                              .foregroundColor(.clear)
                                              .frame(width: 126, height: 37)
                                              .background(.black)
                                              .cornerRadius(100)
                                          }
                                          .padding(EdgeInsets(top: 11, leading: 0, bottom: 6, trailing: 0))
                                          HStack(spacing: 0) {
                                            HStack(alignment: .top, spacing: 3) {
                                              VStack(alignment: .leading, spacing: 0) {
                                                ZStack() {
                                                  ZStack() {

                                                  }
                                                  .frame(width: 22.40, height: 14.42)
                                                  .offset(x: -0.30, y: -1.29)
                                                }
                                                .frame(width: 27, height: 23)
                                              }
                                              VStack(alignment: .leading, spacing: 0) {
                                                ZStack() {
                                                  ZStack() {

                                                  }
                                                  .frame(width: 19.11, height: 13.80)
                                                  .offset(x: 0.06, y: -0.60)
                                                }
                                                .frame(width: 23, height: 23)
                                              }
                                              VStack(alignment: .leading, spacing: 0) {
                                                ZStack() {
                                                  ZStack() {

                                                  }
                                                  .frame(width: 30.85, height: 13.95)
                                                  .offset(x: 0.42, y: -0.52)
                                                }
                                                .frame(width: 36, height: 23)
                                              }
                                            }
                                          }
                                          .padding(EdgeInsets(top: 18, leading: 0, bottom: 13, trailing: 0))
                                          .frame(maxWidth: .infinity, minHeight: 54, maxHeight: 54)
                                        }
                                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                                        .frame(width: 430)
                                      }
                                      VStack(alignment: .leading, spacing: 0) {
                                        VStack(alignment: .leading, spacing: 0) {
                                          Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 20, height: 44)
                                        }
                                        .offset(x: -205, y: 0)
                                        VStack(alignment: .leading, spacing: 0) {
                                          Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 20, height: 44)
                                        }
                                        .offset(x: -185, y: 0)
                                        HStack(alignment: .top, spacing: 30) {
                                          VStack(alignment: .leading, spacing: 0) {
                                            Rectangle()
                                              .foregroundColor(.clear)
                                              .frame(width: 20, height: 44)
                                          }
                                          VStack(alignment: .leading, spacing: 0) {
                                            Rectangle()
                                              .foregroundColor(.clear)
                                              .frame(width: 20, height: 44)
                                          }
                                          VStack(alignment: .leading, spacing: 0) {
                                            Rectangle()
                                              .foregroundColor(.clear)
                                              .frame(width: 20, height: 44)
                                          }
                                        }
                                        .offset(x: 135, y: 0)
                                      }
                                      .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                                      .frame(maxWidth: .infinity, minHeight: 44, maxHeight: 44)
                                      VStack(alignment: .leading, spacing: 0) {
                                        HStack(alignment: .top, spacing: 0) {
                                          Text("Favoritos")
                                            .tracking(0.40)
                                            .lineSpacing(41)
                                            .foregroundColor(.white)
                                          VStack(alignment: .leading, spacing: 0) {
                                            VStack(spacing: 0) {
                                              Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 34, height: 34)
                                                .background(
                                                  AsyncImage(url: URL(string: "https://via.placeholder.com/34x34"))
                                                )
                                                .cornerRadius(100)
                                            }
                                            .frame(width: 34)
                                          }
                                        }
                                        .frame(maxWidth: .infinity)
                                      }
                                      .padding(EdgeInsets(top: 3, leading: 20, bottom: 8, trailing: 20))
                                      .frame(maxWidth: .infinity, minHeight: 52, maxHeight: 52)
                                    }
                                  }
                                  VStack(alignment: .leading, spacing: 0) {

                                  }
                                  .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                                  .frame(maxWidth: .infinity, minHeight: 806, maxHeight: 806)
                                }
                                .frame(width: 430, height: 956)
                    }
                }
            }
        }
    

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
