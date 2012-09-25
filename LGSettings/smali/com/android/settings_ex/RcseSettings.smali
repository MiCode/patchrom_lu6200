.class public Lcom/android/settings_ex/RcseSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "RcseSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static IMSI:Ljava/lang/String;


# instance fields
.field private bRcs_e_service_in_DB:Z

.field private hasIccCard:Z

.field private mCheckBoxService:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/RcseSettings;->IMSI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/android/settings_ex/RcseSettings;->hasIccCard:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    .line 45
    iput-boolean v1, p0, Lcom/android/settings_ex/RcseSettings;->bRcs_e_service_in_DB:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/RcseSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/settings_ex/RcseSettings;->IMSI:Ljava/lang/String;

    return-object v0
.end method

.method private checkAgreement()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 236
    const/4 v6, 0x0

    .line 237
    .local v6, mAgreement:Z
    const/4 v7, 0x0

    .line 238
    .local v7, mCursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 240
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/RcseSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.lge.ims.provisioning/settings/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/RcseSettings;->IMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 243
    if-eqz v7, :cond_0

    .line 247
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    const-string v1, "is_accept"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v8, :cond_3

    move v6, v8

    .line 254
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 255
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_2
    :goto_1
    return v6

    .line 248
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 254
    if-eqz v7, :cond_2

    .line 255
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 254
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 255
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private init_UI()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/RcseSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.lge.ims.provisioning/settings/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/settings_ex/RcseSettings;->IMSI:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 91
    .local v6, mCursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string v1, "rcs_e_service"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/RcseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    .line 93
    const-string v1, "rcs_e_service"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_2

    move v1, v7

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/RcseSettings;->bRcs_e_service_in_DB:Z

    .line 94
    iget-object v1, p0, Lcom/android/settings_ex/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/settings_ex/RcseSettings;->bRcs_e_service_in_DB:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings_ex/RcseSettings;->hasIccCard:Z

    if-nez v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/settings_ex/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 102
    :cond_1
    return-void

    :cond_2
    move v1, v8

    .line 93
    goto :goto_0
.end method

.method private rcs_e_service_dialog()V
    .locals 4

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08072f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 169
    const v2, 0x7f080730

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 170
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 171
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 172
    const v2, 0x1040013

    new-instance v3, Lcom/android/settings_ex/RcseSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/RcseSettings$1;-><init>(Lcom/android/settings_ex/RcseSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    const v2, 0x1040009

    new-instance v3, Lcom/android/settings_ex/RcseSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/RcseSettings$2;-><init>(Lcom/android/settings_ex/RcseSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    new-instance v2, Lcom/android/settings_ex/RcseSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/RcseSettings$3;-><init>(Lcom/android/settings_ex/RcseSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 212
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 216
    return-void
.end method

.method private readIMSI()Z
    .locals 5

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 222
    .local v1, result:Z
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RcseSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 223
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/RcseSettings;->IMSI:Ljava/lang/String;

    .line 225
    sget-object v2, Lcom/android/settings_ex/RcseSettings;->IMSI:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 226
    const/4 v1, 0x1

    .line 227
    const-string v2, "JJJJJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/settings_ex/RcseSettings;->IMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    return v1

    .line 230
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings_ex/RcseSettings;->IMSI:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 264
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 265
    invoke-direct {p0}, Lcom/android/settings_ex/RcseSettings;->checkAgreement()Z

    move-result v0

    .line 267
    .local v0, mAgreement:Z
    packed-switch p1, :pswitch_data_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 269
    :pswitch_0
    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/android/settings_ex/RcseSettings;->finish()V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/RcseSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings_ex/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v6, 0x7f04008c

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/RcseSettings;->addPreferencesFromResource(I)V

    .line 53
    const-string v6, "rcs_e_service"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/RcseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings_ex/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    .line 55
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.lge.ims.ac.AC_NOTICELIST_NUMS_REQUEST"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v3, itNoticeNum:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.lge.ims.ac.AC_NOTICELIST_REQUEST"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, itNoticeList:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/RcseSettings;->hasIccCard:Z

    .line 62
    const-string v6, "JJJJJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v8, p0, Lcom/android/settings_ex/RcseSettings;->hasIccCard:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/RcseSettings;->readIMSI()Z

    .line 64
    invoke-direct {p0}, Lcom/android/settings_ex/RcseSettings;->checkAgreement()Z

    move-result v6

    if-nez v6, :cond_0

    .line 65
    const-string v6, "JJJJJ"

    const-string v7, "INININ"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.lge.ims.ac.AC_TERMS_REQUEST"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v4, itTerm:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "com.lge.ims.rcsstarter"

    const-string v7, "com.lge.ims.rcsstarter.ui.TermActivity"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const/high16 v6, 0x3400

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    const-string v6, "type"

    const-string v7, "starter_activity"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v1, v9}, Lcom/android/settings_ex/RcseSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 74
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #itTerm:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 76
    .local v0, act:Landroid/app/Activity;
    const-string v6, "container"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/RcseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 77
    .local v5, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v6, "rcs_e_terms"

    invoke-static {v0, v5, v6, v9}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 79
    const-string v6, "rcs_e_privacy"

    invoke-static {v0, v5, v6, v9}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 82
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    .line 117
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v1, mIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/RcseSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 123
    .local v2, row:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/android/settings_ex/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/settings_ex/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    const-string v3, "rcs_e_service"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.lge.ims.provisioning/settings/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/RcseSettings;->IMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    const-string v3, "com.lge.ims.action.SETTINGS_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ex/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/RcseSettings;->rcs_e_service_dialog()V

    .line 132
    iget-object v3, p0, Lcom/android/settings_ex/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/settings_ex/RcseSettings;->bRcs_e_service_in_DB:Z

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 109
    invoke-direct {p0}, Lcom/android/settings_ex/RcseSettings;->init_UI()V

    .line 110
    invoke-direct {p0}, Lcom/android/settings_ex/RcseSettings;->checkAgreement()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :cond_0
    return-void
.end method
