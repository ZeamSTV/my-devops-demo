# Sử dụng Python base image
FROM python:3.9-slim

# Đặt thư mục làm việc trong container
WORKDIR /app

# Copy toàn bộ mã nguồn vào container
COPY ./app /app

# Cài đặt các thư viện yêu cầu
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Lệnh để chạy ứng dụng
CMD ["python", "app.py"]
