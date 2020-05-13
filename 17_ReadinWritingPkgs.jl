# THIS CODE IS DEPRECATED for 0.5.2

#Pkg.add("PkgDev")

# now we have to use in julia REPL ] then add "Package name"

import PkgDev
using Pkg

PkgDev.enable_pkgbutler("Volume")

Pkg.test("Volume")


