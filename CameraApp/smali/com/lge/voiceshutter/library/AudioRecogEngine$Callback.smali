.class public interface abstract Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;
.super Ljava/lang/Object;
.source "AudioRecogEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/voiceshutter/library/AudioRecogEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAudioEngineStartCallback(I)V
.end method

.method public abstract onAudioEngineStopCallback(I)V
.end method

.method public abstract onAudioRecogErrorCallback(I)V
.end method

.method public abstract onAudioRecogResultCallback(I)V
.end method
