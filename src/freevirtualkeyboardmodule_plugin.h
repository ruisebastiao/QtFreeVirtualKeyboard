#ifndef FREEVIRTUALKEYBOARDMODULE_PLUGIN_H
#define FREEVIRTUALKEYBOARDMODULE_PLUGIN_H

#include <QQmlExtensionPlugin>

class FreeVirtualKeyboardPlugin : public QQmlExtensionPlugin{

    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")

public:
    void registerTypes(const char *uri) Q_DECL_OVERRIDE;
    void initializeEngine(QQmlEngine *engine, const char *uri) Q_DECL_OVERRIDE;
};
#endif // FREEVIRTUALKEYBOARDMODULE_PLUGIN_H
