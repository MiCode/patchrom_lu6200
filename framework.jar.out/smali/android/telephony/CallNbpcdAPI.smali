.class public Landroid/telephony/CallNbpcdAPI;
.super Ljava/lang/Object;
.source "CallNbpcdAPI.java"


# static fields
.field public static final CALL_NBPCD_FAIL:I = 0x1

.field public static final CALL_NBPCD_NONE:I = 0x0

.field public static final CALL_NBPCD_SUCCESS:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final MAX_DLUT_NUM:I = 0xde

.field static final MAX_IDD_LENGTH:I = 0x6

.field static final MAX_MCC_COUNT:I = 0x7

.field static final MAX_SID_RANGE_NUM:I = 0x3

.field static final MONTH_YEAR:I = 0x2

.field static final NEGATIVE:I = 0x0

.field static final NOT_SUPPORT_IN_SID:I = 0x0

.field static final POSITIVE:I = 0x1

.field static final SID_MIN_MAX:I = 0x2

.field static final SUPPORT_IN_SID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CallNbpcdAPI"

.field private static dialNumber:Ljava/lang/String;

.field private static dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

.field private static hbpcdRetry:Z

.field private static mNbpcdRefData:Landroid/provider/CallNbpcdDlutTable;

.field private static nbpcdPCD:Z

.field private static nbpcdSupportedInDev:Z

.field private static nbpcdTrialResult:I

.field private static pluscodeActivated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    .line 31
    sput-object v3, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    .line 43
    sput-boolean v1, Landroid/telephony/CallNbpcdAPI;->nbpcdSupportedInDev:Z

    .line 44
    sput-boolean v2, Landroid/telephony/CallNbpcdAPI;->nbpcdPCD:Z

    .line 45
    sput v2, Landroid/telephony/CallNbpcdAPI;->nbpcdTrialResult:I

    .line 46
    sput-boolean v2, Landroid/telephony/CallNbpcdAPI;->hbpcdRetry:Z

    .line 47
    sput-boolean v2, Landroid/telephony/CallNbpcdAPI;->pluscodeActivated:Z

    .line 50
    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    invoke-direct {v0}, Landroid/provider/CallNbpcdDlutTable;-><init>()V

    sput-object v0, Landroid/telephony/CallNbpcdAPI;->mNbpcdRefData:Landroid/provider/CallNbpcdDlutTable;

    .line 52
    sput-object v3, Landroid/telephony/CallNbpcdAPI;->dialNumber:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 22
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callIsNbpcdSupportedInSid()I
    .locals 3

    .prologue
    .line 252
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNbpcdAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " callIsNbpcdSupportedInSid()  return >>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/CallNbpcdAPI;->mNbpcdRefData:Landroid/provider/CallNbpcdDlutTable;

    invoke-virtual {v2}, Landroid/provider/CallNbpcdDlutTable;->getNBPCDSupport()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    sget-object v0, Landroid/telephony/CallNbpcdAPI;->mNbpcdRefData:Landroid/provider/CallNbpcdDlutTable;

    invoke-virtual {v0}, Landroid/provider/CallNbpcdDlutTable;->getNBPCDSupport()I

    move-result v0

    return v0
.end method

.method public static callNbpcdInProgress()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 164
    invoke-static {}, Landroid/telephony/CallNbpcdAPI;->getPcd()Z

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-static {}, Landroid/telephony/CallNbpcdAPI;->hasPlusCode()Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 166
    sget-boolean v1, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CallNbpcdAPI"

    const-string v2, " callNbpcdInProgress()  return >>>> true "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "CallNbpcdAPI"

    const-string v1, " callNbpcdInProgress()  return >>>> false "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static callSupportNBPCDInDevice()Z
    .locals 3

    .prologue
    .line 261
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNbpcdAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " callSupportNBPCDInDevice()  return >>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/telephony/CallNbpcdAPI;->nbpcdSupportedInDev:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->nbpcdSupportedInDev:Z

    return v0
.end method

