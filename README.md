# dotnet-gdiplus

#### 介绍
Solution of .NET Core GDI+(Image) on Linux/Docker.

.NET Core does not provide an Image, Bitmap, etc. class by default.Microsoft officially provides a component that provides access to GDI+ graphics functionality - System.Drawing.Common.This seems to be no abnormal.I believe most people use the Windows to develop applications.If we use System.Drawing.Common, we have no problems developing, debugging, and running on Windows.But if we deploy the program to run on Linux, this will get a GDI+ exception, because we can no longer use GDI+ on Linux. libgdiplus(https://github.com/mono/libgdiplus) is C-based implementation of the GDI+ API .We can use it to solve our problem.


#### 编译推送脚本
``` shell
#!/usr/bin/env bash
set -e
docker build -t zbdbx/dotnet-gdiplus .
docker login -u zbdbx -p $Docker_Hub_PASSWORD https://registry-1.docker.io/v2/
docker push zbdbx/dotnet-gdiplus
```
使用  https://hub.docker.com/repository/docker/zbdbx/dotnet-gdiplus
``` shell
docker pull zbdbx/dotnet-gdiplus
```