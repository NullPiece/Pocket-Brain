from pydantic_settings import BaseSettings, SettingsConfigDict
from typing import Optional

class Settings(BaseSettings):
    """
    Application settings loaded from env files
    """
    
    APP_NAME: str = "Pocket-Brain"
    HOST: str
    PORT: int
    
    model_config = SettingsConfigDict(
        env_file=".env",
        env_file_encoding="utf-8",
        extra="ignore"
    )
    
SETTINGS = Settings()