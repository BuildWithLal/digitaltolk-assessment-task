from fastapi import FastAPI
from datetime import datetime

app = FastAPI(
    title="Digitaltolk",
    description="Find your translator today!"
)

@app.get("/")
async def home():
    return {"success": True, "message": "Welcome to Digitaltolk!. Please visit /datetime to check today's datetime."}


@app.get("/datetime")
async def get_datetime():
    return {"current_datetime": datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
