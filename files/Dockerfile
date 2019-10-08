FROM python:3

ADD ./anagram.py .
ENV STRING_ONE "not"
ENV STRING_TWO "anagram"

CMD [ "sh", "-c", "python ./anagram.py ${STRING_ONE} ${STRING_TWO}"]