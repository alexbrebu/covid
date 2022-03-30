FROM jupyter/datascience-notebook as jupyter-base

COPY ./requirements.txt ./
RUN pip install --upgrade pip \
 && pip install -r requirements.txt

CMD exec start-notebook.sh --NotebookApp.token=''
