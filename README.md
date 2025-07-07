# Pocket-Brain

To start the Flutter client, run:
```
cd app
flutter pub get
flutter run
```

To start the FastAPI server, run:
```
cd api
uv sync
uvicorn main:app --port 55555 --reload
```

Simpler justfile to start the project with a single command coming soon :)

(Also .env does not contain any sensitive information, thus sharing it directly. It will be replaced with .env.example once it is populated with sensitive information.)