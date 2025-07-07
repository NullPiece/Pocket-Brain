from fastapi import APIRouter
from schema.test_schema import TestSchema

router = APIRouter(
    prefix="/test",
    tags=["test"],
    responses={404: {"Description": "Not Found"}},
)

@router.get("/")
def test():
    return TestSchema(
        msg=f"Hello from Test"
    )