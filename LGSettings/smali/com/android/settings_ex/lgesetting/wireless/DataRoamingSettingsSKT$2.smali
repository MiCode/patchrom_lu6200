.class Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$2;
.super Ljava/lang/Object;
.source "DataRoamingSettingsSKT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->createCustomViewDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsBootable:Z
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->access$300(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsSelected:Z
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->access$000(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;

    const/4 v1, 0x0

    #calls: Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->setDataRoamingEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->access$200(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;Z)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;

    invoke-virtual {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->finish()V

    .line 116
    return-void
.end method
