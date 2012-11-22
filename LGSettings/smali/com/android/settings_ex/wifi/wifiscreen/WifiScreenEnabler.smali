.class public Lcom/android/settings_ex/wifi/wifiscreen/WifiScreenEnabler;
.super Ljava/lang/Object;
.source "WifiScreenEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .parameter "context"
    .parameter "switch_"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings_ex/wifi/wifiscreen/WifiScreenEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/wifiscreen/WifiScreenEnabler$1;-><init>(Lcom/android/settings_ex/wifi/wifiscreen/WifiScreenEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/wifiscreen/WifiScreenEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 53
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 0
    .parameter "switch_"

    .prologue
    .line 50
    return-void
.end method
