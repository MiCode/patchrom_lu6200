.class Lcom/android/settings_ex/CryptKeeperConfirm$Blank$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/CryptKeeperConfirm$Blank;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeperConfirm$Blank;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeperConfirm$Blank;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeperConfirm$Blank$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm$Blank;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .local v3, service:Landroid/os/IBinder;
    if-nez v3, :cond_0

    const-string v4, "CryptKeeper"

    const-string v5, "Failed to find the mount service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeperConfirm$Blank$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm$Blank;

    invoke-virtual {v4}, Lcom/android/settings_ex/CryptKeeperConfirm$Blank;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .local v2, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeperConfirm$Blank$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm$Blank;

    invoke-virtual {v4}, Lcom/android/settings_ex/CryptKeeperConfirm$Blank;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "password"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\\\"

    const-string v6, "\\\\\\\\"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\\""

    const-string v6, "\\\\\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/os/storage/IMountService;->encryptStorage(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v0           #args:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "CryptKeeper"

    const-string v5, "Error while encrypting..."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
