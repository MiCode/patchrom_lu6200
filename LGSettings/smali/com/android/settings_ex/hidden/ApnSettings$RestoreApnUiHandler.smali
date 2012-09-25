.class Lcom/android/settings_ex/hidden/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/hidden/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/hidden/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/hidden/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/settings_ex/hidden/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/hidden/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/hidden/ApnSettings;Lcom/android/settings_ex/hidden/ApnSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lcom/android/settings_ex/hidden/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings_ex/hidden/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 564
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 577
    :goto_0
    return-void

    .line 566
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/hidden/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/hidden/ApnSettings;

    #calls: Lcom/android/settings_ex/hidden/ApnSettings;->fillList()V
    invoke-static {v0}, Lcom/android/settings_ex/hidden/ApnSettings;->access$200(Lcom/android/settings_ex/hidden/ApnSettings;)V

    .line 567
    iget-object v0, p0, Lcom/android/settings_ex/hidden/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/hidden/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/hidden/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 568
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings_ex/hidden/ApnSettings;->access$102(Z)Z

    .line 569
    iget-object v0, p0, Lcom/android/settings_ex/hidden/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/hidden/ApnSettings;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/hidden/ApnSettings;->dismissDialog(I)V

    .line 570
    iget-object v0, p0, Lcom/android/settings_ex/hidden/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/hidden/ApnSettings;

    iget-object v1, p0, Lcom/android/settings_ex/hidden/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/hidden/ApnSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/hidden/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0803a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
