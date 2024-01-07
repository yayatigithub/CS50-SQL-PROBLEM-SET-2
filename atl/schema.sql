CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE "airlines" (
    "id" INTEGER,
    "name" TEXT,
    "concourse" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "flights" (
    "id" INTEGER,
    "flight_number" INTEGER,
    "airline_id" INTEGER,
    "from_airport_code" TEXT,
    "to_airport_code" TEXT,
    "departure_datetime" DATETIME,
    "arrival_datetime" DATETIME,
    FOREIGN KEY ("airline_id") REFERENCES "airlines"("id")
);

CREATE TABLE "check ins" (
    "id" INTEGER,
    "flight_id" INTEGER,
    "passenger_id" INTEGER,
    "datetime" DATETIME,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("passenger_id") REFERENCES "passengers"("id"),
    FOREIGN KEY ("flight_id") REFERENCES "flights"("id")
);

