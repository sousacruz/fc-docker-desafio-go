FROM scratch

COPY ./go/src/app/fullcycle /

CMD ["/fullcycle"]