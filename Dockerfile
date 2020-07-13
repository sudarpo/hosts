FROM python:3.8.3-slim-buster

LABEL maintainer="sudarpo.chong@gmail.com"
# RUN apt install git
# RUN git pull -v StevenBlack_hosts master

WORKDIR /work
ADD ./ /work

RUN mkdir /work/output

RUN pip3 install --user -r requirements.txt

# RUN python updateHostsFile.py --auto --nogendata --extensions porn fakenews gambling --noupdate --output output
# CMD ["python", "updateHostsFile.py", "--auto", "--extensions", "porn", "fakenews", "gambling", "--noupdate", "--compress", "--output", "output"]
# CMD ["python", "updateHostsFileD.py"]

ENTRYPOINT ["python", "updateHostsFile.py", "--auto", "--nogendata", "--output", "output", "--extensions", "porn", "fakenews", "gambling"]
CMD ["--compress"]

# Sample usage
# build docker image  
# docker build -t sudarpo/sb-hosts:1.0 .

# run and bind volume
# docker container run -v C:\_SC\files\mine\test-hosts:/work/output --rm sudarpo/sb-hosts:1.0 --noupdate
# docker container run -v C:\_SC\files\mine\test-hosts:/work/output --rm sudarpo/sb-hosts:1.0 --noupdate --compress