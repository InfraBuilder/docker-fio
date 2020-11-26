FROM alpine
RUN apk --no-cache add fio
ENV	DBENCH_MOUNTPOINT="/data" \
	FIO_SIZE="2G" \
	FIO_OFFSET_INCREMENT="500M" \
	FIO_DIRECT="1"
COPY benchmark.sh /usr/local/bin/
CMD ["/usr/local/bin/benchmark.sh"]
