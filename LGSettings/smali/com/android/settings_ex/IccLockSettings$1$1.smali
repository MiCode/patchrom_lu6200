.class Lcom/android/settings_ex/IccLockSettings$1$1;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/IccLockSettings$1;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/IccLockSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/IccLockSettings$1;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$1$1;->this$1:Lcom/android/settings_ex/IccLockSettings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUpdatePreferencesState_delay_2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$1$1;->this$1:Lcom/android/settings_ex/IccLockSettings$1;

    iget-object v0, v0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #calls: Lcom/android/settings_ex/IccLockSettings;->onUpdatePreferencesState()V
    invoke-static {v0}, Lcom/android/settings_ex/IccLockSettings;->access$300(Lcom/android/settings_ex/IccLockSettings;)V

    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUpdatePreferencesState_delay_3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method
