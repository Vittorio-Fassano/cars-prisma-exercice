import prisma from "../config/database.js";
import { Cars } from "../types/type.js";

async function getCars() {
  return prisma.cars.findMany();
  // const data = await db.query(`SELECT * FROM cars`);
  // return data.rows;
}

async function getCar(id: number) {
  // const data = await db.query(`SELECT * FROM cars WHERE id = $1`, [id]);
  // return data.rows[0];
}

async function getCarWithLicensePlate(licensePlate: string) {
  // const data = await db.query(`SELECT * FROM cars WHERE "licensePlate" = $1`, [licensePlate]);
  // return data.rows[0];
}

async function createCarRepository(cars: Cars) {
  return prisma.cars.create({
    data: cars
  });
}

async function deleteCar(id: number) {
  // await db.query(`DELETE FROM cars WHERE id = $1`, [id]);
}

const carRepository = {
  getCar,
  getCarWithLicensePlate,
  getCars,
  createCarRepository,
  deleteCar
}

export default carRepository;