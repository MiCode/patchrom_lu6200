.class public Lcom/android/settings_ex/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/MasterClearConfirm$MasterCDMAFactoryResetReceiver;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEraseSdCard:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSDCardStorageVolume:Landroid/os/storage/StorageVolume;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    iput-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 67
    iput-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mSDCardStorageVolume:Landroid/os/storage/StorageVolume;

    .line 74
    new-instance v0, Lcom/android/settings_ex/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MasterClearConfirm$1;-><init>(Lcom/android/settings_ex/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 279
    new-instance v0, Lcom/android/settings_ex/MasterClearConfirm$MasterCDMAFactoryResetReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/MasterClearConfirm$MasterCDMAFactoryResetReceiver;-><init>(Lcom/android/settings_ex/MasterClearConfirm;Lcom/android/settings_ex/MasterClearConfirm$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 296
    new-instance v0, Lcom/android/settings_ex/MasterClearConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MasterClearConfirm$2;-><init>(Lcom/android/settings_ex/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private MasterCDMAFactoryResetCompleted(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 256
    const-string v1, "MasterClear"

    const-string v2, "MasterCDMAFactoryResetCompleted() is called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v1, "phoneCdmaRequestFactoryResetCompleted"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 259
    .local v0, cdma_factory_reset_completed:I
    iget-boolean v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v1, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->nativeCodeFormatSdCard()V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    const-string v1, "MasterClear"

    const-string v2, "send MASTER_CLEAR intent."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/MasterClearConfirm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/MasterClearConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->nativeCodeFormatSdCard()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/MasterClearConfirm;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/MasterClearConfirm;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings_ex/MasterClearConfirm;->MasterCDMAFactoryResetCompleted(Landroid/content/Intent;)V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method

.method private getStorageVolumeForSD()Landroid/os/storage/StorageVolume;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 178
    iget-object v4, p0, Lcom/android/settings_ex/MasterClearConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v4, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v6, "storage"

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/settings_ex/MasterClearConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 180
    iget-object v4, p0, Lcom/android/settings_ex/MasterClearConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/settings_ex/MasterClearConfirm;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v4, v6}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 183
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/MasterClearConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 184
    .local v3, storageVolumes:[Landroid/os/storage/StorageVolume;
    if-nez v3, :cond_2

    move-object v2, v5

    .line 201
    :cond_1
    :goto_0
    return-object v2

    .line 187
    :cond_2
    array-length v1, v3

    .line 188
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 189
    aget-object v2, v3, v0

    .line 190
    .local v2, storageVolume:Landroid/os/storage/StorageVolume;
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "p2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 191
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_4
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    goto :goto_0

    .end local v2           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_5
    move-object v2, v5

    .line 201
    goto :goto_0
.end method

.method private nativeCodeFormatSdCard()V
    .locals 3

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 208
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mSDCardStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 211
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 152
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string v2, "erase_sd"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    .line 153
    iget-boolean v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v2, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getStorageVolumeForSD()Landroid/os/storage/StorageVolume;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mSDCardStorageVolume:Landroid/os/storage/StorageVolume;

    .line 158
    :cond_0
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "i_vzw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_CDMA_REQUEST_FACTORY_RESET_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/MasterClearConfirm;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_1
    return-void

    .line 152
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 140
    const v0, 0x7f04005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0803a1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 285
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 291
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 292
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 169
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/MDMSettingsAdapter;->setFactoryResetConfirmButton(Landroid/content/ComponentName;Landroid/content/Context;Landroid/widget/Button;)V

    .line 173
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 174
    return-void
.end method

.method sendCDMAFactoryRequest()V
    .locals 3

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CDMA_REQUEST_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "MasterClear"

    const-string v2, "sendCDMAFactoryRequest() is called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 243
    return-void
.end method
