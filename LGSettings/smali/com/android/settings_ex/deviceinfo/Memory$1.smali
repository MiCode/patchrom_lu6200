.class Lcom/android/settings_ex/deviceinfo/Memory$1;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.cloudservice.intent.action.RESPONSE_STORAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mBUAStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/Memory;->access$000(Lcom/android/settings_ex/deviceinfo/Memory;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mBUAStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/Memory;->access$000(Lcom/android/settings_ex/deviceinfo/Memory;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->initForBUA(Landroid/app/Activity;)V

    .line 165
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.cloudservice.intent.action.RESPONSE_STORAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mBUAStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/Memory;->access$000(Lcom/android/settings_ex/deviceinfo/Memory;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mBUAStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/Memory;->access$000(Lcom/android/settings_ex/deviceinfo/Memory;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getCloudStorageInfoDB(Landroid/app/Activity;)V

    .line 169
    :cond_1
    return-void
.end method
