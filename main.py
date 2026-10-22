from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {"message": "Welcome to my DevOps Project"}

@app.get("/products")
def get_products():
    return {
        "products": [
            {"id": 1, "name": "Laptop", "price": 1000},
            {"id": 2, "name": "Mobile", "price": 500}
        ]
    }
# Testing automatic CI pipeline trigger