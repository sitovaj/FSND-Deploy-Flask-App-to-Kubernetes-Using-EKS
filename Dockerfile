# FROM python:stretch

# COPY . /app
# WORKDIR /app

# RUN pip install --upgrade pip
# RUN pip install requirements.txt



# ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

#Due to error followed instruction from https://knowledge.udacity.com/questions/119519

FROM python:stretch
 
WORKDIR /usr/src/app
COPY * ./

RUN pip install --no-cache-dir -r ./requirements.txt
RUN pip install flask gunicorn
RUN ls -ltr ./
RUN ls -ltr /usr/src/app/

CMD ["gunicorn","-b",":8080","main:APP"]