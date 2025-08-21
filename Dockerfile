FROM    python:3.12.11-slim
LABEL   authors="danilakozlov"
WORKDIR /paidposts
COPY    . .
RUN     python3 -m pip install --no-cache-dir -r requirements.txt
WORKDIR /
CMD     ["python", "-m", "paidposts.bot.main"]