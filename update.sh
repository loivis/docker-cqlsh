#!/bin/bash

pip list -o | grep cqlsh && {
    pip install -U cqlsh && {
        cd $(dirname $0)
        VERSION=$(pip search cqlsh | grep -i latest | awk '{print $2}')
        sed -i "" "s/CQLSH_VERSION=.*/CQLSH_VERSION=${VERSION}/" Dockerfile
        git add .
        git commit -m "update cqlsh version to ${VERSION}"
        git push
    }
} || {
    echo "cqlsh is up to date"
}
