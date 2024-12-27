//
//  ContentView.swift
//  Weather_swiftui
//
//  Created by Thang Hoang on 27/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
          // MARK: - Background View
            BackgroundView()
            
          // MARK: - Vertical View
          VStack {
                Text("Hanoi, Vietnam")
                  .font(.system(size: 30, weight: .medium, design: .default))
                  .foregroundStyle(Color.white)
                  .padding()
              
              // Current Temp
              VStack(spacing: 10.0) {
                  Image(systemName: "cloud.sun.fill")
                      .renderingMode(.original)
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 180, height: 180)
                  
                  Text("20°C")
                      .font(.system(size: 60, weight: .medium, design: .default))
                      .foregroundStyle(Color.white)
                  
                      .padding(.bottom, 80)
                  
                 // Future Temp
                  HStack(spacing: 16) {
                      
                      DayView(dayofWeek: "MON", weatherType: "cloud.fill", temp: 18)
                      DayView(dayofWeek: "TUE", weatherType: "cloud.drizzle.fill", temp: 16)
                      DayView(dayofWeek: "WED", weatherType: "cloud.sun.rain.fill", temp: 19)
                      DayView(dayofWeek: "THU", weatherType: "smoke.fill", temp: 15)
                      DayView(dayofWeek: "FRI", weatherType: "wind", temp: 12)
                      DayView(dayofWeek: "SAT", weatherType: "sun.dust.fill", temp: 14)
                      
                    }
                  .padding(.leading, 16)
                  .padding(.trailing, 16)
                  Spacer()
                  
                  Button {
                      
                  } label: {
                      Text("Update Weather")
                          .frame(width: 200, height: 60)
                          .background(Color.white)
                          .font(.system(size: 20, weight: .bold, design: .default))
                          .cornerRadius(10)
                  }
                  
                  Spacer()
              }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayView: View {
    
    var dayofWeek: String
    
    var weatherType: String
    
    var temp: Int
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: <#T##Gradient#>, startPoint: <#T##UnitPoint#>, endPoint: <#T##UnitPoint#>)
            
            VStack(spacing: 8) {
                Text(dayofWeek)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundStyle(Color.white)
                
                Image(systemName: weatherType)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 48, height: 48)
                
                Text("\(temp)°C")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundStyle(Color.white)
            }
        }
    }
}

struct BackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.blue, Color.lightBlue]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea(.all)
    }
}
