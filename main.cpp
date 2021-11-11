#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QtSerialPort>
#include <QSerialPortInfo>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    QStringList portlist;
    portlist.append("port 1");
    portlist.append("port 2");
    portlist.append("port 3");

    return app.exec();
}
