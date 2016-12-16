#!/usr/bin/env bash

set -ev

test "${TRAVIS_PULL_REQUEST}" == "false"
test "${TRAVIS_BRANCH}" == "master"

# Pushing yqlplus_language
cd yqlplus_language
mvn deploy --settings ../travis/settings.xml
cd ..

# Pushing yqlplus_source_api
cd yqlplus_source_api
mvn deploy --settings ../travis/settings.xml
cd ..

# Pushing yqlplus_engine
cd yqlplus_engine
mvn deploy --settings ../travis/settings.xml
cd ..

# Pushing yqlplus_stdlib
cd yqlplus_stdlib
mvn deploy --settings ../travis/settings.xml
cd ..
