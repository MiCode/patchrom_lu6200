.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$4;
.super Ljava/lang/Object;
.source "DataNetworkModeRoamingQueryPopupLGT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$4;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;

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
    .line 215
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-static {p2}, Lcom/android/settings_ex/lgesetting/wireless/DefineBlockKey;->onKey(I)Z

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
