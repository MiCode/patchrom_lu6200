.class Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$1;
.super Ljava/lang/Object;
.source "DataRoamingSettingsSKT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 103
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsSelected:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->access$002(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;Z)Z

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mRadioAllowChecked:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->access$100(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    #calls: Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->setDataRoamingEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->access$200(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;Z)V

    .line 107
    return-void
.end method
