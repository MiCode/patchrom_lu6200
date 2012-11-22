.class Lcom/android/settings_ex/AirplaneModeEnabler$4;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AirplaneModeEnabler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$4;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler$4;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings_ex/AirplaneModeEnabler;->csActive:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler$4;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings_ex/AirplaneModeEnabler;->csActive:Z

    goto :goto_0
.end method

.method public onDataActivity(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 221
    return-void
.end method
