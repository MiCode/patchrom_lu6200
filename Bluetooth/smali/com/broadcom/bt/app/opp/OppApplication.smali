.class public Lcom/broadcom/bt/app/opp/OppApplication;
.super Ljava/lang/Object;
.source "OppApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 37
    const-string v0, "OppApplication"

    const-string v1, "Loading OppApplication."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->init(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mInstance:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->init(Landroid/content/Context;)V

    .line 43
    :cond_0
    return-void
.end method
