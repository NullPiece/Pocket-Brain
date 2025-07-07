from fastapi import FastAPI

from api.routers import api_router

app = FastAPI()

app.include_router(api_router)

@app.get("/")
async def home():
    return {"msg": "Welcome to API!"}


