.class final Lcom/android/settings_ex/bluetooth/PanProfile$PanServiceListener;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/PanProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/PanProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/bluetooth/PanProfile;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/PanProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/bluetooth/PanProfile;Lcom/android/settings_ex/bluetooth/PanProfile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/settings_ex/bluetooth/PanProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/PanProfile;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    #setter for: Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/android/settings_ex/bluetooth/PanProfile;->access$002(Lcom/android/settings_ex/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 52
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/PanProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/PanProfile;->access$002(Lcom/android/settings_ex/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 56
    return-void
.end method
