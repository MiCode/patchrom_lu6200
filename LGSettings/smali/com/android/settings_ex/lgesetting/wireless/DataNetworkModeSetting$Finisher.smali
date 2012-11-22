.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;
.super Ljava/lang/Object;
.source "DataNetworkModeSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Finisher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    invoke-virtual {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    invoke-virtual {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    invoke-virtual {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->finish()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    invoke-virtual {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->finish()V

    return-void
.end method
