.class Lcom/android/settings_ex/RcseSettings$1;
.super Ljava/lang/Object;
.source "RcseSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RcseSettings;->rcs_e_service_dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RcseSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RcseSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/RcseSettings$1;->this$0:Lcom/android/settings_ex/RcseSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/RcseSettings$1;->this$0:Lcom/android/settings_ex/RcseSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/RcseSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, mContentResolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, row:Landroid/content/ContentValues;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, mIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/RcseSettings$1;->this$0:Lcom/android/settings_ex/RcseSettings;

    #getter for: Lcom/android/settings_ex/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/RcseSettings;->access$000(Lcom/android/settings_ex/RcseSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 180
    const-string v3, "rcs_e_service"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.lge.ims.provisioning/settings/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/settings_ex/RcseSettings;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "com.lge.ims.action.SETTINGS_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings_ex/RcseSettings$1;->this$0:Lcom/android/settings_ex/RcseSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    return-void
.end method
