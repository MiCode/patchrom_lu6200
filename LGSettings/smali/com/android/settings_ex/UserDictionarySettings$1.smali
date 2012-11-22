.class Lcom/android/settings_ex/UserDictionarySettings$1;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/UserDictionarySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/UserDictionarySettings;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/UserDictionarySettings;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/UserDictionarySettings$1;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    iput-object p2, p0, Lcom/android/settings_ex/UserDictionarySettings$1;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$1;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    #getter for: Lcom/android/settings_ex/UserDictionarySettings;->mAutoReturn:Z
    invoke-static {v0}, Lcom/android/settings_ex/UserDictionarySettings;->access$000(Lcom/android/settings_ex/UserDictionarySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 363
    :cond_0
    return-void
.end method
