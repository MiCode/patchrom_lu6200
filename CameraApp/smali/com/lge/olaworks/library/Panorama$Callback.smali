.class public interface abstract Lcom/lge/olaworks/library/Panorama$Callback;
.super Ljava/lang/Object;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/olaworks/library/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCapture(I)V
.end method

.method public abstract onComplete([BI)V
.end method

.method public abstract onError()V
.end method

.method public abstract onProcessFrame(Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;)V
.end method
