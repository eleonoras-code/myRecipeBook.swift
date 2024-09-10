import Foundation


struct Recipe {
    let name: String
    let ingredients: [String]
    let instructions: String
}

let recipes: [Recipe] = [
    Recipe(
        name: "pasta al forno",
        ingredients: ["pasta", "tomato sauce", "mozzarella", "parmigiano"],
        instructions: """
        1. cook the pasta.
        2. add the tomato sauce, when the pasta is ready.
        3. layer the pasta with mozzarella and parmigiano in a baking tray.
        4. cook for 40 minutes.
        """
    ),
    Recipe(
        name: "chinese udon noodles",
        ingredients: ["udon noodles", "vegetables (of your choice)", "sesame oil", "soy sauce", "eggs"],
        instructions: """
        1. stir fry the vegetables in sesame oil.
        2. scramble the eggs and let them cook.
        3. add soy sauce.
        4. cook the udon for 3 minutes.
        5. add the cooked udon in the pan where you previously cooked the vegetables.
        6. stir fry everything for 1 minute.
        """
    ),
    Recipe(
        name: "blueberry cheesecake",
        ingredients: ["digestive biscuits", "butter", "cream cheese", "sugar", "fresh cream", "gelatin sheets", "mixed berries", "powdered sugar"],
        instructions: """
        1. crush the digestive biscuits and mix with melted butter. press into a cake tin and refrigerate for 30 minutes.
        2. mix cream cheese with sugar, whip the fresh cream, and gently fold it in.
        3. dissolve gelatin in water and add it to the cheese mixture.
        4. pour the mixture over the biscuit base and refrigerate for at least 4 hours.
        5. decorate with fresh berries and powdered sugar before serving.
        """
    )
]

func showRecipeDetails(recipe: Recipe) {
    print("\n--- \(recipe.name) ---")
    print("Ingredients:")
    for ingredient in recipe.ingredients {
        print("- \(ingredient)")
    }
    print("\nInstructions:")
    print(recipe.instructions)
    
    print("\nPress Enter to return to the menu.")
    _ = readLine()
    showMainMenu()
}

func showMainMenu() {
    print("\nWelcome to the Recipe Book!")
    print("Select a recipe to view details:")
    
    for (index, recipe) in recipes.enumerated() {
        print("\(index + 1). \(recipe.name)")
    }
    print("0. Exit")
    

    if let input = readLine(), let choice = Int(input) {
        if choice == 0 {
            print("Exiting the recipe book. Goodbye!")
            return
        } else if choice > 0 && choice <= recipes.count {
            showRecipeDetails(recipe: recipes[choice - 1])
        } else {
            print("Invalid choice. Please try again.")
            showMainMenu()
        }
    }
}

showMainMenu()

