.class public Lcom/android/internal/policy/impl/LockDigitalClock;
.super Lcom/android/internal/widget/DigitalClock;
.source "LockDigitalClock.java"


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"


# instance fields
.field private mAmPmDisplay:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;

.field private mTimeDisplay:Landroid/widget/TextView;

.field private mTimeDisplay2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/internal/widget/DigitalClock;->onAttachedToWindow()V

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockDigitalClock;->updateTime()V

    .line 94
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/internal/widget/DigitalClock;->onFinishInflate()V

    .line 70
    const v1, 0x1020298

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    const-string v2, "/system/fonts/AndroidClock.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    :cond_0
    const v1, 0x1020299

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mTimeDisplay2:Landroid/widget/TextView;

    .line 75
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mTimeDisplay2:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mTimeDisplay2:Landroid/widget/TextView;

    const-string v2, "/system/fonts/AndroidClock.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    :cond_1
    const v1, 0x10202a5

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mAmPmDisplay:Landroid/widget/TextView;

    .line 79
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mAmPmDisplay:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mAmPmDisplay:Landroid/widget/TextView;

    const-string v2, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 82
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 83
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mAmString:Ljava/lang/String;

    .line 85
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mPmString:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockDigitalClock;->setDateFormat()V

    .line 88
    return-void
.end method

.method setDateFormat()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mFormat:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mFormat:Ljava/lang/String;

    const-string v1, "h:mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockDigitalClock;->setShowAmPm(Z)V

    .line 109
    return-void

    .line 106
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method

.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mAmPmDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mAmPmDisplay:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mAmPmDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mAmPmDisplay:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :cond_0
    return-void

    .line 116
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method updateTime()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockDigitalClock;->setIsMorning(Z)V

    .line 101
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
