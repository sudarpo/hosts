FROM python:3.8.3-slim-buster

LABEL maintainer="sudarpo.chong@gmail.com"
# RUN apt install git
# RUN git pull -v StevenBlack_hosts master

WORKDIR /work
ADD ./ /work

RUN mkdir /work/output

RUN pip3 install --user -r requirements.txt

# RUN python updateHostsFile.py --auto --extensions porn fakenews gambling --noupdate --output output
# CMD ["python", "updateHostsFile.py", "--auto", "--extensions", "porn", "fakenews", "gambling", "--noupdate", "--compress", "--output", "output"]
CMD ["python", "updateHostsFileD.py"]

# build docker image  
# docker build -t sudarpo/sb-hosts:1 .

# run and bind volume
# docker container run -v C:\somefolder\output:/work/output -e COMPRESS=1  sudarpo/sb-hosts:1
# docker container run -v C:\somefolder\output:/work/output -e COMPRESS=1 -e UPDATE=1 sudarpo/sb-hosts:1