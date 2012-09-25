.class public Lcom/android/settings_ex/nfc/NfcAdapterProxy;
.super Ljava/lang/Object;
.source "NfcAdapterProxy.java"


# static fields
.field public static STATE_DISCOVERY_OFF:I

.field public static STATE_DISCOVERY_ON:I

.field public static STATE_TURNING_DISCOVERY_OFF:I

.field public static STATE_TURNING_DISCOVERY_ON:I

.field private static mHasAddonAdapter:Z


# instance fields
.field private mNfcAdapterAddonCls:Ljava/lang/Class;

.field private mNfcAdapterAddonObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 22
    sput-boolean v6, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mHasAddonAdapter:Z

    .line 24
    const/16 v4, 0xa

    sput v4, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_DISCOVERY_OFF:I

    .line 25
    const/16 v4, 0xb

    sput v4, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_DISCOVERY_ON:I

    .line 26
    const/16 v4, 0xc

    sput v4, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_TURNING_DISCOVERY_ON:I

    .line 27
    const/16 v4, 0xd

    sput v4, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_TURNING_DISCOVERY_OFF:I

    .line 34
    :try_start_0
    const-string v4, "com.lge.nfcaddon.NfcAdapterAddon"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 35
    .local v1, cls:Ljava/lang/Class;
    const-string v4, "STATE_DISCOVERY_OFF"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_DISCOVERY_OFF:I

    .line 36
    const-string v4, "STATE_DISCOVERY_ON"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_DISCOVERY_ON:I

    .line 37
    const-string v4, "STATE_TURNING_DISCOVERY_ON"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_TURNING_DISCOVERY_ON:I

    .line 38
    const-string v4, "STATE_TURNING_DISCOVERY_OFF"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_TURNING_DISCOVERY_OFF:I

    .line 40
    const-string v5, "getNfcAdapterAddon"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 41
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, addonObj:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 44
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mHasAddonAdapter:Z

    .line 49
    :goto_0
    const-string v4, "NfcAdapterProxy"

    const-string v5, "NfcAdapterProxy static init"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v0           #addonObj:Ljava/lang/Object;
    .end local v3           #m:Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 46
    .restart local v0       #addonObj:Ljava/lang/Object;
    .restart local v3       #m:Ljava/lang/reflect/Method;
    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mHasAddonAdapter:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v0           #addonObj:Ljava/lang/Object;
    .end local v3           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 52
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    sput-boolean v6, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mHasAddonAdapter:Z

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v2, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonCls:Ljava/lang/Class;

    .line 30
    iput-object v2, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonObj:Ljava/lang/Object;

    .line 62
    :try_start_0
    const-string v2, "com.lge.nfcaddon.NfcAdapterAddon"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonCls:Ljava/lang/Class;

    .line 63
    iget-object v3, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonCls:Ljava/lang/Class;

    const-string v4, "getNfcAdapterAddon"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 64
    .local v1, m:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonObj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1           #m:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NfcAdapterProxy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasNfcAddonAdapter()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mHasAddonAdapter:Z

    return v0
.end method


# virtual methods
.method disable()Z
    .locals 7

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 158
    .local v0, bRet:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonCls:Ljava/lang/Class;

    const-string v6, "disableNfcCard"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 159
    .local v2, m:Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonObj:Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 160
    .local v3, ret:Ljava/lang/Object;
    check-cast v3, Ljava/lang/Boolean;

    .end local v3           #ret:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 165
    const-string v4, "NfcAdapterProxy"

    const-string v5, "NfcAdapterWrapper disable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    .line 167
    .end local v2           #m:Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "NfcAdapterProxy"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v4, 0x0

    goto :goto_0
.end method

