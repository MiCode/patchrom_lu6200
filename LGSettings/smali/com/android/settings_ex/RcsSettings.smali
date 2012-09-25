.class public Lcom/android/settings_ex/RcsSettings;
.super Landroid/app/Activity;
.source "RcsSettings.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private termsTitle:Ljava/lang/String;

.field private termsUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/settings_ex/RcsSettings;->termsTitle:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/android/settings_ex/RcsSettings;->termsUrl:Ljava/lang/String;

    return-void
.end method

.method private readTermDB()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 47
    const/4 v6, 0x0

    .line 50
    .local v6, mCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/RcsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/RcsSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/RcsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://com.lge.ims.ac.termsprovider/terms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 53
    if-eqz v6, :cond_0

    .line 57
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 59
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/RcsSettings;->termsTitle:Ljava/lang/String;

    .line 60
    const-string v0, "url"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/RcsSettings;->termsUrl:Ljava/lang/String;

    .line 65
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 67
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/RcsSettings;->termsTitle:Ljava/lang/String;

    .line 68
    const-string v0, "url"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/RcsSettings;->termsUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_2
    if-eqz v6, :cond_3

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_3
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 75
    if-eqz v6, :cond_3

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v2, 0x7f040089

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RcsSettings;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/android/settings_ex/RcsSettings;->readTermDB()V

    .line 35
    const v2, 0x7f0b0172

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RcsSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 37
    .local v1, webview:Landroid/webkit/WebView;
    :try_start_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 43
    iget-object v2, p0, Lcom/android/settings_ex/RcsSettings;->termsUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 44
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
