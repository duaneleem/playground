#!/bin/bash

# TODO: Give Jupyter Notebooks permissions.
docker exec -it jupyter-server-personal-jupyter-1 /bin/bash -c "chown -R jovyan:users /home/jovyan/warriortrading/warriortrading.marketo.crm-sync/notebooks"

echo 'COMPLETED: Jupyter Notebook folders were updated'

