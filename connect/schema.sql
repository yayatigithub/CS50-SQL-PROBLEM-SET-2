CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "username" TEXT UNIQUE,
    "password" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "schools" (
    "id" INTEGER,
    "name" TEXT,
    "school_type" TEXT,
    "location" TEXT,
    "foundation_year" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "name" TEXT,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "userConnections" (
    "user1_id" INTEGER,
    "user2_id" INTEGER,
    PRIMARY KEY("user1_id", "user2_id"),
    FOREIGN KEY ("user1_id") REFERENCES "users"("id"),
    FOREIGN KEY ("user2_id") REFERENCES "users"("id")
);

CREATE TABLE "userSchools" (
    "user_id" INTEGER,
    "school_id" INTEGER,
    "start" DATE,
    "end" DATE,
    "degree" TEXT,
    PRIMARY KEY("user_id", "school_id"),
    FOREIGN KEY ("user_id") REFERENCES "users"("id"),
    FOREIGN KEY ("school_id") REFERENCES "schools"("id")
);

CREATE TABLE "userCompanies" (
     "user_id" INTEGER,
     "company_id" INTEGER,
     "start" DATE,
     "end" DATE,
     "title" TEXT,
     PRIMARY KEY("user_id", "company_id"),
     FOREIGN KEY ("user_id") REFERENCES "users"("id"),
     FOREIGN KEY ("company_id") REFERENCES "companies"("id")
);
