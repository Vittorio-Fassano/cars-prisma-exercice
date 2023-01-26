// import notFoundError from "../errors/notFoundError.js";
// import conflictError from "../errors/conflictError.js";
import carRepository from "../repository/carRepository.js";
import { Cars } from "../types/type.js";

async function getCars() {
  const cars = await carRepository.getCars();
  return cars;
}

async function getCar(id: number) {
  const car = await carRepository.getCar(id);
  return car;
}

async function createCar(cars: Cars) {
  const car = await carRepository.createCarRepository(cars);
  return car;
}

async function deleteCar(id: number) {
  const deleteCar = await carRepository.deleteCar(id);
  return deleteCar;
}

const carService = {
  getCars,
  getCar,
  createCar,
  deleteCar
}

export default carService;