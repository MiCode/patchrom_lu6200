.class public abstract Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraBroadCastReceiver.java"


# instance fields
.field protected mFinished:Z

.field protected mMediator:Lcom/lge/camera/Mediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mFinished:Z

    .line 15
    iput-object p1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    .line 16
    return-void
.end method


# virtual methods
.method public abstract onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method
