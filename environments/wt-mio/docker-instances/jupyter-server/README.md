# Jupyter Server for WT Mio

Creates a Jupyter server to experiment on Machine Learning or Python operations.

## Create .env

Use the following template to create the .env in this folder:

```sh
# UID and GID of local user/group outside of Docker.
# Echo the following vars from your computer to find out: UID, GID
PROJECT_NB_UID=1001
PROJECT_NB_GID=1001

# Add additional locations where notebooks are stored.
MARKETO_CRM_NOTEBOOKS=/location/of/notebook/folder

# Warrior Trading
MARKETO_REST_URL_WT=
MARKETO_CLIENT_ID_WT=
MARKETO_CLIENT_SECRET_WT=

# Day Trade Dash
MARKETO_REST_URL_DTD=
MARKETO_CLIENT_ID_DTD=
MARKETO_CLIENT_SECRET_DTD=

```
