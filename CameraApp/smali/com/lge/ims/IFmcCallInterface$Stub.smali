.class public Lcom/lge/ims/IFmcCallInterface$Stub;
.super Ljava/lang/Object;
.source "IFmcCallInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/ims/IFmcCallInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/ims/IFmcCallInterface;
    .locals 1
    .parameter "ib"

    .prologue
    .line 9
    const/4 v0, 0x0

    return-object v0
.end method
