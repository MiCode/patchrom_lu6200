.class public final Lcom/android/internal/telephony/TelephonyUtils;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# static fields
.field private static final DBG:Z = false

.field public static final LGE_KT_USIM:I = 0x2

.field public static final LGE_LGT_UICC:I = 0x5

.field public static final LGE_NOT_DECIDED:I = 0x0

.field public static final LGE_OUTBOUND_USIM:I = 0x3

.field public static final LGE_SKT_USIM:I = 0x1

.field public static final LGE_TEST_USIM:I = 0x4

.field public static final LGE_USIM_IS_EMPTY:I = 0x2

.field public static final LGE_USIM_IS_NOT_EMPTY:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyUtils"

.field public static final OEM_RAD_DIALER_POPUP:Ljava/lang/String; = "oem_rad_dialer_popup"

.field private static mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

.field private static sContext:Landroid/content/Context;

.field private static sEnglishStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sKoreanStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyUtils;->sKoreanStringMap:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyUtils;->sEnglishStringMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ChildNode(Lorg/w3c/dom/Node;Ljava/util/HashMap;)V
    .locals 7
    .parameter "node"
    .parameter "map"

    .prologue
    const/4 v6, 0x0

    .line 177
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, Node_Name:Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, Text_Content:Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    .line 186
    .local v0, Attr_len:I
    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR!!! Attr_len musb be 1. ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyUtils;->logw(Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, attrName:Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, attrValue:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 193
    invoke-virtual {p1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getTelephonyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "key"

    .prologue
    const/4 v11, 0x0

    .line 200
    const-string v6, ""

    .line 202
    .local v6, retValue:Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/TelephonyUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v4, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 203
    .local v4, locale:Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, lancode:Ljava/lang/String;
    const-string/jumbo v9, "ko"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 205
    sget-object v9, Lcom/android/internal/telephony/TelephonyUtils;->sKoreanStringMap:Ljava/util/HashMap;

    invoke-virtual {v9, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 206
    .local v8, value:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 207
    sget-object v9, Lcom/android/internal/telephony/TelephonyUtils;->sEnglishStringMap:Ljava/util/HashMap;

    invoke-virtual {v9, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #value:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 214
    .restart local v8       #value:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 215
    const-string v8, ""

    .line 217
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 218
    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 219
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 220
    :cond_2
    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 221
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 223
    :cond_3
    const-string v9, "\\\\[n]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, splitStr:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v5, v0, v1

    .line 225
    .local v5, paramPair:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 226
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "line.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v5           #paramPair:Ljava/lang/String;
    .end local v7           #splitStr:[Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_4
    sget-object v9, Lcom/android/internal/telephony/TelephonyUtils;->sEnglishStringMap:Ljava/util/HashMap;

    invoke-virtual {v9, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 210
    .restart local v8       #value:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 211
    sget-object v9, Lcom/android/internal/telephony/TelephonyUtils;->sKoreanStringMap:Ljava/util/HashMap;

    invoke-virtual {v9, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #value:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #value:Ljava/lang/String;
    goto :goto_0

    .line 229
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v3       #len$:I
    .restart local v7       #splitStr:[Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 230
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 233
    :cond_6
    return-object v6
.end method

.method public static final getUsimIsEmpty()I
    .locals 3

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, retVal:I
    sget-object v2, Lcom/android/internal/telephony/TelephonyUtils;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    if-nez v2, :cond_0

    .line 112
    const-string/jumbo v2, "iusiminfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IUsimInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IUsimInfo;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/TelephonyUtils;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    .line 115
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/TelephonyUtils;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    invoke-interface {v2}, Lcom/android/internal/telephony/IUsimInfo;->getUsimIsEmpty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 120
    :goto_0
    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUsimPersoImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "usim_perso_imsi"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getUsimType()I
    .locals 3

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 100
    .local v1, retVal:I
    const-string/jumbo v2, "gsm.sim.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, gsmSimType:Ljava/lang/String;
    const-string/jumbo v2, "skt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 105
    .end local v1           #retVal:I
    :cond_0
    :goto_0
    return v1

    .line 102
    .restart local v1       #retVal:I
    :cond_1
    const-string/jumbo v2, "kt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 103
    :cond_2
    const-string/jumbo v2, "lgu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x5

    goto :goto_0

    .line 104
    :cond_3
    const-string/jumbo v2, "test"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0
.end method

.method public static isFactoryAirplaneModeOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 271
    const-string/jumbo v1, "sys.factory.airplane"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 275
    .local v0, on:Z
    :cond_0
    return v0
.end method

.method public static final isFactoryMode()Z
    .locals 7

    .prologue
    .line 247
    new-instance v1, Ljava/lang/String;

    const-string v5, "/sys/module/lge_emmc_direct_access/parameters/manual_test_mode"

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 249
    .local v1, flag_read_path:Ljava/lang/String;
    const-string v2, ""

    .line 250
    .local v2, frag:Ljava/lang/String;
    const/4 v3, 0x0

    .line 253
    .local v3, inFlagFile:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .local v4, inFlagFile:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 260
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 263
    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    :goto_0
    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 264
    const/4 v5, 0x1

    .line 266
    :goto_1
    return v5

    .line 260
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 261
    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    goto :goto_0

    .line 257
    :catch_1
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Factory Reset Flag read fail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyUtils;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v5

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_4
    throw v5

    .line 266
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 260
    :catch_3
    move-exception v6

    goto :goto_4

    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    goto :goto_3

    .line 257
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static isKTOTAMode(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ota_usim_running"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static final isQCRIL()Z
    .locals 2

    .prologue
    .line 239
    const/4 v0, 0x0

    const-string v1, "Is_QCRIL"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUsimPersoLocked(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "usim_perso_locked"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 308
    const-string v0, "TelephonyUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TelephonyUtils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 316
    const-string v0, "TelephonyUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TelephonyUtils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 312
    const-string v0, "TelephonyUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TelephonyUtils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method

.method public static final parseKrTelephonyStringXML(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 132
    sput-object p0, Lcom/android/internal/telephony/TelephonyUtils;->sContext:Landroid/content/Context;

    .line 135
    :try_start_0
    const-string v4, "/system/etc/kr_telephony_string.xml"

    .line 136
    .local v4, filepath:Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 137
    .local v2, docFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 138
    .local v1, docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 140
    .local v0, doc:Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    .line 145
    const-string v5, "Korean"

    sget-object v6, Lcom/android/internal/telephony/TelephonyUtils;->sKoreanStringMap:Ljava/util/HashMap;

    invoke-static {v5, v0, v6}, Lcom/android/internal/telephony/TelephonyUtils;->viewElement(Ljava/lang/String;Lorg/w3c/dom/Document;Ljava/util/HashMap;)V

    .line 146
    const-string v5, "English"

    sget-object v6, Lcom/android/internal/telephony/TelephonyUtils;->sEnglishStringMap:Ljava/util/HashMap;

    invoke-static {v5, v0, v6}, Lcom/android/internal/telephony/TelephonyUtils;->viewElement(Ljava/lang/String;Lorg/w3c/dom/Document;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v1           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #docFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #filepath:Ljava/lang/String;
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v3

    .line 149
    .local v3, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception create KR Telephony String XML : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyUtils;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static viewElement(Ljava/lang/String;Lorg/w3c/dom/Document;Ljava/util/HashMap;)V
    .locals 7
    .parameter "NodeName"
    .parameter "doc"
    .parameter "map"

    .prologue
    .line 154
    invoke-interface {p1, p0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 155
    .local v4, nodeLst:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .line 160
    .local v1, cnt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 162
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 164
    .local v0, clist:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 166
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 167
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "string"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/internal/telephony/TelephonyUtils;->ChildNode(Lorg/w3c/dom/Node;Ljava/util/HashMap;)V

    .line 164
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 160
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v0           #clist:Lorg/w3c/dom/NodeList;
    .end local v3           #j:I
    :cond_2
    return-void
.end method
