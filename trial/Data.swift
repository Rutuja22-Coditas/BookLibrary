

import Foundation

struct allData{
    var sectionTitle : String
    var sectionImage : String
    var imageGallery : [imageGallery]
}
struct imageGallery {
    var image : String
    var title1 : String?
    var title2 : String?
    var url : String
    var checkMark : Bool
}

var arrayOfData = [
 
    allData(sectionTitle: "Action and Adventure",sectionImage: "ActionAndAdventure" ,imageGallery: [imageGallery(image: "HarryPotterPoster", title1: "Harry Potter", title2: "J.K.Rowling", url: "https://en.wikipedia.org/wiki/Harry_Potter", checkMark: false),imageGallery(image: "OriginPoster", title1: "Origin", title2: "Dan Bown", url: "https://en.wikipedia.org/wiki/Origin_(Brown_novel)", checkMark: false),imageGallery(image: "TheAlchemistPoster", title1: "The Alchemist", title2: "Paulo coelho", url: "https://en.wikipedia.org/wiki/The_Alchemist_(novel)", checkMark: false),imageGallery(image: "TreasureIselandPoster", title1: "Treasure Iseland", title2: "Robert Louis", url: "https://en.wikipedia.org/wiki/Treasure_Island",checkMark:false),imageGallery(image: "ThePrincessBridePoster", title1: "The Princess Bride", title2: "Willium Goldmann", url: "https://en.wikipedia.org/wiki/The_Princess_Bride_(novel)",checkMark: false)]),
    
    allData(sectionTitle: "Historical Fiction",sectionImage: "HistoricalFiction" , imageGallery: [imageGallery(image: "TheLightWeCannotSeePoster", title1: "All The Light", title2: "Anthony Doerr", url: "https://en.wikipedia.org/wiki/All_the_Light_We_Cannot_See",checkMark: false),imageGallery(image: "TheBookThiefPoster", title1: "The Book Thief", title2: "Markus Zusak", url: "https://en.wikipedia.org/wiki/The_Book_Thief",checkMark: false), imageGallery(image: "WarAndPeacePoster", title1: "War And Peace", title2: "Leo Tolstoy", url: "https://en.wikipedia.org/wiki/War_and_Peace",checkMark: false)]),
////
    allData(sectionTitle: "Biography",sectionImage: "Biography" , imageGallery: [imageGallery(image: "SteveJobsPoster", title1: "Steve Jobs", title2: "Walter Isaacson", url: "https://en.wikipedia.org/wiki/Steve_Jobs_(book)",checkMark: false),imageGallery(image: "BecomingPoster", title1: "Becoming", title2: "Michelle Obama", url: "https://en.wikipedia.org/wiki/Becoming_(book)",checkMark: false), imageGallery(image: "LongWalktofreedomPoster", title1: "Long Walk to freedom", title2:"Nelson Mandela", url:"https://en.wikipedia.org/wiki/Long_Walk_to_Freedom",checkMark: false),imageGallery(image: "WingsofFirePoster", title1: "Wings of Fire", title2: "APJ Abdul Kalam", url: "https://en.wikipedia.org/wiki/Wings_of_Fire_(autobiography)",checkMark: false)])
]

//    allData(sectionTitle: "Philosophy",sectionImage: "Philosophy", imageGallery: [imageGallery(image: "BeyondGoodAndEvilPoster", title1: "Beyond Good And Evil", title2: "Friedrich Nietzsche",url: "",checkMark: false),imageGallery(image: "NichomacheanEthicsPoster", title1: "Nichomachean Ethics", title2:"Arsitotle",url: "",checkMark: false)]),
    
   

//    allData(sectionTitle: "Travel",sectionImage: "Travel", imageGallery: [imageGallery(image: "IntoTheWildPoster", title1: "I The Wild", title2: "Jon Krakruer", url: "https://en.wikipedia.org/wiki/Into_the_Wild_(book)",checkMark: false ),imageGallery(image: "OntheRoadPoster", title1: "On the Road", title2: "Jack Karouac", url: "https://en.wikipedia.org/wiki/On_the_Road",checkMark: false)])


