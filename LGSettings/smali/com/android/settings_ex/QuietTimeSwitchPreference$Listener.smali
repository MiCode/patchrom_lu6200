.class Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;
.super Ljava/lang/Object;
.source "QuietTimeSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/QuietTimeSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/QuietTimeSwitchPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/QuietTimeSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/QuietTimeSwitchPreference;Lcom/android/settings_ex/QuietTimeSwitchPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;-><init>(Lcom/android/settings_ex/QuietTimeSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 26
    const-string v0, "QuietTimeSwitchPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggle button state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    #getter for: Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;
    invoke-static {v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->access$100(Lcom/android/settings_ex/QuietTimeSwitchPreference;)Lcom/android/settings_ex/QuietTimeInfo;

    move-result-object v3

    if-ne p2, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/QuietTimeInfo;->setDBQuietTimeState(I)V

    .line 28
    const-string v0, "QuietTimeSwitchPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timed Silent DB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    #getter for: Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;
    invoke-static {v4}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->access$100(Lcom/android/settings_ex/QuietTimeSwitchPreference;)Lcom/android/settings_ex/QuietTimeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings_ex/QuietTimeInfo;->isQuietTimeState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, p2, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    #getter for: Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;
    invoke-static {v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->access$100(Lcom/android/settings_ex/QuietTimeSwitchPreference;)Lcom/android/settings_ex/QuietTimeInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    #getter for: Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;
    invoke-static {v3}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->access$100(Lcom/android/settings_ex/QuietTimeSwitchPreference;)Lcom/android/settings_ex/QuietTimeInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ex/QuietTimeInfo;->setDBSaveTime(J)V

    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    #getter for: Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;
    invoke-static {v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->access$100(Lcom/android/settings_ex/QuietTimeSwitchPreference;)Lcom/android/settings_ex/QuietTimeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->registerAlarm()V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    #getter for: Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;
    invoke-static {v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->access$100(Lcom/android/settings_ex/QuietTimeSwitchPreference;)Lcom/android/settings_ex/QuietTimeInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/QuietTimeInfo;->SetSilentModeState(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    #getter for: Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;
    invoke-static {v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->access$100(Lcom/android/settings_ex/QuietTimeSwitchPreference;)Lcom/android/settings_ex/QuietTimeInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setTime(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    #getter for: Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;
    invoke-static {v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->access$100(Lcom/android/settings_ex/QuietTimeSwitchPreference;)Lcom/android/settings_ex/QuietTimeInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setTime(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->SetQuietTimeSummary()V

    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    #getter for: Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;
    invoke-static {v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->access$100(Lcom/android/settings_ex/QuietTimeSwitchPreference;)Lcom/android/settings_ex/QuietTimeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/settings_ex/QuietTimeInfo;->TimedSilentReceiverEnable(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/settings_ex/QuietTimeSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->setChecked(Z)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method
