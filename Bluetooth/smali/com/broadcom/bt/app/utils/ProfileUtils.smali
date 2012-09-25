.class public Lcom/broadcom/bt/app/utils/ProfileUtils;
.super Ljava/lang/Object;
.source "ProfileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createProfileVCardFile(Ljava/io/File;Landroid/content/Context;)Z
    .locals 9
    .parameter "file"
    .parameter "context"

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, is:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 100
    .local v2, os:Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    .line 102
    .local v4, success:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Profile;->CONTENT_VCARD_URI:Landroid/net/Uri;

    const-string v8, "r"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 105
    .local v0, fd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    if-nez v6, :cond_1

    .line 107
    :cond_0
    const/4 v6, 0x0

    .line 119
    .end local v0           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return v6

    .line 110
    .restart local v0       #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v1

    .line 111
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v2           #os:Ljava/io/FileOutputStream;
    .local v3, os:Ljava/io/FileOutputStream;
    const/16 v6, 0xc8

    :try_start_1
    invoke-static {v1, v3, v6}, Lcom/broadcom/bt/app/utils/IOUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 117
    .end local v0           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :goto_1
    invoke-static {v1}, Lcom/broadcom/bt/app/utils/IOUtils;->safeCloseStream(Ljava/io/InputStream;)V

    .line 118
    invoke-static {v2}, Lcom/broadcom/bt/app/utils/IOUtils;->safeCloseStream(Ljava/io/OutputStream;)V

    move v6, v4

    .line 119
    goto :goto_0

    .line 113
    :catch_0
    move-exception v5

    .line 114
    .local v5, t:Ljava/lang/Throwable;
    :goto_2
    const-string v6, "ProfileUtils"

    const-string v7, "Unable to create default contact vcard file"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    const/4 v4, 0x0

    goto :goto_1

    .line 113
    .end local v2           #os:Ljava/io/FileOutputStream;
    .end local v5           #t:Ljava/lang/Throwable;
    .restart local v0       #fd:Landroid/content/res/AssetFileDescriptor;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    goto :goto_2
.end method
