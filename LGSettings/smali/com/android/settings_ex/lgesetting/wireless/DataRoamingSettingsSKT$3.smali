.class Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$3;
.super Ljava/lang/Object;
.source "DataRoamingSettingsSKT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsCancelable:Z
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->access$400(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/android/settings_ex/lgesetting/wireless/DefineBlockKey;->onKey(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
