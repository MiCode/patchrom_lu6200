.class Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/ManageAccountsSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 198
    invoke-static {p2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    #calls: Lcom/android/settings_ex/accounts/ManageAccountsSettings;->removeEmptyCategories()V
    invoke-static {v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->access$000(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)V

    .line 201
    return-void
.end method
