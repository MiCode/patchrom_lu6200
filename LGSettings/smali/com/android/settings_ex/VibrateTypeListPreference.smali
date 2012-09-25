.class public Lcom/android/settings_ex/VibrateTypeListPreference;
.super Landroid/preference/ListPreference;
.source "VibrateTypeListPreference.java"


# static fields
.field private static final DEFAULT_VIBRATE:[J

.field private static selectiedPosision:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/VibrateTypeListPreference;->DEFAULT_VIBRATE:[J

    return-void

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object p1, p0, Lcom/android/settings_ex/VibrateTypeListPreference;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 14
    sget v0, Lcom/android/settings_ex/VibrateTypeListPreference;->selectiedPosision:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    sput p0, Lcom/android/settings_ex/VibrateTypeListPreference;->selectiedPosision:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/VibrateTypeListPreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/settings_ex/VibrateTypeListPreference;->playVibrate(I)V

    return-void
.end method

.method private getLongIntArray(I)[J
    .locals 8
    .parameter "resid"

    .prologue
    .line 69
    iget-object v5, p0, Lcom/android/settings_ex/VibrateTypeListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 70
    .local v3, mResource:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 71
    .local v0, ar:[I
    const/4 v4, 0x0

    .line 74
    .local v4, out:[J
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    const/4 v5, 0x0

    .line 87
    :goto_0
    return-object v5

    .line 76
    :cond_0
    array-length v5, v0

    new-array v4, v5, [J

    .line 77
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 78
    aget v5, v0, v2

    int-to-long v5, v5

    aput-wide v5, v4, v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "VibrateTypeListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getLongIntArray] NotFoundException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v5, Lcom/android/settings_ex/VibrateTypeListPreference;->DEFAULT_VIBRATE:[J

    goto :goto_0

    .line 83
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "VibrateTypeListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getLongIntArray] NullPointerEception :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v5, Lcom/android/settings_ex/VibrateTypeListPreference;->DEFAULT_VIBRATE:[J

    goto :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #i:I
    :cond_1
    move-object v5, v4

    .line 87
    goto :goto_0
.end method

.method private getVibratePatterns(I)[J
    .locals 2
    .parameter "vibrateType"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, resid:I
    packed-switch p1, :pswitch_data_0

    .line 107
    const v0, 0x7f0900a6

    .line 110
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/VibrateTypeListPreference;->getLongIntArray(I)[J

    move-result-object v1

    return-object v1

    .line 95
    :pswitch_0
    const v0, 0x7f0900a6

    .line 96
    goto :goto_0

    .line 98
    :pswitch_1
    const v0, 0x7f0900a7

    .line 99
    goto :goto_0

    .line 101
    :pswitch_2
    const v0, 0x7f0900a8

    .line 102
    goto :goto_0

    .line 104
    :pswitch_3
    const v0, 0x7f0900a9

    .line 105
    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private playVibrate(I)V
    .locals 4
    .parameter "vibrateType"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypeListPreference;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/settings_ex/VibrateTypeListPreference;->mVibrator:Landroid/os/Vibrator;

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypeListPreference;->mVibrator:Landroid/os/Vibrator;

    invoke-direct {p0, p1}, Lcom/android/settings_ex/VibrateTypeListPreference;->getVibratePatterns(I)[J

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "VibrateTypeListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVibrate() Null point exception!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 132
    const-string v2, "VibrateTypeListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dialog Closed! PositiveResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-eqz p1, :cond_0

    :try_start_0
    sget v2, Lcom/android/settings_ex/VibrateTypeListPreference;->selectiedPosision:I

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypeListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypeListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    sget v3, Lcom/android/settings_ex/VibrateTypeListPreference;->selectiedPosision:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, value:Ljava/lang/String;
    const-string v2, "VibrateTypeListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DialogClosed] selected value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setValue(Ljava/lang/String;)V

    .line 141
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/VibrateTypeListPreference;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/VibrateTypeListPreference;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "VibrateTypeListPreference"

    const-string v3, "onDialogZClosed() - NullPointException !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypeListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypeListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/android/settings_ex/VibrateTypeListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/VibrateTypeListPreference$1;-><init>(Lcom/android/settings_ex/VibrateTypeListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    const/high16 v0, 0x104

    new-instance v1, Lcom/android/settings_ex/VibrateTypeListPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/VibrateTypeListPreference$2;-><init>(Lcom/android/settings_ex/VibrateTypeListPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    const v0, 0x104000a

    new-instance v1, Lcom/android/settings_ex/VibrateTypeListPreference$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/VibrateTypeListPreference$3;-><init>(Lcom/android/settings_ex/VibrateTypeListPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    return-void
.end method

.method public vibrateStop()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypeListPreference;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypeListPreference;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 127
    :cond_0
    return-void
.end method
