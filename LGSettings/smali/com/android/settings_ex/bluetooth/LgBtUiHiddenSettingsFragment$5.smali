.class Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$5;
.super Ljava/lang/Object;
.source "LgBtUiHiddenSettingsFragment.java"

# interfaces
.implements Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$5;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onBtldApiCmdInd(II[B)V
    .locals 0
    .parameter "cmd"
    .parameter "len"
    .parameter "payload"

    .prologue
    .line 569
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onEnterDUTMode(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 560
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onEnterTestMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 554
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onExitDUTMode(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 563
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onExitTestMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 557
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onGetTestMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 551
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onSetTestMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 548
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onTx_Rx_Test(II)V
    .locals 0
    .parameter "mode"
    .parameter "status"

    .prologue
    .line 566
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
