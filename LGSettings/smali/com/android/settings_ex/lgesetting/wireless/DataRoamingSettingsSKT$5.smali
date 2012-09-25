.class Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$5;
.super Ljava/lang/Object;
.source "DataRoamingSettingsSKT.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 140
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$5;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$5;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;

    const/4 v1, 0x1

    #calls: Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->setRadioAllowChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->access$500(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;Z)V

    .line 144
    return-void
.end method
