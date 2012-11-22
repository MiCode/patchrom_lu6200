.class public Lcom/android/settings_ex/QuietTimeSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "QuietTimeSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/QuietTimeSwitchPreference$1;,
        Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final mListener:Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;

.field private mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;-><init>(Lcom/android/settings_ex/QuietTimeSwitchPreference;Lcom/android/settings_ex/QuietTimeSwitchPreference$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mListener:Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;

    iput-object v1, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    const v0, 0x7f040082

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->setWidgetLayoutResource(I)V

    new-instance v0, Lcom/android/settings_ex/QuietTimeInfo;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/QuietTimeInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/QuietTimeSwitchPreference;)Lcom/android/settings_ex/QuietTimeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    return-object v0
.end method

.method private getQuietTimeOnSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "selectDays"

    .prologue
    const v4, 0x7f0808ba

    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v1, 0x7f0808dc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v2, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v2, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v2, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v2, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSilentSummaryText(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "days"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 122
    const-string v5, "1111111"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808db

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 169
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 124
    .restart local p1
    :cond_1
    const-string v5, "1111110"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808d7

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_2
    const-string v5, "1111100"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808d6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 128
    :cond_3
    const-string v5, "0111111"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808da

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 130
    :cond_4
    const-string v5, "0111110"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808d9

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 132
    :cond_5
    const-string v5, "0111100"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808d8

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 134
    :cond_6
    const-string v5, "0000000"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808dc

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 138
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v4, s:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 140
    .local v1, count:I
    const/4 v2, 0x0

    .line 141
    .local v2, dummyDays:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/4 v5, 0x7

    if-ge v3, v5, :cond_10

    .line 142
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, c:Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    move v2, v3

    .line 147
    if-nez v3, :cond_a

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808c8

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_8
    :goto_2
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 148
    :cond_a
    if-ne v3, v7, :cond_b

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808c9

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 149
    :cond_b
    if-ne v3, v8, :cond_c

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808ca

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 150
    :cond_c
    if-ne v3, v9, :cond_d

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808cb

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 151
    :cond_d
    if-ne v3, v10, :cond_e

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808cc

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 152
    :cond_e
    if-ne v3, v11, :cond_f

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808cd

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 153
    :cond_f
    const/4 v5, 0x6

    if-ne v3, v5, :cond_8

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808ce

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 157
    .end local v0           #c:Ljava/lang/String;
    :cond_10
    if-ne v1, v7, :cond_17

    .line 158
    if-nez v2, :cond_11

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808cf

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 159
    :cond_11
    if-ne v2, v7, :cond_12

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808d0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 160
    :cond_12
    if-ne v2, v8, :cond_13

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808d1

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 161
    :cond_13
    if-ne v2, v9, :cond_14

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808d2

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 162
    :cond_14
    if-ne v2, v10, :cond_15

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808d3

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 163
    :cond_15
    if-ne v2, v11, :cond_16

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808d4

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 164
    :cond_16
    const/4 v5, 0x6

    if-ne v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v6, 0x7f0808d5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 166
    :cond_17
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method


# virtual methods
.method public SetQuietTimeSummary()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getSummaryString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    const-string v0, "QuietTimeSwitchPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSummaryString] : ischecked() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v0, "QuietTimeSwitchPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSummaryString] : getDBFirstStartFlag() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDBFirstStartFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/QuietTimeInfo;->isQuietTimeState()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBFirstStartFlag()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBDays()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->getSilentSummaryText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->getQuietTimeOnSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v1, 0x7f0808df

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 79
    const v2, 0x7f0b012a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 81
    check-cast v2, Landroid/widget/Checkable;

    invoke-super {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/Switch;

    .local v1, switchView:Landroid/widget/Switch;
    iget-object v2, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mListener:Lcom/android/settings_ex/QuietTimeSwitchPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .end local v1           #switchView:Landroid/widget/Switch;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->SetQuietTimeSummary()V

    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public setCheckedUpdate()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->isQuietTimeState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/QuietTimeSwitchPreference;->setChecked(Z)V

    .line 62
    return-void
.end method
