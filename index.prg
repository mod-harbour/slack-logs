// {% LoadHRB('lib/mercury/mercury.hrb') %}

#include {% MercuryInclude('lib/mercury') %}

function Main()
    local oApp
    
    DEFINE APP oApp
    
    DEFINE ROUTE 'root' URL '/' VIEW 'root.view' METHOD 'GET' OF oApp
    
    INIT APP oApp
return nil