.method public static compareLastAttempteDate()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 388
    sget-boolean v7, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "CallNbpcdAPI"

    const-string v8, " compareLastAttempteDate() "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 390
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 392
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 393
    .local v1, day:I
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 394
    .local v3, month:I
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 396
    .local v4, year:I
    sget-boolean v7, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "CallNbpcdAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " compareLastAttempteDate() >>>>> month : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " year : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_1
    sget-object v7, Landroid/telephony/CallNbpcdAPI;->mNbpcdRefData:Landroid/provider/CallNbpcdDlutTable;

    invoke-virtual {v7}, Landroid/provider/CallNbpcdDlutTable;->getNBPCDLastAttempt()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, lastAttemptDate:[Ljava/lang/String;
    sget-boolean v7, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "CallNbpcdAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " String[] lastAttemptDate lastAttemptDate[1](year) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_2
    sget-boolean v7, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "CallNbpcdAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " String[] lastAttemptDate lastAttemptDate[0](month) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_3
    aget-object v7, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v7, v4, :cond_5

    .line 413
    :cond_4
    :goto_0
    return v5

    .line 407
    :cond_5
    aget-object v7, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sub-int v7, v3, v7

    const/4 v8, 0x6

    if-ge v7, v8, :cond_4

    move v5, v6

    .line 413
    goto :goto_0
.end method

.method public static dlutUpdate(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 638
    sget-boolean v4, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "CallNbpcdAPI"

    const-string v5, " dlutUpdate(Context context) >>> Start !!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    const/4 v2, 0x0

    .line 641
    .local v2, nbpcdStatus:I
    invoke-static {}, Landroid/telephony/CallNbpcdAPI;->getTrialResult()I

    move-result v2

    .line 643
    invoke-static {}, Landroid/telephony/CallNbpcdAPI;->getPcd()Z

    move-result v4

    if-ne v4, v6, :cond_8

    invoke-static {}, Landroid/telephony/CallNbpcdAPI;->callIsNbpcdSupportedInSid()I

    move-result v4

    if-nez v4, :cond_8

    .line 645
    sget-boolean v4, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "CallNbpcdAPI"

    const-string v5, " dlutUpdate(Context context) getPcd()==true && callIsNbpcdSupportedInSid() == NOT_SUPPORT_IN_SID "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_1
    if-ne v2, v7, :cond_5

    .line 648
    sget-boolean v4, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "CallNbpcdAPI"

    const-string v5, " dlutUpdate(Context context) nbpcdStatus >>>>> CALL_NBPCD_SUCCESS "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_2
    invoke-static {v6, p0}, Landroid/telephony/CallNbpcdAPI;->updateSupportedInTAG(ILandroid/content/Context;)V

    .line 682
    :cond_3
    :goto_0
    const/4 v4, 0x0

    sput-object v4, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    .line 684
    sget-boolean v4, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "CallNbpcdAPI"

    const-string v5, " dlutUpdate(Context context) >>> End !!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_4
    return-void

    .line 651
    :cond_5
    if-ne v2, v6, :cond_3

    .line 653
    sget-boolean v4, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v4, :cond_6

    const-string v4, "CallNbpcdAPI"

    const-string v5, " dlutUpdate(Context context) nbpcdStatus >>>>> CALL_NBPCD_FAIL "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 655
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 657
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 658
    .local v1, month:I
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 660
    .local v3, year:I
    sget-boolean v4, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v4, :cond_7

    const-string v4, "CallNbpcdAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dlutUpdate(Context context) updateLastAttemptedDate() >>>>> month "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  year >>>>>  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p0}, Landroid/telephony/CallNbpcdAPI;->updateLastAttemptedDate(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 664
    .end local v0           #c:Ljava/util/Calendar;
    .end local v1           #month:I
    .end local v3           #year:I
    :cond_8
    invoke-static {}, Landroid/telephony/CallNbpcdAPI;->callIsNbpcdSupportedInSid()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 666
    sget-boolean v4, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v4, :cond_9

    const-string v4, "CallNbpcdAPI"

    const-string v5, " dlutUpdate(Context context) getPcd()==true && callIsNbpcdSupportedInSid() == SUPPORT_IN_SID "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_9
    if-ne v2, v6, :cond_3

    .line 669
    sget-boolean v4, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v4, :cond_a

    const-string v4, "CallNbpcdAPI"

    const-string v5, " dlutUpdate(Context context) nbpcdStatus >>>>> CALL_NBPCD_FAIL "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_a
    const/4 v4, 0x0

    invoke-static {v4, p0}, Landroid/telephony/CallNbpcdAPI;->updateSupportedInTAG(ILandroid/content/Context;)V

    .line 672
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 673
    .restart local v0       #c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 675
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 676
    .restart local v1       #month:I
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 678
    .restart local v3       #year:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p0}, Landroid/telephony/CallNbpcdAPI;->updateLastAttemptedDate(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public static getDialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Landroid/telephony/CallNbpcdAPI;->dialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getHbpcdReattempt()Z
    .locals 3

    .prologue
    .line 145
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNbpcdAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getHbpcdReattempt()  return >>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/telephony/CallNbpcdAPI;->hbpcdRetry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->hbpcdRetry:Z

    return v0
.end method

.method private static getMccForNBPCD(I)I
    .locals 6
    .parameter "mcc"

    .prologue
    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, temp:I
    const/16 v4, 0xa

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 185
    .local v1, conv_arr:[I
    const/16 v4, 0x3ff

    if-ne p0, v4, :cond_1

    .line 187
    sget-boolean v4, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "AssistDialPhoneNumberUtils"

    const-string v5, " UnKnown MCC"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local p0
    :cond_0
    :goto_0
    return p0

    .line 191
    .restart local p0
    :cond_1
    add-int/lit8 v3, p0, 0x6f

    .line 192
    move p0, v3

    .line 193
    move v2, p0

    .line 195
    .local v2, ret_mcc:I
    rem-int/lit8 v4, p0, 0xa

    aget v0, v1, v4

    .line 196
    .local v0, check_digit:I
    if-nez v0, :cond_2

    .line 198
    add-int/lit8 v2, v3, -0xa

    .line 199
    move v3, v2

    .line 202
    :cond_2
    div-int/lit8 p0, p0, 0xa

    .line 203
    rem-int/lit8 v4, p0, 0xa

    aget v0, v1, v4

    .line 204
    if-nez v0, :cond_3

    .line 206
    add-int/lit8 v2, v3, -0x64

    .line 207
    move v3, v2

    .line 210
    :cond_3
    div-int/lit8 p0, p0, 0xa

    .line 211
    rem-int/lit8 v4, p0, 0xa

    aget v0, v1, v4

    .line 212
    if-nez v0, :cond_4

    .line 214
    add-int/lit16 v2, v3, -0x3e8

    .line 216
    :cond_4
    const/16 v4, 0x3e7

    if-le v2, v4, :cond_5

    .line 218
    const/4 v2, 0x0

    :cond_5
    move p0, v2

    .line 220
    goto :goto_0

    .line 183
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getPcd()Z
    .locals 3

    .prologue
    .line 76
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNbpcdAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPcd() >>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/telephony/CallNbpcdAPI;->nbpcdPCD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->nbpcdPCD:Z

    return v0
.end method

.method public static getTrialResult()I
    .locals 3

    .prologue
    .line 92
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNbpcdAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getStatus() return >>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/telephony/CallNbpcdAPI;->nbpcdTrialResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    sget v0, Landroid/telephony/CallNbpcdAPI;->nbpcdTrialResult:I

    return v0
.end method

.method public static hasPlusCode()Z
    .locals 1

    .prologue
    .line 119
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->pluscodeActivated:Z

    return v0
.end method

.method public static hbpcdDoReattempt()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 618
    invoke-static {}, Landroid/telephony/CallNbpcdAPI;->getTrialResult()I

    move-result v1

    .line 619
    .local v1, trialResult:I
    invoke-static {}, Landroid/telephony/CallNbpcdAPI;->getHbpcdReattempt()Z

    move-result v0

    .line 621
    .local v0, hbpcdReattpt:Z
    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    .line 623
    sget-boolean v3, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CallNbpcdAPI"

    const-string v4, " hbpcdDoReattempt() return true "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_0
    :goto_0
    return v2

    .line 628
    :cond_1
    sget-boolean v2, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "CallNbpcdAPI"

    const-string v3, " hbpcdDoReattempt() return false "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 692
    invoke-static {v0}, Landroid/telephony/CallNbpcdAPI;->setPCD(Z)V

    .line 693
    invoke-static {v0}, Landroid/telephony/CallNbpcdAPI;->setTrialResult(I)V

    .line 694
    invoke-static {v0}, Landroid/telephony/CallNbpcdAPI;->setPlusCode(Z)V

    .line 695
    return-void
.end method

.method public static isMatchedNbpcdMcc(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 531
    sget-boolean v1, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CallNbpcdAPI"

    const-string v2, " isMatchedNbpcdMcc(Context context) >>>>> start !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    const/4 v0, 0x0

    .line 534
    .local v0, match:Z
    invoke-static {p0}, Landroid/telephony/CallNbpcdAPI;->isMatchedNbpcdMccUSA(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v3, :cond_5

    .line 536
    sget-boolean v1, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "CallNbpcdAPI"

    const-string v2, " isMatchedNbpcdMccUSA(context) >>>>> True !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_1
    const/4 v0, 0x1

    .line 548
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 550
    invoke-static {p0}, Landroid/telephony/CallNbpcdAPI;->ismatchedNbpcdSidRange(Landroid/content/Context;)Z

    move-result v0

    .line 552
    :cond_3
    sget-boolean v1, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "CallNbpcdAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isMatchedNbpcdMcc(Context context) return >>>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_4
    return v0

    .line 541
    :cond_5
    invoke-static {p0}, Landroid/telephony/CallNbpcdAPI;->isMatchedNbpcdMccOtherCountry(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 543
    sget-boolean v1, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "CallNbpcdAPI"

    const-string v2, " isMatchedNbpcdMccOtherCountry(context) >>>>> True !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMatchedNbpcdMccOtherCountry(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    .line 460
    const/16 v0, 0x3ff

    .line 461
    .local v0, currentMcc:I
    const/4 v3, 0x0

    .line 464
    .local v3, matched:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "assist_dial_ota_mcc"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 465
    sget-boolean v6, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "CallNbpcdAPI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " isMatchedNbpcdMccOtherCountry(Context context)  MCC >>> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .local v1, dlutIndex:I
    :goto_1
    sget-object v6, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 478
    sget-object v6, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/provider/CallNbpcdDlutTable;->getMccCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, mcc:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, mccCnt:I
    :goto_2
    sget-object v6, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/provider/CallNbpcdDlutTable;->getMccCnt()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 481
    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v0, v6, :cond_2

    .line 483
    sget-object v6, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v6, v6, v1

    sput-object v6, Landroid/telephony/CallNbpcdAPI;->mNbpcdRefData:Landroid/provider/CallNbpcdDlutTable;

    .line 484
    sget-boolean v6, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "CallNbpcdAPI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " isMatchedNbpcdMccOtherCountry(Context context)  nNbpcdRefData Index >>> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/telephony/CallNbpcdAPI;->mNbpcdRefData:Landroid/provider/CallNbpcdDlutTable;

    invoke-virtual {v8}, Landroid/provider/CallNbpcdDlutTable;->getIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_1
    const/4 v3, 0x1

    .line 479
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 471
    .end local v1           #dlutIndex:I
    .end local v4           #mcc:[Ljava/lang/String;
    .end local v5           #mccCnt:I
    :catch_0
    move-exception v2

    .line 473
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 476
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v1       #dlutIndex:I
    .restart local v4       #mcc:[Ljava/lang/String;
    .restart local v5       #mccCnt:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 490
    .end local v4           #mcc:[Ljava/lang/String;
    .end local v5           #mccCnt:I
    :cond_4
    return v3
.end method

.method public static isMatchedNbpcdMccUSA(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 424
    const/4 v2, 0x0

    .line 425
    .local v2, matched:Z
    const/16 v3, 0x3ff

    .line 427
    .local v3, mcc:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "assist_dial_ota_mcc"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 428
    sget-boolean v5, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "CallNbpcdAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isMatchedNbpcdMccUSA(Context context)  MCC >>> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :cond_0
    :goto_0
    sget-object v5, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/provider/CallNbpcdDlutTable;->getMccCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, usaMcc:[Ljava/lang/String;
    sget-boolean v5, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "CallNbpcdAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isMatchedNbpcdMccUSA(usaMcc?)>>> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 443
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 445
    sget-object v5, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v5, v5, v8

    sput-object v5, Landroid/telephony/CallNbpcdAPI;->mNbpcdRefData:Landroid/provider/CallNbpcdDlutTable;

    .line 446
    sget-boolean v5, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "CallNbpcdAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isMatchedNbpcdMccUSA(Context context)  nNbpcdRefData Index >>> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/telephony/CallNbpcdAPI;->mNbpcdRefData:Landroid/provider/CallNbpcdDlutTable;

    invoke-virtual {v7}, Landroid/provider/CallNbpcdDlutTable;->getIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_2
    const/4 v2, 0x1

    .line 441
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 434
    .end local v1           #i:I
    .end local v4           #usaMcc:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 451
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v1       #i:I
    .restart local v4       #usaMcc:[Ljava/lang/String;
    :cond_4
    sget-boolean v5, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "CallNbpcdAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isMatchedNbpcdMccUSA(Context context)  retrun >>> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_5
    return v2
.end method

.method public static ismatchedNbpcdSidRange(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    .line 498
    const/4 v4, 0x0

    .line 499
    .local v4, matched:Z
    const v0, 0xf423f

    .line 501
    .local v0, currentSid:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assist_dial_ota_sid"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 502
    sget-boolean v8, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "CallNbpcdAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ismatchedNbpcdSidRange(Context context)  SID >>> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, dlutIndex:I
    :goto_1
    sget-object v8, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    array-length v8, v8

    if-ge v1, v8, :cond_4

    .line 509
    sget-object v8, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/provider/CallNbpcdDlutTable;->getSidRange()Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 510
    .local v5, sid:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, sidCount:I
    :goto_2
    sget-object v8, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/provider/CallNbpcdDlutTable;->getSidRangeCnt()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 512
    mul-int/lit8 v7, v6, 0x2

    .line 513
    .local v7, start:I
    add-int/lit8 v3, v7, 0x1

    .line 514
    .local v3, end:I
    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lt v0, v8, :cond_2

    aget-object v8, v5, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-gt v0, v8, :cond_2

    .line 516
    sget-object v8, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v8, v8, v1

    sput-object v8, Landroid/telephony/CallNbpcdAPI;->mNbpcdRefData:Landroid/provider/CallNbpcdDlutTable;

    .line 517
    sget-boolean v8, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v8, :cond_1

    const-string v8, "CallNbpcdAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ismatchedNbpcdSidRange(Context context)  mNbpcdRefData Index >>> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/telephony/CallNbpcdAPI;->mNbpcdRefData:Landroid/provider/CallNbpcdDlutTable;

    invoke-virtual {v10}, Landroid/provider/CallNbpcdDlutTable;->getIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_1
    const/4 v4, 0x1

    .line 510
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 503
    .end local v1           #dlutIndex:I
    .end local v3           #end:I
    .end local v5           #sid:[Ljava/lang/String;
    .end local v6           #sidCount:I
    .end local v7           #start:I
    :catch_0
    move-exception v2

    .line 505
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 507
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v1       #dlutIndex:I
    .restart local v5       #sid:[Ljava/lang/String;
    .restart local v6       #sidCount:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 522
    .end local v5           #sid:[Ljava/lang/String;
    .end local v6           #sidCount:I
    :cond_4
    sget-boolean v8, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "CallNbpcdAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ismatchedNbpcdSidRange(Context context)  return >>> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_5
    return v4
.end method

.method private static loadAllDlutTable(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 267
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Nbpcd;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$Nbpcd;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 271
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 272
    const-string v1, "CallNbpcdAPI"

    const-string v2, "cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Landroid/provider/CallNbpcdDlutTable;

    sput-object v1, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    .line 278
    sget-boolean v1, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v1, :cond_2

    .line 279
    sget-boolean v1, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "CallNbpcdAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cursor.getCount()  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 283
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 285
    new-instance v9, Landroid/provider/CallNbpcdDlutTable;

    invoke-direct {v9}, Landroid/provider/CallNbpcdDlutTable;-><init>()V

    .line 287
    .local v9, mDT:Landroid/provider/CallNbpcdDlutTable;
    const-string/jumbo v1, "table_index"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/provider/CallNbpcdDlutTable;->setIndex(I)V

    .line 290
    const-string/jumbo v1, "mcc_count"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/provider/CallNbpcdDlutTable;->setMccCnt(I)V

    .line 293
    const-string/jumbo v1, "mcc"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/provider/CallNbpcdDlutTable;->setMccCode(Ljava/lang/String;)V

    .line 296
    const-string/jumbo v1, "sid_range_num"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/provider/CallNbpcdDlutTable;->setSidRangeCnt(I)V

    .line 299
    const-string/jumbo v1, "sid_range"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/provider/CallNbpcdDlutTable;->setSidRange(Ljava/lang/String;)V

    .line 302
    const-string v1, "country_code"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/provider/CallNbpcdDlutTable;->setCountryCode(I)V

    .line 305
    const-string/jumbo v1, "sid_conflict"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/provider/CallNbpcdDlutTable;->setSIDConflict(I)V

    .line 308
    const-string/jumbo v1, "nbpcd_supported"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/provider/CallNbpcdDlutTable;->setNBPCDSupport(I)V

    .line 311
    const-string/jumbo v1, "nbpcd_last_attempted"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/provider/CallNbpcdDlutTable;->setNBPCDLastAttempt(Ljava/lang/String;)V

    .line 314
    const-string/jumbo v1, "idd_code"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/provider/CallNbpcdDlutTable;->setIDDCode(Ljava/lang/String;)V

    .line 317
    sget-object v1, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    aput-object v9, v1, v8

    .line 319
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 326
    .end local v8           #i:I
    .end local v9           #mDT:Landroid/provider/CallNbpcdDlutTable;
    :cond_3
    if-eqz v6, :cond_0

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 323
    :catch_0
    move-exception v7

    .line 324
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    if-eqz v6, :cond_0

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 326
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static plusDialDecision(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 127
    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_1

    .line 129
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNbpcdAPI"

    const-string v1, " plusDialDecision(String number) >>> setPlusCode(true) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/telephony/CallNbpcdAPI;->setPlusCode(Z)V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_1
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "CallNbpcdAPI"

    const-string v1, " plusDialDecision(String number) >>> setPlusCode(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    invoke-static {v2}, Landroid/telephony/CallNbpcdAPI;->setPlusCode(Z)V

    goto :goto_0
.end method

.method public static setDialNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "dialNumber"

    .prologue
    .line 68
    sput-object p0, Landroid/telephony/CallNbpcdAPI;->dialNumber:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static setHbpcdReattempt(Z)V
    .locals 3
    .parameter "hbpcdReattempt"

    .prologue
    .line 154
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNbpcdAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setHbpcdReattempt (boolean hbpcdReattempt)  Set >>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    sput-boolean p0, Landroid/telephony/CallNbpcdAPI;->hbpcdRetry:Z

    .line 156
    return-void
.end method

.method public static setPCD(Z)V
    .locals 3
    .parameter "nbpcdPCD"

    .prologue
    .line 84
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNbpcdAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setPCD >>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    sput-boolean p0, Landroid/telephony/CallNbpcdAPI;->nbpcdPCD:Z

    .line 86
    return-void
.end method

.method public static setPlusCode(Z)V
    .locals 0
    .parameter "hasPlusCode"

    .prologue
    .line 110
    sput-boolean p0, Landroid/telephony/CallNbpcdAPI;->pluscodeActivated:Z

    .line 111
    return-void
.end method

.method public static setTrialResult(I)V
    .locals 3
    .parameter "TrialResult"

    .prologue
    .line 100
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNbpcdAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setTrialResult >>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    sput p0, Landroid/telephony/CallNbpcdAPI;->nbpcdTrialResult:I

    .line 102
    return-void
.end method

.method public static setUpProcess(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 561
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNbpcdAPI"

    const-string v1, " setUpProcess(Context context) >>>>> start !!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    invoke-static {}, Landroid/telephony/CallNbpcdAPI;->init()V

    .line 564
    sget-object v0, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    if-nez v0, :cond_1

    .line 566
    invoke-static {p0}, Landroid/telephony/CallNbpcdAPI;->loadAllDlutTable(Landroid/content/Context;)V

    .line 569
    :cond_1
    invoke-static {p0}, Landroid/telephony/CallNbpcdAPI;->isMatchedNbpcdMcc(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_e

    .line 571
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "CallNbpcdAPI"

    const-string v1, " setUpProcess(Context context) isMatchedNbpcdMcc(context) >>>>> true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_2
    invoke-static {}, Landroid/telephony/CallNbpcdAPI;->callSupportNBPCDInDevice()Z

    move-result v0

    if-ne v0, v2, :cond_6

    .line 575
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "CallNbpcdAPI"

    const-string v1, " setUpProcess(Context context) callSupportNBPCDInDevice() >>>>> true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_3
    invoke-static {}, Landroid/telephony/CallNbpcdAPI;->callIsNbpcdSupportedInSid()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 578
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "CallNbpcdAPI"

    const-string v1, " setUpProcess(Context context) callIsNbpcdSupportedInSid() >>>>> true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_4
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "CallNbpcdAPI"

    const-string v1, " setUpProcess(Context context) setPCD >>>>> true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_5
    invoke-static {v2}, Landroid/telephony/CallNbpcdAPI;->setPCD(Z)V

    .line 607
    :cond_6
    :goto_0
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "CallNbpcdAPI"

    const-string v1, " setUpProcess(Context context) >>>>> end !!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_7
    return-void

    .line 584
    :cond_8
    invoke-static {}, Landroid/telephony/CallNbpcdAPI;->compareLastAttempteDate()Z

    move-result v0

    if-ne v0, v2, :cond_b

    .line 586
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "CallNbpcdAPI"

    const-string v1, " setUpProcess(Context context) compareLastAttempteDate() >>>>> true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_9
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "CallNbpcdAPI"

    const-string v1, " setUpProcess(Context context) setPCD >>>>> true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_a
    invoke-static {v2}, Landroid/telephony/CallNbpcdAPI;->setPCD(Z)V

    goto :goto_0

    .line 592
    :cond_b
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "CallNbpcdAPI"

    const-string v1, " setUpProcess(Context context) compareLastAttempteDate() >>>>> false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_c
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "CallNbpcdAPI"

    const-string v1, " setUpProcess(Context context) setPCD >>>>> false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_d
    invoke-static {v3}, Landroid/telephony/CallNbpcdAPI;->setPCD(Z)V

    goto :goto_0

    .line 601
    :cond_e
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "CallNbpcdAPI"

    const-string v1, " setUpProcess(Context context) isMatchedNbpcdMcc(context) >>>>> false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_f
    sget-boolean v0, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v0, :cond_10

    const-string v0, "CallNbpcdAPI"

    const-string v1, " setUpProcess(Context context) setPCD >>>>> false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_10
    invoke-static {v3}, Landroid/telephony/CallNbpcdAPI;->setPCD(Z)V

    .line 604
    invoke-static {v3, p0}, Landroid/telephony/CallNbpcdAPI;->updateSupportedInTAG(ILandroid/content/Context;)V

    goto :goto_0
.end method

.method public static updateLastAttemptedDate(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .parameter "month"
    .parameter "year"
    .parameter "mContext"

    .prologue
    .line 363
    sget-boolean v5, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "CallNbpcdAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " updateLastAttemptedDate () >>>>> month : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " year : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    sget-object v5, Landroid/telephony/CallNbpcdAPI;->mNbpcdRefData:Landroid/provider/CallNbpcdDlutTable;

    invoke-virtual {v5}, Landroid/provider/CallNbpcdDlutTable;->getIndex()I

    move-result v1

    .line 365
    .local v1, dlutIndex:I
    sget-boolean v5, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "CallNbpcdAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mNbpcdRefData.getIndex() return >>>> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, date:Ljava/lang/String;
    sget-object v5, Landroid/telephony/CallNbpcdAPI;->mNbpcdRefData:Landroid/provider/CallNbpcdDlutTable;

    invoke-virtual {v5, v0}, Landroid/provider/CallNbpcdDlutTable;->setNBPCDLastAttempt(Ljava/lang/String;)V

    .line 371
    sget-object v5, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v5, v5, v1

    invoke-virtual {v5, v0}, Landroid/provider/CallNbpcdDlutTable;->setNBPCDLastAttempt(Ljava/lang/String;)V

    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "table_index="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .local v4, where:Ljava/lang/StringBuilder;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 376
    .local v3, values:Landroid/content/ContentValues;
    const-string/jumbo v5, "nbpcd_last_attempted"

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 379
    .local v2, mCR:Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/Settings$Nbpcd;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 381
    return-void
.end method

.method public static updateSupportedInTAG(ILandroid/content/Context;)V
    .locals 7
    .parameter "isSupport"
    .parameter "mContext"

    .prologue
    .line 337
    sget-boolean v4, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "CallNbpcdAPI"

    const-string v5, " updateSupportedTag() Start !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    sget-object v4, Landroid/telephony/CallNbpcdAPI;->mNbpcdRefData:Landroid/provider/CallNbpcdDlutTable;

    invoke-virtual {v4}, Landroid/provider/CallNbpcdDlutTable;->getIndex()I

    move-result v0

    .line 340
    .local v0, dlutIndex:I
    sget-boolean v4, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "CallNbpcdAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateSupportedInTAG() dlutInext =>> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_1
    sget-object v4, Landroid/telephony/CallNbpcdAPI;->mNbpcdRefData:Landroid/provider/CallNbpcdDlutTable;

    invoke-virtual {v4, p0}, Landroid/provider/CallNbpcdDlutTable;->setNBPCDSupport(I)V

    .line 343
    sget-object v4, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    if-eqz v4, :cond_3

    sget-object v4, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    .line 344
    sget-object v4, Landroid/telephony/CallNbpcdAPI;->dlutBuffer:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v4, v4, v0

    invoke-virtual {v4, p0}, Landroid/provider/CallNbpcdDlutTable;->setNBPCDSupport(I)V

    .line 348
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "table_index="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .local v3, where:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v2, values:Landroid/content/ContentValues;
    const-string/jumbo v4, "nbpcd_supported"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 354
    .local v1, mCR:Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/Settings$Nbpcd;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 355
    sget-boolean v4, Landroid/telephony/CallNbpcdAPI;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "CallNbpcdAPI"

    const-string v5, " updateSupportedTag() End !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_2
    return-void

    .line 346
    .end local v1           #mCR:Landroid/content/ContentResolver;
    .end local v2           #values:Landroid/content/ContentValues;
    .end local v3           #where:Ljava/lang/StringBuilder;
    :cond_3
    const-string v4, "CallNbpcdAPI"

    const-string v5, "dlutBuffer : null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
