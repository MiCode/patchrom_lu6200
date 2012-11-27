.class Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter$1;
.super Ljava/lang/Object;
.source "CompatibilityMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;


# direct methods
.method constructor <init>(Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter$1;->this$1:Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;

    .line 202
    .local v0, cache:Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;
    iget-object v4, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    .line 203
    .local v3, enable:Z
    :cond_0
    iget-object v4, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 227
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v4, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 205
    iget-object v4, p0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter$1;->this$1:Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;

    iget-object v4, v4, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;->this$0:Lcom/lge/settings/compatmode/CompatibilityMode;

    #getter for: Lcom/lge/settings/compatmode/CompatibilityMode;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v4}, Lcom/lge/settings/compatmode/CompatibilityMode;->access$000(Lcom/lge/settings/compatmode/CompatibilityMode;)Landroid/app/IActivityManager;

    move-result-object v4

    if-nez v4, :cond_2

    .line 206
    iget-object v4, p0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter$1;->this$1:Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;

    iget-object v4, v4, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;->this$0:Lcom/lge/settings/compatmode/CompatibilityMode;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    #setter for: Lcom/lge/settings/compatmode/CompatibilityMode;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v4, v5}, Lcom/lge/settings/compatmode/CompatibilityMode;->access$002(Lcom/lge/settings/compatmode/CompatibilityMode;Landroid/app/IActivityManager;)Landroid/app/IActivityManager;

    .line 210
    :cond_2
    if-eqz v3, :cond_3

    .line 212
    :try_start_0
    iget-object v4, p0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter$1;->this$1:Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;

    iget-object v4, v4, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;->this$0:Lcom/lge/settings/compatmode/CompatibilityMode;

    #getter for: Lcom/lge/settings/compatmode/CompatibilityMode;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v4}, Lcom/lge/settings/compatmode/CompatibilityMode;->access$000(Lcom/lge/settings/compatmode/CompatibilityMode;)Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->packageName:Ljava/lang/String;

    const/16 v6, 0x63

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter$1;->this$1:Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;

    iget-object v4, v4, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;->this$0:Lcom/lge/settings/compatmode/CompatibilityMode;

    #getter for: Lcom/lge/settings/compatmode/CompatibilityMode;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v4}, Lcom/lge/settings/compatmode/CompatibilityMode;->access$000(Lcom/lge/settings/compatmode/CompatibilityMode;)Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter$1;->this$1:Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;

    iget-object v4, v4, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;->this$0:Lcom/lge/settings/compatmode/CompatibilityMode;

    #getter for: Lcom/lge/settings/compatmode/CompatibilityMode;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v4}, Lcom/lge/settings/compatmode/CompatibilityMode;->access$000(Lcom/lge/settings/compatmode/CompatibilityMode;)Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 218
    :catch_1
    move-exception v2

    .line 219
    .local v2, e1:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
