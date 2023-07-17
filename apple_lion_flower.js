//Greenhouse Class
class GreenHouse {
  constructor(width, height, color, plants) {
    this.width = width;
    this.height = height;
    this.color = color;
    this.plants = plants;
  }

  //Method to add new plants
  addPlants(newPlants) {
    this.plants.push(newPlants);
  }

  //Method to remove existing plants
  removePlants(oldPlants) {
    let index = this.plants.indexOf(oldPlants);
    this.plants.splice(index, 1);
  }

  //Method to update the height of Greenhouse
  updateHeight(newHeight) {
    this.height = newHeight;
  }

  //method to update the color of Greenhouse
  updateColor(newColor) {
    this.color = newColor;
  }

  //Method to get the list of plants
  getListOfPlants() {
    return this.plants;
  }

//Method to get the current height of Greenhouse
  getHeight() {
    return this.height;
  }

  //Method to get the current color of Greenhouse
  getColor() {
    return this.color;
  }

}

//Instance of the Greenhouse
let myGreenHouse = new GreenHouse(5, 10, 'green', []);

//Adding plants to the Greenhouse
myGreenHouse.addPlants('Rose');
myGreenHouse.addPlants('Sunflower');
myGreenHouse.addPlants('Tulip');

//Removing plants to the Greenhouse
myGreenHouse.removePlants('Rose');

//Updating the height of Greenhouse
myGreenHouse.updateHeight(12);

//Updating the color of Greenhouse
myGreenHouse.updateColor('pink');

//Getting the list of plants
let plantsList = myGreenHouse.getListOfPlants();
console.log(plantsList);

//Getting the current height of Greenhouse
let currentHeight = myGreenHouse.getHeight();
console.log(currentHeight);

//Getting the current color of Greenhouse
let currentColor = myGreenHouse.getColor();
console.log(currentColor);