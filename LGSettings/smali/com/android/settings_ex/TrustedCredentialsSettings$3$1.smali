.class Lcom/android/settings_ex/TrustedCredentialsSettings$3$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$3;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings$3;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$3$1;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$3$1;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$3;

    iget-object v1, v1, Lcom/android/settings_ex/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$3$1;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$3;

    iget-object v2, v2, Lcom/android/settings_ex/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Lcom/android/settings_ex/TrustedCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$3$1;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$3;

    iget-object v0, v0, Lcom/android/settings_ex/TrustedCredentialsSettings$3;->val$certDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
