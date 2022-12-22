FROM jupyter/datascience-notebook:python-3.9.6

# Environment: Udacity AI Trading, Python 3.6
## Install Udacity AI environment
## Doc: https://sites.northwestern.edu/summerworkshops/resources/adding-python-3-to-jupyter-notebooks/
# Install Virtual Environments
RUN conda create -y -n Freestyle python=3.9 ipykernel && \
  conda create -y -n Freestyle38 python=3.8 ipykernel && \
  conda create -y -n UdacityAI python=3.6 ipykernel


# Environment: Freestyle, Python 3.9
## Install Freestyle environment
## Doc: https://sites.northwestern.edu/summerworkshops/resources/adding-python-3-to-jupyter-notebooks/
RUN source activate Freestyle && \
  pip install --upgrade jupyter_client && \
  python -m ipykernel install --user --name Freestyle --display-name "Freestyle (3.9)"


# Environment: Freestyle, Python 3.8
## Install Python 3.8 environment
RUN source activate Freestyle38 && \
  pip install --upgrade jupyter_client && \
  python -m ipykernel install --user --name Freestyle38 --display-name "Freestyle (3.8)"

## Install Python Deps for Freestyle38
RUN pip3 install \
  # Data Science
  numpy \
  pandas \
  alphalens \
  tqdm \
  # Machine Learning
  torch torchvision \
  ## NLP
  nltk \
  scikit-learn


# Environment: UdacityAI, Python 3.6
## Install UdacityAI environment
RUN source activate UdacityAI && \
  pip install --upgrade jupyter_client && \
  python -m ipykernel install --user --name UdacityAI --display-name "UdacityAI (3.6)"

## Install Python Deps for UdacityAI
RUN pip3 install \
  # Data Science
  numpy \
  pandas \
  alphalens \
  tqdm \
  # Machine Learning
  torch torchvision \
  ## NLP
  nltk \
  scikit-learn



