.class Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;
.super Lcom/android/internal/util/State;
.source "LgeFastDormancyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeFastDormancyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DchFachState"
.end annotation


# instance fields
.field mFDTriggered:Z

.field mIdleDuration:I

.field final synthetic this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 925
    iput-object p1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 927
    iput v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mIdleDuration:I

    .line 928
    iput-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mFDTriggered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/telephony/LgeFastDormancyHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 925
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;-><init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;)V

    return-void
.end method

.method private getCommandByteArray(I)[B
    .locals 5
    .parameter "cmd_id"

    .prologue
    const/16 v4, 0x4d

    const/4 v3, 0x0

    .line 933
    const/16 v0, 0x10

    new-array v0, v0, [B

    const/16 v1, 0x51

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v4, v0, v1

    const/4 v1, 0x7

    aput-byte v4, v0, v1

    const/16 v1, 0x8

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    return-object v0
.end method

.method private triggerGoDormant()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 951
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->isUMTS()Z

    move-result v3

    if-nez v3, :cond_0

    .line 952
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string/jumbo v4, "triggerGoDormant(): skip triggering since the attached network is non-3G"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$100(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 968
    :goto_0
    return v6

    .line 956
    :cond_0
    const v3, 0x80003

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->getCommandByteArray(I)[B

    move-result-object v0

    .line 958
    .local v0, cmd:[B
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 959
    .local v1, cmd_string:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string/jumbo v4, "triggerGoDormant()"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$100(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 960
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd buf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logv(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$000(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    .end local v1           #cmd_string:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const v5, 0x18c4d

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0

    .line 961
    :catch_0
    move-exception v2

    .line 962
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1002
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v1, "Enter to DCH or FACH State"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$100(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->isUMTS()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    #getter for: Lcom/android/internal/telephony/LgeFastDormancyHandler;->mUnknownState:Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;
    invoke-static {v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$800(Lcom/android/internal/telephony/LgeFastDormancyHandler;)Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$1500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/util/IState;)V

    .line 1006
    :cond_0
    iput v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mIdleDuration:I

    .line 1007
    iput-boolean v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mFDTriggered:Z

    .line 1008
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDRetryManager:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->resetCount()V

    .line 1009
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->scheduleCheckNetStat()V

    .line 1010
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v1, "Exit from DCH or FACH State"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$100(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 1016
    return-void
.end method

.method isDial()Z
    .locals 2

    .prologue
    .line 974
    const/4 v0, 0x0

    .line 976
    .local v0, fast_dorm_ok:Z
    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDct:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    .line 978
    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDct:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDct:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDct:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDct:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDct:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDct:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 986
    :cond_0
    const/4 v0, 0x1

    .line 989
    :cond_1
    return v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "msg"

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1023
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1154
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected Event Received : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$100(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 1159
    :cond_0
    :goto_0
    return v6

    .line 1028
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->isPreventWhenLdcOn()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->isPreventWhenCalling()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-boolean v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mCallActivState:Z

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->isPreventFDForAtnt()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    iget-boolean v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDEnableDependOnEmailIntent:Z

    if-nez v2, :cond_4

    .line 1033
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PREVENT_FD_WHEN_LCDON_OR_CALLING :isScreenOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-virtual {v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->isScreenOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCallActivState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-boolean v4, v4, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mCallActivState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logv(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$000(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 1035
    iput v5, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mIdleDuration:I

    .line 1036
    iput-boolean v5, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mFDTriggered:Z

    .line 1037
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDRetryManager:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->resetCount()V

    .line 1038
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->scheduleCheckNetStat()V

    .line 1040
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1042
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1048
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mNetStatMonitor:Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;->checkNetStat()Z

    move-result v2

    if-ne v2, v6, :cond_6

    .line 1050
    iput v5, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mIdleDuration:I

    .line 1051
    iput-boolean v5, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mFDTriggered:Z

    .line 1052
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDRetryManager:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->resetCount()V

    .line 1059
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->getFDTriggerTimerValue()J

    move-result-wide v2

    div-long v0, v2, v7

    .line 1060
    .local v0, treshToFDTrigger:J
    iget-boolean v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mFDTriggered:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->getFDRetryTimerValue()J

    move-result-wide v2

    div-long v0, v2, v7

    .line 1062
    :cond_5
    iget v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mIdleDuration:I

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_a

    .line 1064
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDRetryManager:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->isRetryNeeded()Z

    move-result v2

    if-ne v2, v6, :cond_9

    .line 1067
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->isDelayInDialing()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->isDial()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1069
    iget v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mIdleDuration:I

    add-int/lit8 v2, v2, -0x4

    iput v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mIdleDuration:I

    .line 1070
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iput-boolean v6, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mfastdormancy_dial:Z

    .line 1071
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGEDATA_FD : DELAY...5 sec  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mIdleDuration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / treshToFDTrigger : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$100(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 1089
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->scheduleCheckNetStat()V

    .line 1103
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1105
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1056
    .end local v0           #treshToFDTrigger:J
    :cond_6
    iget v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mIdleDuration:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mIdleDuration:I

    goto/16 :goto_1

    .line 1073
    .restart local v0       #treshToFDTrigger:J
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->isDelayInDialing()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-boolean v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mfastdormancy_dial:Z

    if-eqz v2, :cond_8

    .line 1076
    iget v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mIdleDuration:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mIdleDuration:I

    .line 1077
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iput-boolean v5, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mfastdormancy_dial:Z

    .line 1078
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGEDATA_FD : DELAY...1 sec  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mIdleDuration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / treshToFDTrigger : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$100(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    goto :goto_2

    .line 1084
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->triggerGoDormant()Z

    .line 1085
    iput-boolean v6, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mFDTriggered:Z

    .line 1086
    iput v5, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mIdleDuration:I

    .line 1087
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDRetryManager:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->increaseCount()V

    goto :goto_2

    .line 1093
    :cond_9
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v3, "Reached to MAXIMUM FD Retrires, but all tries fauled, so we cannot know the RRC state exactly"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$100(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 1094
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    #getter for: Lcom/android/internal/telephony/LgeFastDormancyHandler;->mUnknownState:Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;
    invoke-static {v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$800(Lcom/android/internal/telephony/LgeFastDormancyHandler;)Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;

    move-result-object v3

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$1600(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 1100
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->scheduleCheckNetStat()V

    goto/16 :goto_3

    .line 1110
    .end local v0           #treshToFDTrigger:J
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v3, "ICC changed."

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 1111
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->updateIccAvailability()V

    goto/16 :goto_0

    .line 1115
    :sswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v3, "Records loaded."

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 1117
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->onRecordsLoaded()V

    goto/16 :goto_0

    .line 1121
    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v3, "Radio Tech changed."

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 1122
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->onRadioTechnologyChanged()V

    .line 1124
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1126
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1131
    :sswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v3, "Data call list changed."

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 1133
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->onDataCallListChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1137
    :sswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v3, "Go dormant response received"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 1138
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->onGoDormantReponse(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1143
    :sswitch_6
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v3, "Voice call is started"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 1144
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->onCallActiveStateChanged(Z)V

    goto/16 :goto_0

    .line 1148
    :sswitch_7
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v3, "Voice call is ended"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 1149
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->onCallActiveStateChanged(Z)V

    goto/16 :goto_0

    .line 1023
    :sswitch_data_0
    .sparse-switch
        0x18c4b -> :sswitch_0
        0x18c4c -> :sswitch_3
        0x18c4d -> :sswitch_5
        0x42002 -> :sswitch_2
        0x42004 -> :sswitch_4
        0x42007 -> :sswitch_6
        0x42008 -> :sswitch_7
        0x42021 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DCH/FACH] FDCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;->mIdleDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
