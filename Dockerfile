
FROM microsoft/dotnet:2.2.0-aspnetcore-runtime
#COPY sources.list /etc/apt/
RUN cat /etc/apt/sources.list \
    && apt-get update -y \
    && apt-get install -y libgdiplus \
    && apt-get clean \
    && ln -s /usr/lib/libgdiplus.so /usr/lib/gdiplus.dll