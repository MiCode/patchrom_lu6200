.class Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$1;
.super Landroid/os/Handler;
.source "ChooseBackupPinX3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$1;->this$0:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$1;->this$0:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->updateStage(Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;)V

    .line 115
    :cond_0
    return-void
.end method
