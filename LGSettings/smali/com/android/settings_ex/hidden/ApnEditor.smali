.class public Lcom/android/settings_ex/hidden/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBackKey:Z

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultSetting:Ljava/lang/Integer;

.field private mFirstTime:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;

.field private mUserCreateSetting:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-class v0, Lcom/android/settings_ex/hidden/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/hidden/ApnEditor;->TAG:Ljava/lang/String;

    .line 118
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "defaultsetting"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "usercreatesetting"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/hidden/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBackKey:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUserCreateSetting:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/hidden/ApnEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/hidden/ApnEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, mBearerIndex:I
    iget-object v4, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    :cond_0
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    :goto_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1040
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings_ex/hidden/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    :cond_0
    const-string p1, ""

    .line 1043
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1032
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object p1, Lcom/android/settings_ex/hidden/ApnEditor;->sNotSet:Ljava/lang/String;

    .end local p1
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    .line 995
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080813

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0807e5

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/hidden/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/hidden/ApnEditor$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/hidden/ApnEditor$3;-><init>(Lcom/android/settings_ex/hidden/ApnEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings_ex/hidden/ApnEditor$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/hidden/ApnEditor$2;-><init>(Lcom/android/settings_ex/hidden/ApnEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1017
    return-void
.end method

.method private fillUi()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mFirstTime:Z

    if-eqz v8, :cond_5

    iput-boolean v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mFirstTime:Z

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 461
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x7

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xc

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xd

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x8

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x9

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xa

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xf

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mNewApn:Z

    if-eqz v8, :cond_1

    const-string v8, "gsm.sim.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, numeric:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v12, :cond_1

    invoke-virtual {v4, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, mcc:Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, mnc:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCurMnc:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCurMcc:Ljava/lang/String;

    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #mnc:Ljava/lang/String;
    .end local v4           #numeric:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xe

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .local v0, authVal:I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_a

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 511
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x13

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x11

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v5, :cond_b

    .local v5, value:Z
    :goto_1
    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x12

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 526
    .end local v0           #authVal:I
    .end local v5           #value:Z
    :cond_5
    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 535
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    new-instance v8, Lcom/android/settings_ex/hidden/ApnEditor$1;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/hidden/ApnEditor$1;-><init>(Lcom/android/settings_ex/hidden/ApnEditor;)V

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .local v0, authVal:Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, authValIndex:I
    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f09003f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 566
    .local v6, values:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 577
    .end local v1           #authValIndex:I
    .end local v6           #values:[Ljava/lang/String;
    :goto_2
    iget-boolean v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mNewApn:Z

    if-eqz v7, :cond_7

    const-string v7, "APNEditor"

    const-string v8, "NewAPN AuthVal set NoAuth"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v8, Lcom/android/settings_ex/hidden/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/hidden/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 590
    :cond_8
    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/hidden/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    .local v0, authVal:I
    :cond_a
    iget-boolean v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mNewApn:Z

    if-eqz v8, :cond_2

    const-string v8, "APNEditor"

    const-string v9, "NewAPN AuthVal set NoAuth"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move v5, v7

    .line 516
    goto/16 :goto_1

    .line 568
    .local v0, authVal:Ljava/lang/String;
    :cond_c
    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v8, Lcom/android/settings_ex/hidden/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 936
    const/4 v1, 0x0

    .line 938
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 939
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, apn:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 941
    .local v2, mcc:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 943
    .local v3, mnc:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 946
    .local v5, type:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v8, :cond_1

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f08039a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 962
    :cond_0
    :goto_0
    return-object v1

    .line 948
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f08039b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 950
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_3

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-ne v8, v6, :cond_3

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f08082e

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 952
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f08039c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 954
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const v7, 0xfffe

    and-int/2addr v6, v7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f08039d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 958
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "entitlement"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0809ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "raw"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x0

    .line 604
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 605
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 612
    :goto_0
    return-object v3

    .line 608
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 1020
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/settings_ex/hidden/ApnEditor;->sNotSet:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 1024
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1025
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 1024
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1027
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 12
    .parameter "force"

    .prologue
    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 780
    .local v5, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, apn:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 784
    .local v3, mcc:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 787
    .local v4, mnc:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 788
    if-nez p1, :cond_0

    iget-boolean v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBackKey:Z

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const v9, 0xfffe

    and-int/2addr v8, v9

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    :cond_0
    if-nez p1, :cond_5

    iget-boolean v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBackKey:Z

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const v9, 0xfffe

    and-int/2addr v8, v9

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    :cond_1
    iget-boolean v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mNewApn:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 796
    :cond_2
    const/4 v8, 0x1

    .line 932
    .end local v5           #name:Ljava/lang/String;
    :goto_0
    return v8

    .line 799
    .restart local v5       #name:Ljava/lang/String;
    :cond_3
    if-nez p1, :cond_5

    iget-boolean v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBackKey:Z

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const v9, 0xfffe

    and-int/2addr v8, v9

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mNewApn:Z

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 805
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 810
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    if-nez p1, :cond_6

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->showDialog(I)V

    const/4 v8, 0x0

    goto :goto_0

    :cond_6
    const-string v8, "TLS"

    const-string v9, "ro.build.target_operator"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 823
    .local v6, type:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_7

    const-string v8, "001"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "01"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    const-string v9, "default,mms,supl"

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .end local v6           #type:Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 832
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 836
    :cond_8
    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_9

    sget-object v8, Lcom/android/settings_ex/hidden/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_9
    if-eqz p1, :cond_a

    iget-boolean v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mNewApn:Z

    if-eqz v8, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_a

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 847
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 851
    :cond_a
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 856
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "name"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_b

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0805db

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v5           #name:Ljava/lang/String;
    :cond_b
    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v8, "apn"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v8, "proxy"

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v8, "port"

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v8, "mmsproxy"

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v8, "mmsport"

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v8, "user"

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    if-eqz v8, :cond_c

    const-string v8, "server"

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_c
    const-string v8, "password"

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v8, "mmsc"

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_d

    const-string v8, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_d
    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v8, :cond_e

    const-string v8, "protocol"

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :cond_e
    const-string v8, "roaming_protocol"

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v8, "type"

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const-string v8, "mcc"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v8, "mnc"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const-string v8, "numeric"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 901
    const-string v8, "current"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_f
    const/4 v2, 0x0

    .local v2, bearerVal:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    :cond_10
    if-eqz v2, :cond_11

    const-string v8, "bearer"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 916
    :cond_11
    const-string v8, "defaultsetting"

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "usercreatesetting"

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUserCreateSetting:Ljava/lang/Integer;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_12

    .line 920
    const-string v8, "extraid"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/Telephony$Carriers;->getAutoProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_12
    const-string v8, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 927
    const-string v9, "carrier_enabled"

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 930
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 932
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 927
    :cond_14
    const/4 v8, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/16 v10, 0x7f

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f060003

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f08037c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings_ex/hidden/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 182
    const-string v3, "apn_name"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 183
    const-string v3, "apn_apn"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 184
    const-string v3, "apn_http_proxy"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 185
    const-string v3, "apn_http_port"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 186
    const-string v3, "apn_user"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 188
    const-string v3, "apn_server"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 189
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    const-string v3, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    :cond_0
    const-string v3, "apn_password"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 195
    const-string v3, "apn_mms_proxy"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 196
    const-string v3, "apn_mms_port"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 197
    const-string v3, "apn_mmsc"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 198
    const-string v3, "apn_mcc"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 199
    const-string v3, "apn_mnc"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 200
    const-string v3, "apn_type"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 202
    const-string v3, "auth_type"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "apn_protocol"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v4, v3, :cond_1

    const-string v3, "ATT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v4, v3, :cond_2

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    :cond_2
    const-string v3, "net.telephony.dualstack"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    const v6, 0x7f090043

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    :cond_3
    const-string v3, "apn_roaming_protocol"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 227
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 228
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_11

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    const-string v3, "carrier_enabled"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 235
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    :cond_4
    const-string v3, "bearer"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 245
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    new-array v6, v4, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/16 v8, 0xff

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v5

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    new-array v6, v4, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v5

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    new-array v6, v4, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v5

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    new-array v6, v4, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v5

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUserCreateSetting:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    if-nez p1, :cond_12

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mFirstTime:Z

    .line 266
    const-string v3, "com.android.hidden.ACTION_EDIT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/settings_ex/hidden/ApnEditor;->sProjection:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v3, v6, v7, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v6, 0x14

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v6, 0x15

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUserCreateSetting:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_6
    :goto_2
    sget-object v3, Lcom/android/settings_ex/hidden/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDefalutSetting value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_e

    sget-object v3, Lcom/android/settings_ex/hidden/ApnEditor;->TAG:Ljava/lang/String;

    const-string v6, "This is the Default Setting."

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_8
    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_9
    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_a
    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    :cond_b
    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setShouldDisableView(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setShouldDisableView(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setShouldDisableView(Z)V

    :cond_c
    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setShouldDisableView(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setShouldDisableView(Z)V

    :cond_d
    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setShouldDisableView(Z)V

    :cond_e
    const-string v3, "net.telephony.dualstack"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v3, :cond_f

    const-string v3, "OPEN"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v4, v3, :cond_f

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUserCreateSetting:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_f
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_10
    :goto_3
    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/settings_ex/hidden/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v9, v9}, Lcom/android/settings_ex/hidden/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_18

    sget-object v3, Lcom/android/settings_ex/hidden/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null cursor with Uri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->finish()V

    :goto_4
    return-void

    .end local v0           #action:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_12
    move v3, v5

    .line 264
    goto/16 :goto_1

    .line 362
    :cond_13
    const-string v3, "com.android.hidden.ACTION_INSERT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUserCreateSetting:Ljava/lang/Integer;

    iget-boolean v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mFirstTime:Z

    if-nez v3, :cond_14

    const-string v3, "pos"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_15

    .line 370
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    :goto_5
    iput-boolean v4, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mNewApn:Z

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_16

    sget-object v3, Lcom/android/settings_ex/hidden/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert new telephony provider into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->finish()V

    goto :goto_4

    :cond_15
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "pos"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_5

    .line 390
    :cond_16
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/hidden/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_3

    :cond_17
    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->finish()V

    goto/16 :goto_4

    :cond_18
    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_19

    sget-object v3, Lcom/android/settings_ex/hidden/ApnEditor;->TAG:Ljava/lang/String;

    const-string v4, "Cursor is empty "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->finish()V

    goto/16 :goto_4

    :cond_19
    invoke-direct {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->fillUi()V

    goto/16 :goto_4

    :catch_0
    move-exception v3

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .local v0, msg:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080399

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 977
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-boolean v0, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mDefaultSetting:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/android/settings_ex/hidden/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "This item is read-only"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_1

    const v0, 0x7f080395

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 694
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f080397

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 696
    const/4 v0, 0x3

    const v1, 0x7f080398

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 727
    packed-switch p1, :pswitch_data_0

    .line 738
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iput-boolean v0, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBackKey:Z

    invoke-direct {p0, v2}, Lcom/android/settings_ex/hidden/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBackKey:Z

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->finish()V

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBackKey:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 706
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 722
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->deleteApn()V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/hidden/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->finish()V

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 443
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 444
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x0

    .line 636
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, key:Ljava/lang/String;
    const-string v6, "auth_type"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 639
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, index:I
    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f09003f

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 643
    .local v5, values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    .end local v2           #index:I
    .end local v5           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 644
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move v6, v7

    .line 645
    goto :goto_1

    .line 647
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v6, "apn_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eqz v6, :cond_0

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .local v4, protocol:Ljava/lang/String;
    if-nez v4, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 657
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_3
    const-string v6, "apn_roaming_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, p2

    .line 658
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/settings_ex/hidden/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #protocol:Ljava/lang/String;
    if-nez v4, :cond_4

    move v6, v7

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 665
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_5
    const-string v6, "bearer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings_ex/hidden/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, bearer:Ljava/lang/String;
    if-nez v0, :cond_6

    move v6, v7

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;

    .line 437
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 743
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 744
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings_ex/hidden/ApnEditor;->validateAndSave(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .local v1, currentPos:I
    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .local v0, count:I
    if-ge v1, v0, :cond_0

    if-gez v1, :cond_1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    const-string v3, "pos"

    iget-object v4, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    .end local v0           #count:I
    .end local v1           #currentPos:I
    :cond_2
    :goto_0
    return-void

    .line 758
    .restart local v0       #count:I
    .restart local v1       #currentPos:I
    :catch_0
    move-exception v2

    .line 759
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "ApnEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " An error occurred  on onSaveInstanceState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/hidden/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    if-ne v0, v1, :cond_1

    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/hidden/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/hidden/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    if-eq v0, v1, :cond_0

    .line 1056
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/hidden/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
