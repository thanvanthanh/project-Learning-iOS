//
//  data.swift
//  HoWing
//
//  Created by Ishipo on 28/04/2021.
//

import Foundation
import  CardSlider

struct mainData {
    var image: String
    var title : String
    var source  : String
    var ingredients : String
    var Nutrition : String
    var timeCooking : String
    var discription : String
    
    
}

struct Item: CardSliderItem {
    var image: UIImage
    
    var title: String
    
    var rating: Int?
    
    
    var subtitle: String?
   
    var description: String?
}
    



func updatedata() -> [mainData] {
    let data1 = mainData(image: "dish1", title: "EASY VEGAN ALFREDO SAUCE", source: "THIS HEALTHY KITCHEN", ingredients: "raw cashews,onion,garlic,lemon juice,nutritional yeast,low sodium vegetable broth" , Nutrition: "140 Calories", timeCooking: "5 Minutes", discription: "Soak the cashews overnight. They form the base of this alfredo sauce.Add the drained cashews into a high-powered blender along with garlic, lemon juice, onion, nutritional yeast and some herbs.Blend everything together on high until creamy and voila – a super simple and amazingly delicious vegan alfredo sauce.")
    let data2 = mainData(image: "dish2", title: "INDIAN BAIGAN BARTA ", source: "ONE GREEN PLANET", ingredients: "2 large eggplants,4 tablespoons oil divided,1 teaspoon cumin seeds,1 large white onion,5 garlic cloves,1- inch knob ginger,1-2 Serrano pepper ", Nutrition: "190 Caloris" , timeCooking: "40 Minutes", discription:"Heat oil in a pan and add nigella seeds. After 30 seconds, add garlic, ginger, chopped chillies and onions. Stir fry till the onions are soft and add tomatoes, chilli powder, coriander powder, turmeric and salt. Mix well, and cover and cook till the tomatoes are soft and pulpy. Add the chopped baingan and mix well. Cover and cook for another 3-4 minutes while stirring occasionally. Add chopped coriander, mix and serve hot.")
    
    
    let data3 = mainData(image: "dish3", title: "Homemade Apple Pie Spice Blend", source: "DELICIOUS OBSESSIONS", ingredients: "ground cinnamon, ground ginger, ground allspice, ground nutmeg, ground cardamom", Nutrition: "45 Calories", timeCooking: "15 Minutes", discription: "Combine spices in a small bowl, mix well to combine. Store in a small jar or spice container")
    
    let data4 = mainData(image: "dish4", title: "Pan Fried Brussels Sprouts", source: "I HEART BEGETABLES", ingredients: " Sprouts(halved), olive oil, sliced almods, sailt, pepper", Nutrition: "100 Calories", timeCooking: "15 Minutes", discription: "Saute diced turkey bacon, shallots, and garlic in a large pan with oil. I use shallots and freshly minced garlic to add more flavor to this side dish. The shallots give the dish a bit of subtle sweetness when they are cooked.Add your halved Brussels Sprouts, stir, and allow them to cook undisturbed for a few minutes to get that nice golden brown color. Stir again, cover with a lid, and let them steam for a few minutes, or until they are cooked to your liking.Then add the pine nuts and Parmesan cheese. Stir in some fresh herbs. Top generously with freshly grated Parmesan.")
    
    let data5 = mainData(image: "dish5", title: "The Best Ever Cauliflower Rice", source: "SWEET C'S DESIGNS", ingredients: "medium-sized head of cauliflower, ablespoons sesame oi, carrot, cubed, garlic cloves, minced, frozen edamame", Nutrition: "100 Calories", timeCooking: "45 Minutes", discription: "Shred cauliflower using the largest side of a grater OR by just pulsing some rough cut pieces in a food processor; the end product should resemble smallish grains of rice.Heat 1 tablespoon sesame oil in a large skillet over medium low heat. Add the carrots and garlic and stir fry until fragrant, about 5 minutes. Add the cauliflower, edamame, and remaining sesame oil to the pan; stir fry quickly to cook the cauliflower to a soft (but not mushy) texture.Make a well in the middle, turn the heat down, and add the eggs. Stir gently and continuously until the eggs are fully cooked. Stir in the soy sauce and green onions just before serving.")
    return [data1, data2, data3, data4, data5]
}


func updateCardSlider() -> [Item] {
    let data1 = Item(image: UIImage(named: "IMAGE1-1")!, title: "Keto", rating: nil, subtitle: "Healthy", description: "The keto diet is a very low-carb, higher-fat diet.")
    let data2 = Item(image: UIImage(named: "exp2")!, title: "Intermittent fasting", rating: nil, subtitle: "Diet", description: "Easy for everyone")
    let data3 = Item(image: UIImage(named: "exp3")!, title: "Gordon Ramsay", rating: nil, subtitle: "Celebrity", description: "abc")
    let data4 = Item(image: UIImage(named: "exp4")!, title: "Anthony Bourdain", rating: nil, subtitle: "Celebrity", description: "abc")
    let data5 = Item(image: UIImage(named: "dish5")!, title: "abc", rating: nil, subtitle: "cde", description: "efg")
    
    return [data1 , data2 , data3 ,data4,data5]
}
