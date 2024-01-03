//
//  HomeView.swift
//  AmaFlora
//
//  Created by Tristan Blond on 2024-01-02.
//


import SwiftUI

struct HomeView: View {
    var plants: [Plant] = Plant.samplePlants()
    var body: some View {
        NavigationStack {
            List(plants) { plant in
                HStack {
                    Image(plant.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipped()
                        .cornerRadius(25)
                    
                    Text(plant.name)
                        .font(.headline)
                        .padding(.leading, 8)
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("Your Plants")
            .toolbarBackground(
                Color(.lightGray),for: .navigationBar)
            .toolbarColorScheme(.light, for: .navigationBar)

            .toolbarBackground(.visible, for: .navigationBar)

            .navigationBarItems(
                leading: menuButton,
                trailing: settingsButton
            )

        }
        
        .overlay(
            addButton.padding(16),
            alignment: .bottomTrailing
        )
    }
    
    private var menuButton: some View {
        Button(action: {
            // Action for the menu button
        }) {
            Image(systemName: "line.horizontal.3")
                .imageScale(.large)
        }
    }
    
    private var settingsButton: some View {
        Button(action: {
            // Action for the settings button
        }) {
            Image(systemName: "ellipsis.circle")
                .imageScale(.large)

        }
    }
    
    private var addButton: some View {
        Button(action: {
            // Action to add a new plant
        }) {
            Image(systemName: "plus")
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .font(.largeTitle)
                .clipShape(Circle())
                .shadow(radius: 10) // Optional: Add a shadow for a subtle lift effect
        }
    }
}



// Don't forget to replace "..." with actual data or logic as needed.


#Preview {
    HomeView()
}
