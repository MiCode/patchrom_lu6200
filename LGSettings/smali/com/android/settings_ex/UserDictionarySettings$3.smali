.class Lcom/android/settings_ex/UserDictionarySettings$3;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/UserDictionarySettings;->existDlgShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/UserDictionarySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/UserDictionarySettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/UserDictionarySettings$3;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$3;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/UserDictionarySettings;->dig_status:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/UserDictionarySettings;->access$202(Lcom/android/settings_ex/UserDictionarySettings;I)I

    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$3;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    #getter for: Lcom/android/settings_ex/UserDictionarySettings;->mAutoReturn:Z
    invoke-static {v0}, Lcom/android/settings_ex/UserDictionarySettings;->access$000(Lcom/android/settings_ex/UserDictionarySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$3;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 484
    :cond_0
    return-void
.end method
