.class Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard$1;
.super Ljava/lang/Object;
.source "ChooseAccountActivitySetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard$1;->this$0:Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "BACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard$1;->this$0:Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard$1;->this$0:Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;

    invoke-virtual {v1}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->finish()V

    return-void
.end method
