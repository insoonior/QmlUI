﻿#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl("qrc:/QmlUI/main.qml"));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}