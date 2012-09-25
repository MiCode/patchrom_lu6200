.class Lcom/android/settings_ex/wifi/WifiSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1141
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/WifiSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1140
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1150
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 1151
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 1152
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$600(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1162
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    .line 1164
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$700(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;

    if-eqz v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$700(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->updateProgressUi(Z)V

    .line 1184
    :cond_0
    :goto_0
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 1185
    :goto_1
    return-void

    .line 1166
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$700(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$700(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->updateProgressUi(Z)V

    goto :goto_0

    .line 1170
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$700(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;

    if-eqz v0, :cond_4

    .line 1173
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$700(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->updateProgressUi(Z)V

    .line 1179
    :cond_3
    :goto_2
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    .line 1180
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080217

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1174
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$700(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;

    if-eqz v0, :cond_3

    .line 1175
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$700(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->updateProgressUi(Z)V

    goto :goto_2
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1155
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    .line 1156
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 1157
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1144
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1145
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 1147
    :cond_0
    return-void
.end method
