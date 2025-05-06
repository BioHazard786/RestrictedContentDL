FROM python:3.10-alpine as builder

WORKDIR /app

# Install build dependencies in one layer, use virtual packages
RUN apk add --no-cache --virtual .build-deps \
    git \
    build-base \
    linux-headers

# Install Python packages in the builder
COPY requirements.txt .
RUN pip install --no-cache-dir -U pip wheel==0.45.1 && \
    pip install --no-cache-dir --user -r requirements.txt

# Final stage with minimal image
FROM python:3.10-alpine
WORKDIR /app

# Only install runtime dependencies
RUN apk add --no-cache tzdata ffmpeg && \
    pip install --no-cache-dir -U pip

# Set timezone
ENV TZ=Asia/Kolkata

# Copy Python packages from builder
COPY --from=builder /root/.local /root/.local
ENV PATH=/root/.local/bin:$PATH

# Copy application
COPY . .

CMD ["python3", "main.py"]