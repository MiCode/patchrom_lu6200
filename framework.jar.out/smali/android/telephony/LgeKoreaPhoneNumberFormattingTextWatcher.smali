.class public Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "LgeKoreaPhoneNumberFormattingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static sCachedLocale:Ljava/util/Locale;

.field private static sFormatType:I


# instance fields
.field private mDeletingBackward:Z

.field private mDeletingHyphen:Z

.field private mFormatting:Z

.field private mHyphenStart:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->sCachedLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->sCachedLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 49
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->sCachedLocale:Ljava/util/Locale;

    .line 51
    const/4 v0, 0x0

    const-string v1, "KoreaNumberFormat"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v0

    sput v0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->sFormatType:I

    .line 57
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    sget-object v0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->sCachedLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v0

    sput v0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->sFormatType:I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mFormatting:Z

    if-nez v0, :cond_1

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mFormatting:Z

    .line 65
    iget-boolean v0, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mDeletingHyphen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mHyphenStart:I

    if-lez v0, :cond_0

    .line 66
    iget-boolean v0, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mDeletingBackward:Z

    if-eqz v0, :cond_2

    .line 67
    iget v0, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mHyphenStart:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 68
    iget v0, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mHyphenStart:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mHyphenStart:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 75
    :cond_0
    :goto_0
    sget v0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->sFormatType:I

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mFormatting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_1
    monitor-exit p0

    return-void

    .line 70
    :cond_2
    :try_start_1
    iget v0, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mHyphenStart:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 71
    iget v0, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mHyphenStart:I

    iget v1, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mHyphenStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 83
    iget-boolean v2, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mFormatting:Z

    if-nez v2, :cond_0

    .line 85
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 86
    .local v1, selStart:I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 87
    .local v0, selEnd:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    if-ne p3, v4, :cond_2

    if-nez p4, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    if-ne v1, v0, :cond_2

    .line 92
    iput-boolean v4, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mDeletingHyphen:Z

    .line 93
    iput p2, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mHyphenStart:I

    .line 95
    add-int/lit8 v2, p2, 0x1

    if-ne v1, v2, :cond_1

    .line 96
    iput-boolean v4, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mDeletingBackward:Z

    .line 104
    .end local v0           #selEnd:I
    .end local v1           #selStart:I
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v0       #selEnd:I
    .restart local v1       #selStart:I
    :cond_1
    iput-boolean v5, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mDeletingBackward:Z

    goto :goto_0

    .line 101
    :cond_2
    iput-boolean v5, p0, Landroid/telephony/LgeKoreaPhoneNumberFormattingTextWatcher;->mDeletingHyphen:Z

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 108
    return-void
.end method
