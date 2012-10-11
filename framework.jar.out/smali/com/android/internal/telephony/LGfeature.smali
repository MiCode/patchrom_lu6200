.class public Lcom/android/internal/telephony/LGfeature;
.super Ljava/lang/Object;
.source "LGfeature.java"


# static fields
.field public static final ATANDT:I = 0x4

.field public static final DCMSET:I = 0x3

.field public static final KT:I = 0x5

.field public static final LGUPLUS:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "LGfeature"

.field public static final MPCS:I = 0x7

.field public static final MPDN_NOTSUPPORT:I = 0x0

.field public static final NAI_ALLSUPPORT:I = 0x0

.field public static final NAI_IntAndAppV4:I = 0x1

.field public static final SKT:I = 0x6

#the value of this static final field might be set in the static constructor
.field public static final SUPPORT_DEBUG:Z = false

.field public static final VZWbaseSet:I = 0x1


# instance fields
.field public APN_SELECTION:Z

.field public BLOCK_NEXTAPN:Z

.field public CHECK_LW_AND_WONLY_MODE:Z

.field public Current_build_type:I

.field public DefaultPDNdependancy:Z

.field public Disable_mms_updown_ok:Z

.field public DisconnectOnly_ChangePDN:Z

.field public ENABLE_MPDN:Z

.field public FD_DELAY_CALLING:Z

.field public IMSPowerOffdelaytime:I

.field public IPv6_block_handle_by_SDM:Z

.field public InterworkingCDMAnLTE:Z

.field public IsPossibleSetMobileNOSVC:Z

.field public LCDon_PSretry:Z

.field public LIMIT_DATA_USAGE:Z

.field public MANUAL_NET_SEARCH:Z

.field public MMS_MOBILE_OFF:Z

.field public MMS_RETRY_CONNECTION:Z

.field public MPDNset:I

.field public Mobile_MMS_DNS_QUERY:Z

.field public NAI_support:I

.field public NOTI_GPRS_REJECT:Z

.field public NO_Retry_DualIP_PartialFail:Z

.field public NoDisconnectforChangeIP:Z

.field public PAYPOPUP_KO:Z

.field public PDNsyncWithModem:Z

.field public PDP_REJECT_UI_DEBUG_FILE:Z

.field public PROTECTION_VOICE_CALL:Z

.field public PermanentFailRetry:Z

.field public PowerOff_OnlyDettach:Z

.field public RETURN_OTHERTYPE:Z

.field public SUPPORT_DEFAULT_PREFER_APN:Z

.field public SUPPORT_DOCOMO_DSAC:Z

.field public SUPPORT_DOCOMO_ROAMING_MTU:Z

.field public SUPPORT_DOCOMO_TETHER:Z

.field public SUPPORT_FACTORY_RESET_DEFAULT_APN_SYNC:Z

.field public SUPPORT_INHIBIT_APN_CHANGE:Z

.field public SUPPORT_IPV6:Z

.field public SUPPORT_MODE_CHANGE:Z

.field public SUPPORT_REATTACH_DEFAULT_PDN:Z

.field public SUPPORT_RETAIN_SOCKET_CONN_IN_OOS:Z

.field public SUPPORT_RETAIN_TCP_BUF_BTN_LTE_HSPA:Z

.field public SUPPORT_ROAMING_LOCK:Z

.field public SUPPORT_UPDATE_TCP_BUF:Z

.field public SUPPORT_UPDATE_TCP_BUF_CDMA:Z

.field public SUPPORT_USE_PREFER_APN_FOR_NONDEF_SRV_TYPE:Z

.field public SendDisableinfotoModem:Z

.field public SendPDNTableInCDMA:Z

.field public Send_Data_Roam_Popup_Intent:Z

.field public UserMenuNotControlIMS:Z

.field public User_3g_mode_maintain:Z

.field public bypassforuplus:Z

.field public cdmaTimer:I

.field public closeDelayForIms:Z

.field public disallowed1xDataCall:Z

.field public fixthephonetypetoCDMA:Z

.field public imsstarttiming:Z

.field private mContext:Landroid/content/Context;

