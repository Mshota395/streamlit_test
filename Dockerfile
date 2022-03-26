FROM python:3.9

COPY . /opt/app
WORKDIR /opt/app


RUN pip3 install -r requirements.txt
# RUN apt-get update && apt-get upgrade -y
# RUN apt-get install -y libgl1-mesa-dev
# RUN mkdir ~/.streamlit
# RUN cp .streamlit/config.toml ~/.streamlit/config.toml

EXPOSE 80

ENTRYPOINT ["streamlit", "run"]
CMD ["main.py"]