const tiger = {
  species: "Tiger",
  age: 5,
  isEndangered: true
};

const elephant = {
  species: "Elephant",
  age: 10,
  isEndangered: true
};

const getSpecies = (animal) => {
  return animal.species;
};

console.log(getSpecies(tiger));

function getAge(animal) {
  return animal.age
}

console.log(getAge(tiger));

function addHabitat(animal, habitat) {
  animal.habitat = habitat
  return animal
}

console.log(addHabitat(tiger, "Rainforest"));

function updateAge(animal, newAge) {
  animal.age = newAge;
  return animal
}

console.log(updateAge(elephant, 12))

//remove the isEndangered property from the animal object
function removeEndangeredStatus(animal) {
  delete animal.isEndangered
  return animal

}

console.log(removeEndangeredStatus(tiger))


//check if the animal object has a habitat property
function hasHabitat(animal) {
  
  if(animal.hasOwnProperty ("habitat")) 
    return true
     else {
    return false
  }
}

console.log(hasHabitat(tiger))
console.log(hasHabitat(elephant))