.field public myfeatureset:Ljava/lang/String;

.field public notify_data_connection_delay:Z

.field public poweroffdelayneed:Z

.field public protection_voice_all:Z

.field public retry_interval:I

.field public rilResetWhenMismatchState:Z

.field public rxtx_debug:Z

.field public sigstrengthtype:I

.field public useCdmaTimer:Z

.field public usePcscfAddress:Z

.field public usingLG_DNS_Prop:Z

.field public wifiduringtethering:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "persist.lge.data.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "featureset"

    .prologue
    const/16 v6, 0xbb8

    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 290
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    .line 134
    iput v3, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 136
    iput v3, p0, Lcom/android/internal/telephony/LGfeature;->NAI_support:I

    .line 138
    iput v3, p0, Lcom/android/internal/telephony/LGfeature;->retry_interval:I

    .line 140
    iput v3, p0, Lcom/android/internal/telephony/LGfeature;->IMSPowerOffdelaytime:I

    .line 143
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->DefaultPDNdependancy:Z

    .line 146
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->InterworkingCDMAnLTE:Z

    .line 149
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->poweroffdelayneed:Z

    .line 151
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->PDNsyncWithModem:Z

    .line 155
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->usePcscfAddress:Z

    .line 161
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->NoDisconnectforChangeIP:Z

    .line 166
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LCDon_PSretry:Z

    .line 168
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->PermanentFailRetry:Z

    .line 172
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_MODE_CHANGE:Z

    .line 173
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_REATTACH_DEFAULT_PDN:Z

    .line 174
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_DOCOMO_TETHER:Z

    .line 175
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_IPV6:Z

    .line 177
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_DEFAULT_PREFER_APN:Z

    .line 178
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_FACTORY_RESET_DEFAULT_APN_SYNC:Z

    .line 179
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_INHIBIT_APN_CHANGE:Z

    .line 180
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_DOCOMO_DSAC:Z

    .line 181
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_UPDATE_TCP_BUF:Z

    .line 182
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_RETAIN_TCP_BUF_BTN_LTE_HSPA:Z

    .line 183
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_USE_PREFER_APN_FOR_NONDEF_SRV_TYPE:Z

    .line 184
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_ROAMING_LOCK:Z

    .line 185
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_DOCOMO_ROAMING_MTU:Z

    .line 186
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_RETAIN_SOCKET_CONN_IN_OOS:Z

    .line 189
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->wifiduringtethering:Z

    .line 193
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->fixthephonetypetoCDMA:Z

    .line 195
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->bypassforuplus:Z

    .line 198
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->imsstarttiming:Z

    .line 203
    iput v3, p0, Lcom/android/internal/telephony/LGfeature;->sigstrengthtype:I

    .line 206
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->PAYPOPUP_KO:Z

    .line 207
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->MMS_MOBILE_OFF:Z

    .line 208
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->APN_SELECTION:Z

    .line 209
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->FD_DELAY_CALLING:Z

    .line 210
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->BLOCK_NEXTAPN:Z

    .line 211
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->PROTECTION_VOICE_CALL:Z

    .line 212
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LIMIT_DATA_USAGE:Z

    .line 213
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->rxtx_debug:Z

    .line 214
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->MMS_RETRY_CONNECTION:Z

    .line 215
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->NOTI_GPRS_REJECT:Z

    .line 216
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->MANUAL_NET_SEARCH:Z

    .line 218
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->PDP_REJECT_UI_DEBUG_FILE:Z

    .line 221
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->useCdmaTimer:Z

    .line 222
    iput v3, p0, Lcom/android/internal/telephony/LGfeature;->cdmaTimer:I

    .line 227
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->disallowed1xDataCall:Z

    .line 231
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->UserMenuNotControlIMS:Z

    .line 235
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->protection_voice_all:Z

    .line 236
    iput v3, p0, Lcom/android/internal/telephony/LGfeature;->Current_build_type:I

    .line 237
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->Disable_mms_updown_ok:Z

    .line 238
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->PowerOff_OnlyDettach:Z

    .line 239
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->notify_data_connection_delay:Z

    .line 240
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->User_3g_mode_maintain:Z

    .line 241
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->IsPossibleSetMobileNOSVC:Z

    .line 242
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->ENABLE_MPDN:Z

    .line 243
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->RETURN_OTHERTYPE:Z

    .line 248
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->DisconnectOnly_ChangePDN:Z

    .line 250
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SendPDNTableInCDMA:Z

    .line 253
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SendDisableinfotoModem:Z

    .line 256
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->closeDelayForIms:Z

    .line 259
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->CHECK_LW_AND_WONLY_MODE:Z

    .line 263
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->IPv6_block_handle_by_SDM:Z

    .line 267
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->Send_Data_Roam_Popup_Intent:Z

    .line 271
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->Mobile_MMS_DNS_QUERY:Z

    .line 275
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->usingLG_DNS_Prop:Z

    .line 278
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->rilResetWhenMismatchState:Z

    .line 282
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->NO_Retry_DualIP_PartialFail:Z

    .line 286
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_UPDATE_TCP_BUF_CDMA:Z

    .line 291
    iput-object p2, p0, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    .line 292
    iput-object p1, p0, Lcom/android/internal/telephony/LGfeature;->mContext:Landroid/content/Context;

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/LGfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_phone_type"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 298
    const-string v0, "LGfeature"

    const-string v1, "fixed type is setting, your phone will be fixed to cdma "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->fixthephonetypetoCDMA:Z

    .line 303
    :cond_0
    const-string/jumbo v0, "ril.current.vzwfeature"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "VZWBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iput v2, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 309
    iput v2, p0, Lcom/android/internal/telephony/LGfeature;->NAI_support:I

    .line 310
    iput v2, p0, Lcom/android/internal/telephony/LGfeature;->retry_interval:I

    .line 311
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->DefaultPDNdependancy:Z

    .line 312
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->poweroffdelayneed:Z

    .line 313
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->PDNsyncWithModem:Z

    .line 314
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/internal/telephony/LGfeature;->IMSPowerOffdelaytime:I

    .line 315
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->InterworkingCDMAnLTE:Z

    .line 316
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->MMS_RETRY_CONNECTION:Z

    .line 319
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->DisconnectOnly_ChangePDN:Z

    .line 321
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SendPDNTableInCDMA:Z

    .line 324
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SendDisableinfotoModem:Z

    .line 327
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->IPv6_block_handle_by_SDM:Z

    .line 328
    const-string/jumbo v0, "ril.current.vzwfeature"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->Send_Data_Roam_Popup_Intent:Z

    .line 333
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->IsPossibleSetMobileNOSVC:Z

    .line 450
    :goto_0
    return-void

    .line 337
    :cond_1
    const-string v0, "LGTBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v3, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->poweroffdelayneed:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->PDNsyncWithModem:Z

    iput v6, p0, Lcom/android/internal/telephony/LGfeature;->IMSPowerOffdelaytime:I

    #iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->PAYPOPUP_KO:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->disallowed1xDataCall:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->wifiduringtethering:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->imsstarttiming:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->PDP_REJECT_UI_DEBUG_FILE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->APN_SELECTION:Z

    #iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_MODE_CHANGE:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->MANUAL_NET_SEARCH:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->PowerOff_OnlyDettach:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->closeDelayForIms:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->IsPossibleSetMobileNOSVC:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->bypassforuplus:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->ENABLE_MPDN:Z

    iput v4, p0, Lcom/android/internal/telephony/LGfeature;->Current_build_type:I

    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->DisconnectOnly_ChangePDN:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->rilResetWhenMismatchState:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->NO_Retry_DualIP_PartialFail:Z

    iput v4, p0, Lcom/android/internal/telephony/LGfeature;->sigstrengthtype:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_UPDATE_TCP_BUF_CDMA:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->RETURN_OTHERTYPE:Z

    goto :goto_0

    :cond_2
    const-string v0, "ATANDT"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 367
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->PDNsyncWithModem:Z

    .line 368
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->IsPossibleSetMobileNOSVC:Z

    .line 369
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->Mobile_MMS_DNS_QUERY:Z

    goto :goto_0

    .line 371
    :cond_3
    const-string v0, "KTBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 373
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->LCDon_PSretry:Z

    .line 374
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_ROAMING_LOCK:Z

    .line 375
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->IsPossibleSetMobileNOSVC:Z

    .line 376
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->DisconnectOnly_ChangePDN:Z

    goto :goto_0

    .line 378
    :cond_4
    const-string v0, "SKTBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 380
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->PAYPOPUP_KO:Z

    .line 381
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->MMS_MOBILE_OFF:Z

    .line 382
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->APN_SELECTION:Z

    .line 383
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->FD_DELAY_CALLING:Z

    .line 384
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->BLOCK_NEXTAPN:Z

    .line 385
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->NOTI_GPRS_REJECT:Z

    .line 386
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->PROTECTION_VOICE_CALL:Z

    .line 388
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->MANUAL_NET_SEARCH:Z

    .line 389
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->LIMIT_DATA_USAGE:Z

    .line 393
    iput v5, p0, Lcom/android/internal/telephony/LGfeature;->sigstrengthtype:I

    .line 397
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->poweroffdelayneed:Z

    .line 398
    iput v6, p0, Lcom/android/internal/telephony/LGfeature;->IMSPowerOffdelaytime:I

    .line 399
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_MODE_CHANGE:Z

    .line 400
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_IPV6:Z

    .line 401
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->protection_voice_all:Z

    .line 402
    iput v5, p0, Lcom/android/internal/telephony/LGfeature;->Current_build_type:I

    .line 403
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->Disable_mms_updown_ok:Z

    .line 404
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->PowerOff_OnlyDettach:Z

    .line 405
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_ROAMING_LOCK:Z

    .line 406
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->closeDelayForIms:Z

    .line 407
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->User_3g_mode_maintain:Z

    .line 408
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->rxtx_debug:Z

    .line 409
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->IsPossibleSetMobileNOSVC:Z

    .line 410
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->ENABLE_MPDN:Z

    .line 411
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->RETURN_OTHERTYPE:Z

    .line 412
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->DisconnectOnly_ChangePDN:Z

    .line 413
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->wifiduringtethering:Z

    .line 414
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->LCDon_PSretry:Z

    .line 415
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->rilResetWhenMismatchState:Z

    goto/16 :goto_0

    .line 417
    :cond_5
    const-string v0, "DCMBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 419
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->PDNsyncWithModem:Z

    .line 420
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_MODE_CHANGE:Z

    .line 421
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_DOCOMO_TETHER:Z

    .line 422
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_IPV6:Z

    .line 423
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_DEFAULT_PREFER_APN:Z

    .line 424
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_FACTORY_RESET_DEFAULT_APN_SYNC:Z

    .line 425
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_INHIBIT_APN_CHANGE:Z

    .line 426
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_DOCOMO_DSAC:Z

    .line 427
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_RETAIN_TCP_BUF_BTN_LTE_HSPA:Z

    .line 428
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_USE_PREFER_APN_FOR_NONDEF_SRV_TYPE:Z

    .line 429
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_ROAMING_LOCK:Z

    .line 430
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->PowerOff_OnlyDettach:Z

    .line 431
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_DOCOMO_ROAMING_MTU:Z

    .line 432
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_RETAIN_SOCKET_CONN_IN_OOS:Z

    goto/16 :goto_0

    .line 436
    :cond_6
    const-string v0, "MPCSBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 438
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/telephony/LGfeature;->sigstrengthtype:I

    .line 441
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->SendPDNTableInCDMA:Z

    goto/16 :goto_0

    .line 446
    :cond_7
    const-string v0, "LGfeature"

    const-string v1, "Wrong feature"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public fixPhoneType(Z)V
    .locals 3
    .parameter "fixtype"

    .prologue
    .line 456
    if-eqz p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/LGfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_phone_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 468
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_phone_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "my featureset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MPDN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NAI_SUPPORT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/LGfeature;->NAI_support:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " poweroffdelayneed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/LGfeature;->poweroffdelayneed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
