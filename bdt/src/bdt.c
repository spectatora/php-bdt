#include <php.h>
#include "bdt.h"


zend_function_entry bdt_functions[] = {
        PHP_FE(bdt_present, NULL)
        PHP_FE_END
};

zend_module_entry ot_module_entry = {
            STANDARD_MODULE_HEADER,
        PHP_BDT_EXTNAME,
        bdt_functions,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        PHP_BDT_VERSION,
        STANDARD_MODULE_PROPERTIES,
};

ZEND_GET_MODULE(ot);

PHP_FUNCTION(bdt_present) {
            php_printf("BDT is present!");
};



