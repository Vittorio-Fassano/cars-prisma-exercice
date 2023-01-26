import httpStatus from "http-status";
import { Request, Response } from "express";
import carService from "../services/carService.js";
import { Cars } from "../types/type.js";

async function getAllCars(req: Request, res: Response) {
  try {
    const cars = await carService.getCars();
    res.status(200).send(cars);
    return;
  } catch (e) {
    console.log(e);
    return res.sendStatus(httpStatus.INTERNAL_SERVER_ERROR);
  }
}

async function getSpecificCar(req: Request, res: Response) {
  const id = parseInt(req.params.carId);
  try {
    const car = await carService.getCar(id);
    res.send(car);
  } catch (e) {
    if (e.name === "NotFoundError") {
      return res.sendStatus(httpStatus.NOT_FOUND);
    }
  }
}

async function createCar(req: Request, res: Response) {
  const cars = req.body as Cars;

  try {
    const result = await carService.createCar(cars);
    console.log(result)
    return res.send(result);
  } catch (e) {
    console.log(e);
    if (e.name === "ConflictError") {
      return res.sendStatus(httpStatus.CONFLICT);
    }

    return res.sendStatus(httpStatus.INTERNAL_SERVER_ERROR);
  }
}

async function deleteCar(req: Request, res: Response) {
  const carId = parseInt(req.params.carId);

  try {
    await carService.deleteCar(carId);
    res.send(httpStatus.OK);
  } catch (e) {
    console.log(e);
    if (e.name === "NotFoundError") {
      return res.sendStatus(httpStatus.NOT_FOUND);
    }

    return res.sendStatus(httpStatus.INTERNAL_SERVER_ERROR);
  }
}

const carController = {
  getAllCars,
  getSpecificCar,
  createCar,
  deleteCar
}

export default carController;