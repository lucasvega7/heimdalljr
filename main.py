import uvicorn
from fastapi import FastAPI
app = FastAPI()

@app.post("/auth")
def auth(token_heimdall):
    if(token_heimdall=="abc111"):
        return {"message" : True}
    else:
        return {"message" : False}
     