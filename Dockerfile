# Choose a base operating system
FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade -y && apt-get install -y python3

COPY pi.py /code/pi.py
RUN chmod +rx /code/pi.py 

ENV PATH "/code:$PATH"

CMD ["pi.py", "-h"]

# # Update and install necessary packages
# RUN apt-get update && apt-get upgrade -y \
#   && apt-get install -y wget unzip default-jdk libfindbin-libs-perl

# # Install the application
# RUN wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.8.zip \
#     && unzip fastqc_v0.11.8.zip \
#     && rm fastqc_v0.11.8.zip \
#     && chmod 755 /FastQC/fastqc

# # Use environment variable to add executable to PATH
# ENV PATH "/FastQC:$PATH"
