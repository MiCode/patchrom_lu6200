.class public Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;
.super Ljava/lang/Object;
.source "OlaExifInterfaceJNI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraApp"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 16
    :try_start_0
    const-string v2, "OlaLGECameraJNI"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    const-string v2, "CameraApp"

    const-string v3, "OlaExifInterfaceJNI-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, se:Ljava/lang/SecurityException;
    :try_start_1
    const-string v2, "CameraApp"

    const-string v3, "SecurityException"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    const-string v2, "CameraApp"

    const-string v3, "OlaExifInterfaceJNI-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    .end local v0           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 20
    .local v1, ule:Ljava/lang/UnsatisfiedLinkError;
    :try_start_2
    const-string v2, "CameraApp"

    const-string v3, "UnsatisfiedLinkError"

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    const-string v2, "CameraApp"

    const-string v3, "OlaExifInterfaceJNI-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #ule:Ljava/lang/UnsatisfiedLinkError;
    .restart local v0       #se:Ljava/lang/SecurityException;
    :catchall_0
    move-exception v2

    .end local v0           #se:Ljava/lang/SecurityException;
    const-string v3, "CameraApp"

    const-string v4, "OlaExifInterfaceJNI-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native create()I
.end method

.method public static native destroy()I
.end method

.method public static native generate()[B
.end method

.method public static native get(IILcom/lge/olaworks/datastruct/Ola_ExifInfo$Ifd;)I
.end method

.method public static native initialize(Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;)I
.end method

.method public static native load(Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;)I
.end method

.method public static native setByteArray(IIII[B)I
.end method

.method public static native setGpsUrational(IIIILcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;)I
.end method

.method public static native setInt(IIIII)I
.end method

.method public static native setPrimaryImg([B)I
.end method

.method public static native setThumbNail(I[B)I
.end method

.method public static native setUrational(IIIILcom/lge/olaworks/datastruct/Ola_ExifUrational;)I
.end method

.method public static native stripJpegHeader([B)[B
.end method
