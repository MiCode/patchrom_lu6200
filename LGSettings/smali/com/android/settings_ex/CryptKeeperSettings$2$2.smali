.class Lcom/android/settings_ex/CryptKeeperSettings$2$2;
.super Ljava/lang/Object;
.source "CryptKeeperSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/CryptKeeperSettings$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/CryptKeeperSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeperSettings$2;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeperSettings$2$2;->this$1:Lcom/android/settings_ex/CryptKeeperSettings$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperSettings$2$2;->this$1:Lcom/android/settings_ex/CryptKeeperSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/CryptKeeperSettings$2;->this$0:Lcom/android/settings_ex/CryptKeeperSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/ChooseLockGeneric;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "encryption_confirm"

    const-string v2, "encryption"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperSettings$2$2;->this$1:Lcom/android/settings_ex/CryptKeeperSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/CryptKeeperSettings$2;->this$0:Lcom/android/settings_ex/CryptKeeperSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/settings_ex/CryptKeeperSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 117
    return-void
.end method
