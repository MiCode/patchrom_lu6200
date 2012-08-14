.class Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;
.super Ljava/lang/Object;
.source "LgeFastDormancyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeFastDormancyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FastDormancyConfig"
.end annotation


# static fields
.field private static final FDCONFIG_DEFAULT_FDMAXRETRY:I = 0x1

.field private static final FDCONFIG_DEFAULT_FDRETRY_TIMER_MS:J = 0x1388L

.field private static final FDCONFIG_DEFAULT_FDTRIGGER_TIMER_SCREEN_OFF_MS:J = 0x1388L

.field private static final FDCONFIG_DEFAULT_FDTRIGGER_TIMER_SCREEN_ON_MS:J = 0x2710L

.field private static final FDCONFIG_DEFAULT_TRANSFERCHECK_TIMER_MS:J = 0x3e8L

.field private static final FDCONFIG_DEFAULT_TRANSFERCHECK_TIMER_MS_IN_UNKOWN_STATE:J = 0x1388L

.field private static final FDCONFIG_OPTION_FLAG_5SEC_DELAY_FD_IN_DIALING:I = 0x4

.field private static final FDCONFIG_OPTION_FLAG_PREVENT_FD_ATNT:I = 0x8

.field private static final FDCONFIG_OPTION_FLAG_PREVENT_FD_WHEN_LCD_ON:I = 0x1

.field private static final FDCONFIG_OPTION_FLAG_PREVENT_FD_WHEN_VOICE_CALLING:I = 0x2

.field private static final FDCONFIG_SETTING_INDEX_ACTIVE:I = 0x0

.field private static final FDCONFIG_SETTING_INDEX_DEBUGMODE:I = 0x2

.field private static final FDCONFIG_SETTING_INDEX_FD_OPTION_VAL:I = 0x9

.field private static final FDCONFIG_SETTING_INDEX_FD_RETRY_TIMER_VAL:I = 0x7

.field private static final FDCONFIG_SETTING_INDEX_MAX_FD_RETRY:I = 0x8

.field private static final FDCONFIG_SETTING_INDEX_SCREEN_OFF_FDTRIGGER_TIMER_VAL:I = 0x6

.field private static final FDCONFIG_SETTING_INDEX_SCREEN_ON_FDTRIGGER_TIMER_VAL:I = 0x5

.field private static final FDCONFIG_SETTING_INDEX_TRANSFER_CHECK_TIMER_VAL:I = 0x3

.field private static final FDCONFIG_SETTING_INDEX_TRANSFER_CHECK_TIMER_VAL_IN_UNKNOWN_STATE:I = 0x4

.field private static final FDCONFIG_SETTING_INDEX_VERSION:I = 0x1


# instance fields
.field mDataTransferCheckTimerVal:J

.field mDataTransferCheckTimerValInUnkownState:J

.field mFDEnableDependOnEmailIntent:Z

.field mFDMaxRetry:I

.field mFDRetryTimerVal:J

.field mFDTriggerTimerVal_ScreenOff:J

.field mFDTriggerTimerVal_ScreenOn:J

.field mIsActive:Z

.field mIsDebugMode:Z

.field mIsDelayInDialing:Z

.field mIsPreventFD:Z

.field mIsPreventWhenCalling:Z

.field mIsPreventWhenLdcOn:Z

.field mIsScreenOn:Z

.field mVersion:I

.field final synthetic this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x1388

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 324
    iput-object p1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsDelayInDialing:Z

    .line 315
    iput-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsPreventWhenLdcOn:Z

    .line 316
    iput-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsPreventWhenCalling:Z

    .line 319
    iput-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDEnableDependOnEmailIntent:Z

    .line 320
    iput-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsPreventFD:Z

    .line 322
    iput-boolean v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsScreenOn:Z

    .line 325
    iput-boolean v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsActive:Z

    .line 326
    iput v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mVersion:I

    .line 327
    iput-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsDebugMode:Z

    .line 328
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mDataTransferCheckTimerVal:J

    .line 329
    iput-wide v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mDataTransferCheckTimerValInUnkownState:J

    .line 330
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOn:J

    .line 331
    iput-wide v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOff:J

    .line 332
    iput-wide v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDRetryTimerVal:J

    .line 333
    iput v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDMaxRetry:I

    .line 334
    return-void
.end method


