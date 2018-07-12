module com.yahoo.yqlplus.language {
    requires jsr305;
    requires antlr4.runtime;
    requires com.google.common;
    requires com.google.guice;
    requires com.fasterxml.jackson.core;
    requires com.fasterxml.jackson.databind;
    exports com.yahoo.yqlplus.language.logical;
    exports com.yahoo.yqlplus.language.operator;
    exports com.yahoo.yqlplus.language.parser;
}