from fastapi import FastAPI
import os

app = FastAPI()

example_variable = os.environ.get("EXAMPLE_VARIABLE", "Default Value")

@app.get("/")
def read_root():
    return {"Hello": "World", "ConfigMap_Variable": example_variable, "tag": 201}
