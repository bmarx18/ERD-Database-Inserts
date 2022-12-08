CREATE TABLE "sales_employee" (
  	"employee_id" SERIAL PRIMARY KEY,
  	"first_name" VARCHAR(50),
  	"last_name" VARCHAR(50)
);

CREATE TABLE "payment_source" (
  	"payment_id" SERIAL PRIMARY KEY,
  	"payment_type" VARCHAR(50),
  	"down_payment" NUMERIC(10, 2),
  	"loan_establishment" VARCHAR(50),
  	"loan_amount" NUMERIC(10,2)
);

CREATE TABLE "service_employee" (
	"service_employee_id" SERIAL PRIMARY KEY,
  	"first_name" VARCHAR(50),
  	"last_name" VARCHAR(50),
  	"service_id" VARCHAR(50)
);

CREATE TABLE "customer" (
	"customer_id" SERIAL PRIMARY KEY,
  	"first_name" VARCHAR(50),
  	"last_name" VARCHAR(50),
  	"email_address" VARCHAR(75),
  	"payment_method" VARCHAR(50),
  	"phone_number" INTEGER
);

CREATE TABLE "car" (
	"vin_number" SERIAL PRIMARY KEY,
 	"year" INTEGER,
  	"make" VARCHAR(50),
  	"model" VARCHAR(50),
  	"condition" VARCHAR(50),
  	"price" INTEGER,
  	"inventory_status" VARCHAR(50),
	"payment_id" INTEGER,
  	FOREIGN KEY ("payment_id") REFERENCES "payment_source"("payment_id")
);

CREATE TABLE "sales_invoice" (
 	"invoice_id" SERIAL PRIMARY KEY,
 	"discount_code" VARCHAR(50),
 	"total" NUMERIC(10,2),
 	"total_loan_amount" NUMERIC(10,2),
	"customer_id" INTEGER,
	"vin_number" INTEGER,
	"payment_id" INTEGER,
	FOREIGN KEY ("customer_id")REFERENCES "customer"("customer_id"),
 	FOREIGN KEY ("vin_number")REFERENCES "car"("vin_number"),
 	FOREIGN KEY ("payment_id") REFERENCES "payment_source" ("payment_id")
);

CREATE TABLE "service_history" (
  	"history_id" SERIAL PRIMARY KEY,
	"service_employee_id" INTEGER,
	"vin_number" INTEGER,
  	FOREIGN KEY ("service_employee_id") REFERENCES "service_employee" ("service_employee_id"),
  	FOREIGN KEY ("vin_number") REFERENCES "car" ("vin_number")
);

CREATE TABLE "parts" (
  	"part_id" SERIAL PRIMARY KEY,
  	"description" VARCHAR(50),
  	"stock_status" VARCHAR(50),
  	"price" NUMERIC(10,2),
  	"quantity" INTEGER
);

CREATE TABLE "service_invoice" (
  	"invoice_id" SERIAL PRIMARY KEY,
  	"date" VARCHAR(50),
  	"discount" VARCHAR(50),
  	"toal" NUMERIC(10,2),
	"part_id" INTEGER,
	"customer_id" INTEGER,
	"service_employee_id" INTEGER,
  	FOREIGN KEY ("part_id") REFERENCES "parts" ("part_id"),
	FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id"),
  	FOREIGN KEY ("service_employee_id") REFERENCES "service_employee" ("service_employee_id")
);
