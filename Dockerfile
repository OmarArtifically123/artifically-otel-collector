FROM otel/opentelemetry-collector:latest
COPY otel-collector-config.yaml /etc/otel/config.yaml

# Expose OTLP ports
EXPOSE 4317
EXPOSE 4318

CMD ["--config=/etc/otel/config.yaml"]