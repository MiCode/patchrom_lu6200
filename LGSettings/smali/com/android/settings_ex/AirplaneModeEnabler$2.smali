.class Lcom/android/settings_ex/AirplaneModeEnabler$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AirplaneModeEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$2;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$2;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    #getter for: Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$500(Lcom/android/settings_ex/AirplaneModeEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 130
    .local v0, airplaneModeEnabled:Z
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$2;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    #getter for: Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$600(Lcom/android/settings_ex/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$2;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    iget-boolean v1, v1, Lcom/android/settings_ex/AirplaneModeEnabler;->fromSettings:Z

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$2;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    #calls: Lcom/android/settings_ex/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v1}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$400(Lcom/android/settings_ex/AirplaneModeEnabler;)V

    .line 134
    invoke-static {v2}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$302(Z)Z

    .line 139
    :goto_0
    const-string v1, "onAirplaneModeChanged - ContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "airplanemode_on_off="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$300()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$2;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    iput-boolean v2, v1, Lcom/android/settings_ex/AirplaneModeEnabler;->fromSettings:Z

    goto :goto_0
.end method
