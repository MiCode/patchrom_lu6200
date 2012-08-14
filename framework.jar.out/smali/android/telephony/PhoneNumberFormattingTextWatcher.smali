.class public Landroid/telephony/PhoneNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final STATE_APPEND:I = 0x1

.field private static final STATE_MODIFY_DIGITS:I = 0x2

.field private static final STATE_OTHER:I = 0x3

.field private static final STATE_REMOVE_LAST:I


# instance fields
.field KoreaPhoneNumberFormattingTextWatcher:Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;

.field private mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

.field private mSelfChange:Z

.field private mState:I

.field private mStopFormatting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "countryCode"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 104
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    const-string v1, "KoreaNumberFormat"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;

    invoke-direct {v0}, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;-><init>()V

    iput-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->KoreaPhoneNumberFormattingTextWatcher:Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    goto :goto_0
.end method

.method private getFormattedNumber(CZ)Ljava/lang/String;
    .locals 1
    .parameter "lastNonSeparator"
    .parameter "hasCursor"

    .prologue
    .line 231
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitAndRememberPosition(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasSeparator(Ljava/lang/CharSequence;II)Z
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "count"

    .prologue
    .line 241
    move v1, p2

    .local v1, i:I
    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_1

    .line 242
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 243
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
    const/4 v2, 0x1

    .line 247
    .end local v0           #c:C
    :goto_1
    return v2

    .line 241
    .restart local v0       #c:C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v0           #c:C
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 8
    .parameter "s"
    .parameter "cursor"

    .prologue
    .line 205
    add-int/lit8 v1, p2, -0x1

    .line 206
    .local v1, curIndex:I
    const/4 v2, 0x0

    .line 207
    .local v2, formatted:Ljava/lang/String;
    iget-object v7, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 208
    const/4 v5, 0x0

    .line 209
    .local v5, lastNonSeparator:C
    const/4 v3, 0x0

    .line 210
    .local v3, hasCursor:Z
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 211
    .local v6, len:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 212
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 213
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 214
    if-eqz v5, :cond_0

    .line 215
    invoke-direct {p0, v5, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 216
    const/4 v3, 0x0

    .line 218
    :cond_0
    move v5, v0

    .line 220
    :cond_1
    if-ne v4, v1, :cond_2

    .line 221
    const/4 v3, 0x1

    .line 211
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    .end local v0           #c:C
    :cond_3
    if-eqz v5, :cond_4

    .line 225
    invoke-direct {p0, v5, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 227
    :cond_4
    return-object v2
.end method

.method private stopFormatting()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    .line 237
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 238
    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 169
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "KoreaNumberFormat"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->KoreaPhoneNumberFormattingTextWatcher:Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;

    invoke-virtual {v0, p1}, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->afterTextChanged(Landroid/text/Editable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 175
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v2, :cond_3

    .line 177
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    .line 177
    goto :goto_1

    .line 180
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_0

    .line 184
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, formatted:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 186
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getRememberedPosition()I

    move-result v6

    .line 187
    .local v6, rememberedPos:I
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 188
    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    invoke-static {p1, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 194
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 116
    const/4 v0, 0x0

    const-string v1, "KoreaNumberFormat"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->KoreaPhoneNumberFormattingTextWatcher:Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-nez v0, :cond_0

    .line 125
    if-nez p3, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    goto :goto_0

    .line 128
    :cond_2
    if-nez p4, :cond_3

    add-int v0, p2, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    if-lez p3, :cond_3

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    goto :goto_0

    .line 131
    :cond_3
    if-lez p3, :cond_4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 133
    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    goto :goto_0

    .line 135
    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v2, 0x3

    .line 141
    const/4 v0, 0x0

    const-string v1, "KoreaNumberFormat"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->KoreaPhoneNumberFormattingTextWatcher:Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-nez v0, :cond_0

    .line 150
    iget v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    if-ne v0, v2, :cond_2

    .line 151
    if-lez p4, :cond_2

    invoke-direct {p0, p1, p2, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    .line 157
    :cond_2
    iget v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-lez p4, :cond_3

    invoke-direct {p0, p1, p2, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    goto :goto_0

    .line 160
    :cond_3
    iget v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    if-ne v0, v2, :cond_0

    .line 163
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    goto :goto_0
.end method
