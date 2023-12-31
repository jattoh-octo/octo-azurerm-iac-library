#!/bin/bash

set -e

echo "Assigning ${DISPLAY_NAME} as ${MI_NAME} admin"
az sql mi ad-admin create -u ${DISPLAY_NAME} --mi ${MI_NAME} -i ${OBJECT_ID} -g ${RG_NAME}
echo "${DISPLAY_NAME} assigned as ${MI_NAME} admin"