.method disableNfcDiscovery()Z
    .locals 7

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 188
    .local v0, bRet:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonCls:Ljava/lang/Class;

    const-string v6, "disableNfcDiscovery"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 189
    .local v2, m:Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonObj:Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 190
    .local v3, ret:Ljava/lang/Object;
    check-cast v3, Ljava/lang/Boolean;

    .end local v3           #ret:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 195
    const-string v4, "NfcAdapterProxy"

    const-string v5, "NfcAdapterWrapper disableNfcDiscovery"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    .line 196
    .end local v2           #m:Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "NfcAdapterProxy"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v4, 0x0

    goto :goto_0
.end method

.method enable()Z
    .locals 7

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 143
    .local v0, bRet:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonCls:Ljava/lang/Class;

    const-string v6, "enableNfcCard"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 144
    .local v2, m:Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonObj:Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 145
    .local v3, ret:Ljava/lang/Object;
    check-cast v3, Ljava/lang/Boolean;

    .end local v3           #ret:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 150
    const-string v4, "NfcAdapterProxy"

    const-string v5, "NfcAdapterWrapper enable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    .line 152
    .end local v2           #m:Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "NfcAdapterProxy"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v4, 0x0

    goto :goto_0
.end method

.method enableNfcDiscovery()Z
    .locals 7

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 174
    .local v0, bRet:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonCls:Ljava/lang/Class;

    const-string v6, "enableNfcDiscovery"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 175
    .local v2, m:Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonObj:Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 176
    .local v3, ret:Ljava/lang/Object;
    check-cast v3, Ljava/lang/Boolean;

    .end local v3           #ret:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 181
    const-string v4, "NfcAdapterProxy"

    const-string v5, "NfcAdapterWrapper enableNfcDiscovery"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    .line 182
    .end local v2           #m:Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "NfcAdapterProxy"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v4, 0x0

    goto :goto_0
.end method

.method getAdapterExtraState()I
    .locals 7

    .prologue
    .line 113
    const/4 v3, 0x0

    .line 115
    .local v3, ret:I
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonCls:Ljava/lang/Class;

    const-string v6, "getAdapterDiscoveryState"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 116
    .local v1, m:Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonObj:Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 117
    .local v2, obj:Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #obj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 121
    .end local v1           #m:Ljava/lang/reflect/Method;
    :goto_0
    const-string v4, "NfcAdapterProxy"

    const-string v5, "NfcAdapterWrapper getAdapterExtraState"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v3

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "NfcAdapterProxy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getAdapterState()I
    .locals 7

    .prologue
    .line 100
    const/4 v3, 0x0

    .line 102
    .local v3, ret:I
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonCls:Ljava/lang/Class;

    const-string v6, "getAdapterCardState"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 103
    .local v1, m:Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonObj:Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 104
    .local v2, obj:Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #obj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 108
    .end local v1           #m:Ljava/lang/reflect/Method;
    :goto_0
    const-string v4, "NfcAdapterProxy"

    const-string v5, "NfcAdapterWrapper getAdapterState"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v3

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "NfcAdapterProxy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getExtraState(Landroid/content/Intent;)I
    .locals 8
    .parameter "intent"

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 87
    .local v1, addonIntent:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonCls:Ljava/lang/Class;

    const-string v6, "EXTRA_ADAPTER_DISCOVERY_STATE"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 88
    .local v3, f:Ljava/lang/reflect/Field;
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonObj:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 89
    .local v4, obj:Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 90
    const-string v5, "NfcAdapterProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NfcAdapterWrapper getExtraState"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v4           #obj:Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->getAdapterExtraState()I

    move-result v5

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    return v5

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "NfcAdapterProxy"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getState(Landroid/content/Intent;)I
    .locals 8
    .parameter "intent"

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, addonIntent:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonCls:Ljava/lang/Class;

    const-string v6, "EXTRA_ADAPTER_CARD_STATE"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 74
    .local v3, f:Ljava/lang/reflect/Field;
    iget-object v5, p0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->mNfcAdapterAddonObj:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 75
    .local v4, obj:Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 76
    const-string v5, "NfcAdapterProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NfcAdapterWrapper getState"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v4           #obj:Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->getAdapterState()I

    move-result v5

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    return v5

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "NfcAdapterProxy"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