# virtual methods
.method public getDataTransferCheckTimerValue()J
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$700(Lcom/android/internal/telephony/LgeFastDormancyHandler;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    #getter for: Lcom/android/internal/telephony/LgeFastDormancyHandler;->mUnknownState:Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;
    invoke-static {v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$800(Lcom/android/internal/telephony/LgeFastDormancyHandler;)Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 473
    iget-wide v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mDataTransferCheckTimerValInUnkownState:J

    .line 475
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mDataTransferCheckTimerVal:J

    goto :goto_0
.end method

.method public getFDMaxRetry()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDMaxRetry:I

    return v0
.end method

.method public getFDRetryTimerValue()J
    .locals 2

    .prologue
    .line 487
    iget-wide v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDRetryTimerVal:J

    return-wide v0
.end method

.method public getFDTriggerTimerValue()J
    .locals 2

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsScreenOn:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 480
    iget-wide v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOn:J

    .line 482
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOff:J

    goto :goto_0
.end method

.method public getIsActive()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsActive:Z

    return v0
.end method

.method public getIsDebugMode()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsDebugMode:Z

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mVersion:I

    return v0
.end method

.method public isDelayInDialing()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsDelayInDialing:Z

    return v0
.end method

.method public isPreventFDForAtnt()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsPreventFD:Z

    return v0
.end method

.method public isPreventWhenCalling()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsPreventWhenCalling:Z

    return v0
.end method

.method public isPreventWhenLdcOn()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsPreventWhenLdcOn:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsScreenOn:Z

    return v0
.end method

.method public loadSettingFromDb()V
    .locals 18

    .prologue
    .line 338
    const/4 v8, 0x0

    .line 340
    .local v8, FDSettings:Ljava/lang/String;
    const-string v2, "content://telephony/dcm_settings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 342
    .local v3, DCM_SETTINGS_URI:Landroid/net/Uri;
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getNumeric()Ljava/lang/String;

    move-result-object v13

    .line 343
    .local v13, numeric:Ljava/lang/String;
    invoke-static {v13}, Landroid/provider/Telephony$Carriers;->getAutoProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 345
    .local v9, autoprofileKey:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "numeric = \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " and "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "extraid = \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, selection:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "fastdormancy"

    aput-object v6, v4, v2

    .line 348
    .local v4, columns:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 350
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 352
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[loadSettingFromDb] connot find the FD setting with ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->loge(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$600(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "numeric = \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 358
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 359
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[loadSettingFromDb] connot find the FD setting with ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), too"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->loge(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$600(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 362
    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 366
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 367
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 376
    :cond_3
    :goto_0
    if-eqz v10, :cond_4

    .line 377
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update FDSettings is ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 382
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 383
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 385
    .local v14, settings:[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, idx:I
    :goto_1
    array-length v2, v14

    if-ge v12, v2, :cond_c

    .line 386
    aget-object v2, v14, v12

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 387
    .local v15, val:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "idx:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", settings[idx]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v14, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", val:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 388
    packed-switch v12, :pswitch_data_0

    .line 385
    :cond_5
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 369
    .end local v12           #idx:I
    .end local v14           #settings:[Ljava/lang/String;
    .end local v15           #val:I
    :catch_0
    move-exception v11

    .line 371
    .local v11, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v8, 0x0

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string/jumbo v6, "loadSettingFromDb() : not find index with name because of CursorIndexOutOfBoundsException"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->loge(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$600(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    .end local v11           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v12       #idx:I
    .restart local v14       #settings:[Ljava/lang/String;
    .restart local v15       #val:I
    :pswitch_0
    if-eqz v15, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsActive:Z

    goto :goto_2

    .line 391
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsActive:Z

    goto :goto_2

    .line 394
    :pswitch_1
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mVersion:I

    goto :goto_2

    .line 397
    :pswitch_2
    if-eqz v15, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsDebugMode:Z

    goto :goto_2

    .line 398
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsDebugMode:Z

    goto :goto_2

    .line 401
    :pswitch_3
    int-to-long v6, v15

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mDataTransferCheckTimerVal:J

    goto :goto_2

    .line 404
    :pswitch_4
    int-to-long v6, v15

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mDataTransferCheckTimerValInUnkownState:J

    goto :goto_2

    .line 407
    :pswitch_5
    int-to-long v6, v15

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOn:J

    goto :goto_2

    .line 410
    :pswitch_6
    int-to-long v6, v15

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOff:J

    goto :goto_2

    .line 413
    :pswitch_7
    int-to-long v6, v15

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDRetryTimerVal:J

    goto :goto_2

    .line 416
    :pswitch_8
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDMaxRetry:I

    goto :goto_2

    .line 420
    :pswitch_9
    if-eqz v15, :cond_5

    .line 421
    and-int/lit8 v2, v15, 0x1

    if-eqz v2, :cond_8

    .line 422
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsPreventWhenLdcOn:Z

    .line 423
    :cond_8
    and-int/lit8 v2, v15, 0x2

    if-eqz v2, :cond_9

    .line 424
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsPreventWhenCalling:Z

    .line 425
    :cond_9
    and-int/lit8 v2, v15, 0x4

    if-eqz v2, :cond_a

    .line 426
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsDelayInDialing:Z

    .line 428
    :cond_a
    and-int/lit8 v2, v15, 0x8

    if-eqz v2, :cond_5

    .line 429
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsPreventFD:Z

    goto :goto_2

    .line 437
    .end local v12           #idx:I
    .end local v14           #settings:[Ljava/lang/String;
    .end local v15           #val:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v6, "Fail to load FD setting from Db"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->loge(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$600(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 440
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsActive:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsActive:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mVersion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsDebugMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsDebugMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mDataTransferCheckTimerVal:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mDataTransferCheckTimerVal:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mDataTransferCheckTimerValInUnkownState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mDataTransferCheckTimerValInUnkownState:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mFDTriggerTimerVal_ScreenOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOn:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mFDTriggerTimerVal_ScreenOff:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDTriggerTimerVal_ScreenOff:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mFDRetryTimerVal:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDRetryTimerVal:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mFDMaxRetry:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDMaxRetry:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v6, "Option Flages :"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsPreventWhenLdcOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsPreventWhenLdcOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsPreventWhenCalling:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsPreventWhenCalling:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsDelayInDialing:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsDelayInDialing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v2, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 457
    return-void

    .line 388
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public updateScreenState(Z)V
    .locals 0
    .parameter "isScreenOn"

    .prologue
    .line 496
    iput-boolean p1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mIsScreenOn:Z

    .line 497
    return-void
.end method
