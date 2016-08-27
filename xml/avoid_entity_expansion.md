# Avoid entity expansion

Many XML parsers support entity expansion, this is however a security issue, the issue is called *XML BOMB* since you can get a XML parser to do recursive expansion of entities, letting the XML parser hug all resources.