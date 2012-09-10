.class public Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;
.super Ljava/lang/Object;
.source "OlaFaceDetectorJNI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraApp"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 25
    :try_start_0
    const-string v2, "OlaLGECameraJNI"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    const-string v2, "CameraApp"

    const-string v3, "OlaFaceDetectorJNI-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, se:Ljava/lang/SecurityException;
    :try_start_1
    const-string v2, "CameraApp"

    const-string v3, "SecurityException"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    const-string v2, "CameraApp"

    const-string v3, "OlaFaceDetectorJNI-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    .end local v0           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 29
    .local v1, ule:Ljava/lang/UnsatisfiedLinkError;
    :try_start_2
    const-string v2, "CameraApp"

    const-string v3, "UnsatisfiedLinkError"

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    const-string v2, "CameraApp"

    const-string v3, "OlaFaceDetectorJNI-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #ule:Ljava/lang/UnsatisfiedLinkError;
    .restart local v0       #se:Ljava/lang/SecurityException;
    :catchall_0
    move-exception v2

    .end local v0           #se:Ljava/lang/SecurityException;
    const-string v3, "CameraApp"

    const-string v4, "OlaFaceDetectorJNI-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native create()I
.end method

.method public static native destroy()I
.end method

.method public static native getProcessInfo(Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;)I
.end method

.method public static native initialize()I
.end method

.method public static native processImageBitmap(Landroid/graphics/Bitmap;I)I
.end method

.method public static native processImageRaw(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I
.end method

.method public static native processPreviewBitmap(Landroid/graphics/Bitmap;I)I
.end method

.method public static native processPreviewRaw(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I
.end method
