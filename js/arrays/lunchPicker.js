const lunches = []

function addLunchToEnd(arr, item) {
  arr.push(item)
  console.log(`${item} added to the end of the lunch menu.`)
  return arr
}

function addLunchToStart(arr, item) {
  arr.unshift(item)
  console.log(`${item} added to the start of the lunch menu.`)
  return arr
}

function removeLastLunch(arr) {
  if(arr.length === 0) {
  console.log("No lunches to remove.")
  return arr
}
  const item = arr.pop();
  console.log(`${item} removed from the end of the lunch menu.`);
  return arr;
}

function removeFirstLunch(arr) {
  if(arr.length === 0) {
    console.log("No lunches to remove.")
    return arr;
  }
  const item = arr.shift();
  console.log(`${item} removed from the start of the lunch menu.`)
  return arr; 
}

function getRandomLunch(arr) {
  if(arr.length === 0) {
    console.log("No lunches available.")
    return arr
  }
  const item = arr[Math.floor(Math.random() * arr.length)]
  console.log(`Randomly selected lunch: ${item}`)
  return arr

}

function showLunchMenu(arr) {
  if(arr.length === 0) {
    console.log("The menu is empty.")
    return arr
  }
  console.log(`Menu items: ${arr.join(", ")}`);
  return arr; 
}