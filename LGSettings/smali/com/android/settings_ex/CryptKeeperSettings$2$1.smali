.class Lcom/android/settings_ex/CryptKeeperSettings$2$1;
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
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeperSettings$2$1;->this$1:Lcom/android/settings_ex/CryptKeeperSettings$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings$2$1;->this$1:Lcom/android/settings_ex/CryptKeeperSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/CryptKeeperSettings$2;->this$0:Lcom/android/settings_ex/CryptKeeperSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 124
    return-void
.end method
