.class public Lcom/android/settings_ex/UserDictionarySettings;
.super Landroid/app/ListFragment;
.source "UserDictionarySettings.java"

# interfaces
.implements Lcom/android/settings_ex/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;,
        Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;,
        Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;,
        Lcom/android/settings_ex/UserDictionarySettings$MyAdapter;
    }
.end annotation


# static fields
.field private static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static deleteString:Ljava/lang/String;

.field static sSymbolString:Ljava/lang/String;


# instance fields
.field private dig_status:I

.field private mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

.field private mAddedWordAlready:Z

.field protected mAlert:Landroid/app/AlertDialog;

.field private mAutoReturn:Z

.field private mCurrentWord:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDialogEditingWord:Ljava/lang/String;

.field private mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

.field protected mListener:Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;

.field protected mLocale:Ljava/lang/String;

.field private mOrientationConfig:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "word"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 76
    iput v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->dig_status:I

    .line 611
    iput v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mOrientationConfig:I

    .line 743
    new-instance v0, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapterIcsImpl;-><init>(Lcom/android/settings_ex/UserDictionarySettings;Lcom/android/settings_ex/UserDictionarySettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    .line 998
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/UserDictionarySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAutoReturn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/UserDictionarySettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings_ex/UserDictionarySettings;->onAddOrEditFinished(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/UserDictionarySettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getOrientationConfig()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/UserDictionarySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings_ex/UserDictionarySettings;->setOrientationConfig(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/UserDictionarySettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->dig_status:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/UserDictionarySettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/settings_ex/UserDictionarySettings;->dig_status:I

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/settings_ex/UserDictionarySettings;->deleteString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    sput-object p0, Lcom/android/settings_ex/UserDictionarySettings;->deleteString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/UserDictionarySettings;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/UserDictionarySettings;->deleteWord(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/android/settings_ex/UserDictionarySettings;->isAcceptableWord(Ljava/lang/String;Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/UserDictionarySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCurrentWord:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/UserDictionarySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/UserDictionarySettings;->existDlgShow()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/UserDictionarySettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mOrientationConfig:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings_ex/UserDictionarySettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mOrientationConfig:I

    return p1
.end method

.method private createAdapter()Landroid/widget/ListAdapter;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 280
    new-instance v0, Lcom/android/settings_ex/UserDictionarySettings$MyAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0400b3

    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "word"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_id"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/UserDictionarySettings$MyAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/android/settings_ex/UserDictionarySettings;)V

    return-object v0

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0xcet 0x1t 0xbt 0x7ft
    .end array-data
.end method

.method private createCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "locale"

    .prologue
    .line 266
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings_ex/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "locale is null"

    const/4 v4, 0x0

    const-string v5, "UPPER(word)"

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    .line 272
    :cond_0
    if-eqz p1, :cond_1

    move-object v6, p1

    .line 273
    .local v6, queryLocale:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings_ex/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "locale=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const-string v5, "UPPER(word)"

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 272
    .end local v6           #queryLocale:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private deleteWord(Ljava/lang/String;Z)V
    .locals 9
    .parameter "word"
    .parameter "isDialog"

    .prologue
    const/4 v7, 0x1

    .line 493
    if-eqz p2, :cond_4

    .line 496
    const v4, 0x7f080b88

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/UserDictionarySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, msg:Ljava/lang/String;
    const v4, 0x7f08044e

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/UserDictionarySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, ok:Ljava/lang/String;
    const v4, 0x7f08044f

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/UserDictionarySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, cancel:Ljava/lang/String;
    const v4, 0x7f0804a9

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/UserDictionarySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, title:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 503
    const-string v1, "This word will be deleted."

    .line 505
    :cond_0
    if-nez v2, :cond_1

    .line 506
    const-string v2, "OK"

    .line 508
    :cond_1
    if-nez v0, :cond_2

    .line 509
    const-string v0, "Cancel"

    .line 511
    :cond_2
    if-nez v3, :cond_3

    .line 512
    const-string v3, "Delete"

    .line 515
    :cond_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings_ex/UserDictionarySettings$7;

    invoke-direct {v5, p0, p1}, Lcom/android/settings_ex/UserDictionarySettings$7;-><init>(Lcom/android/settings_ex/UserDictionarySettings;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings_ex/UserDictionarySettings$6;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/UserDictionarySettings$6;-><init>(Lcom/android/settings_ex/UserDictionarySettings;)V

    invoke-virtual {v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings_ex/UserDictionarySettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/UserDictionarySettings$5;-><init>(Lcom/android/settings_ex/UserDictionarySettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 543
    iput v7, p0, Lcom/android/settings_ex/UserDictionarySettings;->dig_status:I

    .line 552
    .end local v0           #cancel:Ljava/lang/String;
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #ok:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :goto_0
    return-void

    .line 546
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "word=?"

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private existDlgShow()V
    .locals 5

    .prologue
    .line 446
    const v3, 0x7f080b85

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/UserDictionarySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, msg:Ljava/lang/String;
    const v3, 0x7f080b8a

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/UserDictionarySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, title:Ljava/lang/String;
    const v3, 0x7f08044e

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/UserDictionarySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, ok:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 451
    const-string v0, "Word already exists."

    .line 453
    :cond_0
    if-nez v1, :cond_1

    .line 454
    const-string v1, "OK"

    .line 457
    :cond_1
    if-nez v2, :cond_2

    .line 458
    const-string v2, "Notice!"

    .line 460
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/UserDictionarySettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/UserDictionarySettings$4;-><init>(Lcom/android/settings_ex/UserDictionarySettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/UserDictionarySettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/UserDictionarySettings$3;-><init>(Lcom/android/settings_ex/UserDictionarySettings;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAlert:Landroid/app/AlertDialog;

    .line 486
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 487
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->dig_status:I

    .line 488
    return-void
.end method

.method private getOrientationConfig()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 785
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 787
    .local v1, src:Landroid/content/res/Resources;
    if-nez v1, :cond_0

    .line 788
    const-string v3, "UserDictionarySettings"

    const-string v4, "wrarning : can\'t get Resources"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :goto_0
    return v2

    .line 791
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 793
    .local v0, conf:Landroid/content/res/Configuration;
    if-nez v0, :cond_1

    .line 794
    const-string v3, "UserDictionarySettings"

    const-string v4, "wrarning : can\'t get Configuation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 798
    :cond_1
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_0
.end method

.method private getWord(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 323
    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-object v0

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 326
    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v2, "word"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isAcceptableWord(Ljava/lang/String;)Z
    .locals 1
    .parameter "word"

    .prologue
    .line 655
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings_ex/UserDictionarySettings;->isAcceptableWord(Ljava/lang/String;Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method private static isAcceptableWord(Ljava/lang/String;Landroid/widget/TextView;)Z
    .locals 4
    .parameter "word"
    .parameter "textView"

    .prologue
    .line 668
    const/4 v1, 0x0

    .line 669
    .local v1, warningTextId:I
    const/4 v0, 0x0

    .line 672
    .local v0, rv:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 675
    const-string v2, "\\s*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 678
    const v1, 0x7f080b86

    .line 699
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 700
    if-lez v1, :cond_7

    .line 701
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 706
    :cond_1
    :goto_1
    return v0

    .line 681
    :cond_2
    if-nez p1, :cond_3

    const/4 v2, 0x0

    :goto_2
    invoke-static {v2, p0}, Lcom/android/settings_ex/UserDictionarySettings;->isContainSpecialChar(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 682
    const v1, 0x7f080b87

    goto :goto_0

    .line 681
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_2

    .line 686
    :cond_4
    const-string v2, "^\\s*\\S+\\s*$"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 687
    const v1, 0x7f080b86

    goto :goto_0

    .line 690
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_6

    .line 691
    const v1, 0x7f0809ad

    goto :goto_0

    .line 695
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 703
    :cond_7
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private isAllowedCrateDialog()Z
    .locals 2

    .prologue
    .line 809
    iget v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mOrientationConfig:I

    invoke-direct {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getOrientationConfig()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mOrientationConfig:I

    if-nez v0, :cond_1

    .line 811
    :cond_0
    const/4 v0, 0x1

    .line 813
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isContainSpecialChar(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "word"

    .prologue
    const/4 v4, 0x0

    .line 721
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 740
    :cond_0
    :goto_0
    return v4

    .line 727
    :cond_1
    sget-object v3, Lcom/android/settings_ex/UserDictionarySettings;->sSymbolString:Ljava/lang/String;

    .line 728
    .local v3, symbols:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 732
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 733
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 734
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 735
    .local v2, symbol:C
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_2

    .line 736
    const/4 v4, 0x1

    goto :goto_0

    .line 733
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private onAddOrEditFinished(Ljava/lang/String;)V
    .locals 6
    .parameter "word"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xfa

    const/4 v3, 0x1

    .line 391
    invoke-direct {p0, p1}, Lcom/android/settings_ex/UserDictionarySettings;->isAcceptableWord(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/UserDictionarySettings;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/android/settings_ex/UserDictionarySettings;->existDlgShow()V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/android/settings_ex/UserDictionarySettings;->deleteWord(Ljava/lang/String;Z)V

    .line 417
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mLocale:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 419
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, v4, v3}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;II)V

    .line 434
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    if-nez v1, :cond_5

    .line 435
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t requery on already-closed cursor."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_3
    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings_ex/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 423
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, v4, v5}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_1

    .line 428
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 429
    .local v0, prevLocale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 430
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, v4, v3}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;II)V

    .line 432
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    goto :goto_1

    .line 437
    .end local v0           #prevLocale:Ljava/util/Locale;
    :cond_5
    iput-boolean v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAddedWordAlready:Z

    goto :goto_0
.end method

.method private setOrientationConfig(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 817
    iput p1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mOrientationConfig:I

    .line 818
    return-void
.end method

.method private showAddOrEditDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "editingWord"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UserDictionarySettings;->showDialog(I)V

    .line 320
    return-void
.end method

.method private showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 377
    const-string v0, "UserDictionarySettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_1
    new-instance v0, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings_ex/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 9
    .parameter "word"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 626
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 628
    if-eqz v0, :cond_1

    .line 629
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "word = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 633
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v1, v7, :cond_0

    .line 634
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v7

    .line 642
    :goto_0
    return v1

    .line 637
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v8

    .line 638
    goto :goto_0

    .line 641
    :cond_1
    const-string v1, "UserDictionarySettings"

    const-string v2, "ContentResolver is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 642
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 134
    iget-object v8, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    if-eqz v8, :cond_0

    .line 135
    iget-object v8, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    invoke-interface {v8, p1}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;->onPreActivityCreated(Landroid/os/Bundle;)V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 141
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_3

    move-object v6, v7

    .line 144
    .local v6, localeFromIntent:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 145
    .local v0, arguments:Landroid/os/Bundle;
    if-nez v0, :cond_4

    move-object v5, v7

    .line 149
    .local v5, localeFromArguments:Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_5

    .line 150
    move-object v4, v5

    .line 157
    .local v4, locale:Ljava/lang/String;
    :goto_2
    iput-object v4, p0, Lcom/android/settings_ex/UserDictionarySettings;->mLocale:Ljava/lang/String;

    .line 158
    invoke-direct {p0, v4}, Lcom/android/settings_ex/UserDictionarySettings;->createCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 160
    .local v1, emptyView:Landroid/widget/TextView;
    const v7, 0x7f0804aa

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 163
    .local v3, listView:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/android/settings_ex/UserDictionarySettings;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 165
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 167
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/UserDictionarySettings;->setHasOptionsMenu(Z)V

    .line 169
    if-eqz p1, :cond_1

    .line 170
    const-string v7, "DIALOG_EDITING_WORD"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    .line 171
    const-string v7, "DIALOG_ADDED_WORD"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAddedWordAlready:Z

    .line 175
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    if-eqz v7, :cond_2

    .line 176
    iget-object v7, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    invoke-interface {v7, p1}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;->onPostActivityCreated(Landroid/os/Bundle;)V

    .line 178
    :cond_2
    return-void

    .line 141
    .end local v0           #arguments:Landroid/os/Bundle;
    .end local v1           #emptyView:Landroid/widget/TextView;
    .end local v3           #listView:Landroid/widget/ListView;
    .end local v4           #locale:Ljava/lang/String;
    .end local v5           #localeFromArguments:Ljava/lang/String;
    .end local v6           #localeFromIntent:Ljava/lang/String;
    :cond_3
    const-string v8, "locale"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 145
    .restart local v0       #arguments:Landroid/os/Bundle;
    .restart local v6       #localeFromIntent:Ljava/lang/String;
    :cond_4
    const-string v7, "locale"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 151
    .restart local v5       #localeFromArguments:Ljava/lang/String;
    :cond_5
    if-eqz v6, :cond_6

    .line 152
    move-object v4, v6

    .restart local v4       #locale:Ljava/lang/String;
    goto :goto_2

    .line 154
    .end local v4           #locale:Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    .restart local v4       #locale:Ljava/lang/String;
    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 762
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 764
    if-eqz p1, :cond_0

    .line 765
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mOrientationConfig:I

    .line 767
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    invoke-interface {v0, p1}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;->onPreCreate(Landroid/os/Bundle;)V

    .line 116
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    invoke-interface {v0, p1}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;->onPostCreate(Landroid/os/Bundle;)V

    .line 122
    :cond_1
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    .line 335
    iget-object v6, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    if-eqz v6, :cond_0

    .line 336
    iget-object v6, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    invoke-interface {v6, p1}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;->onPreCreateDialog(I)V

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 340
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 341
    .local v3, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 344
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04004d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 345
    .local v1, content:Landroid/view/View;
    const v6, 0x7f0b002d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 347
    .local v4, editText:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/android/settings_ex/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v6, p0, Lcom/android/settings_ex/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    if-eqz v6, :cond_2

    const v6, 0x7f0804a7

    :goto_0
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings_ex/UserDictionarySettings$2;

    invoke-direct {v8, p0, v4, v0}, Lcom/android/settings_ex/UserDictionarySettings$2;-><init>(Lcom/android/settings_ex/UserDictionarySettings;Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    new-instance v8, Lcom/android/settings_ex/UserDictionarySettings$1;

    invoke-direct {v8, p0, v0}, Lcom/android/settings_ex/UserDictionarySettings$1;-><init>(Lcom/android/settings_ex/UserDictionarySettings;Landroid/app/Activity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 365
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 369
    iget-object v6, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    if-eqz v6, :cond_1

    .line 370
    iget-object v6, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    invoke-interface {v6, p1, v2, v1}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;->onPostCreateDialog(ILandroid/app/AlertDialog;Landroid/view/View;)V

    .line 372
    :cond_1
    return-object v2

    .line 350
    .end local v2           #dialog:Landroid/app/AlertDialog;
    :cond_2
    const v6, 0x7f0804a6

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 304
    const/4 v1, 0x1

    const v2, 0x7f0804a5

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200d1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 307
    .local v0, actionItem:Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 309
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 127
    const v0, 0x1090075

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    invoke-interface {v0}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;->onPreDestroy()V

    .line 776
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 779
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    invoke-interface {v0}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;->onPostDestroy()V

    .line 782
    :cond_1
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 288
    invoke-direct {p0, p3}, Lcom/android/settings_ex/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, word:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0, v0}, Lcom/android/settings_ex/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    .line 292
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    invoke-interface {v0}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;->onPrePause()V

    .line 752
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 755
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    invoke-interface {v0}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;->onPostPause()V

    .line 758
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 183
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    if-eqz v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    invoke-interface {v3}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;->onPreResume()V

    .line 187
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 189
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAddedWordAlready:Z

    if-nez v3, :cond_4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings_ex.USER_DICTIONARY_INSERT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 191
    const-string v3, "word"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, word:Ljava/lang/String;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAutoReturn:Z

    .line 194
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAlert:Landroid/app/AlertDialog;

    if-nez v3, :cond_4

    .line 196
    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/settings_ex/UserDictionarySettings;->isAllowedCrateDialog()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 198
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080b8c

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    .line 231
    .end local v2           #word:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 205
    .restart local v2       #word:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 206
    .local v0, dialog:Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mListener:Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;

    if-eqz v3, :cond_5

    .line 207
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mListener:Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;

    invoke-virtual {v3}, Lcom/android/settings_ex/UserDictionarySettings$AddToDictionaryEventListener;->getDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 213
    :goto_1
    if-nez v0, :cond_4

    .line 215
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCurrentWord:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCurrentWord:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 217
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings_ex/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    .line 228
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v2           #word:Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    if-eqz v3, :cond_1

    .line 229
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    invoke-interface {v3}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;->onPostResume()V

    goto :goto_0

    .line 209
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    .restart local v2       #word:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 218
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCurrentWord:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCurrentWord:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 219
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCurrentWord:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    invoke-interface {v0, p1}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;->onPreSaveInstanceState(Landroid/os/Bundle;)V

    .line 240
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 243
    if-eqz p1, :cond_1

    .line 244
    const-string v0, "DIALOG_EDITING_WORD"

    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "CURRENT_WORD"

    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCurrentWord:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v0, "DIALOG_ADDED_WORD"

    iget-boolean v1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAddedWordAlready:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mAdapter:Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;

    invoke-interface {v0, p1}, Lcom/android/settings_ex/UserDictionarySettings$LgeUserDictionaryAdapter;->onPostSaveInstanceState(Landroid/os/Bundle;)V

    .line 253
    :cond_2
    return-void
.end method

.method public setInputFilter(Landroid/widget/EditText;)V
    .locals 3
    .parameter "editText"

    .prologue
    .line 939
    new-instance v0, Lcom/android/settings_ex/UserDictionarySettings$8;

    const/16 v1, 0x32

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings_ex/UserDictionarySettings$8;-><init>(Lcom/android/settings_ex/UserDictionarySettings;ILandroid/widget/EditText;)V

    .line 957
    .local v0, filterLength:Landroid/text/InputFilter$LengthFilter;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 958
    return-void
.end method
