.class public interface abstract Lcom/lge/olaworks/library/AutoPanorama$Callback;
.super Ljava/lang/Object;
.source "AutoPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/olaworks/library/AutoPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onComplete([B)V
.end method

.method public abstract onPanningSpeedWarning(Z)V
.end method

.method public abstract onProcessFrame(Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;)V
.end method

.method public abstract onSynthesisProgressUpdate(I)V
.end method
