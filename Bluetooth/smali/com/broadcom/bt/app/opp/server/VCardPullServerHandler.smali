.class public Lcom/broadcom/bt/app/opp/server/VCardPullServerHandler;
.super Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
.source "VCardPullServerHandler.java"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mVCardFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpsClose()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onOpsObjectReceived(ILjava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 180
    return-void
.end method

.method public onOpsProgress(JJ)V
    .locals 7
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 152
    const-string v0, "VCardPullServerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onOpsProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/app/opp/server/VCardPullServerHandler;->incrementProgress(JJ)V

    .line 156
    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/app/opp/server/VCardPullServerHandler;->setStatusSuccess(JJJ)V

    .line 159
    :cond_0
    return-void
.end method

.method public processRequest()V
    .locals 9

    .prologue
    .line 102
    const-string v0, "VCardPullServerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "processRequest"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-wide v5, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 104
    .local v5, totalBytes:J
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v0, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->toReceivedOp(I)I

    move-result v2

    .line 105
    .local v2, operation:I
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 108
    .local v4, filePathName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/server/VCardPullServerHandler;->setupContent()I

    move-result v7

    .line 109
    .local v7, err:I
    if-ltz v7, :cond_0

    .line 110
    const-string v0, "VCardPullServerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to process file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Error = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-virtual {p0, v7, v0, v1, v3}, Lcom/broadcom/bt/app/opp/server/VCardPullServerHandler;->processError(IJLjava/lang/Throwable;)V

    .line 113
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v4}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->grantAccess(IILjava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v0, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v3, v3, Lcom/broadcom/bt/app/opp/data/Job;->mFileFormat:I

    invoke-static/range {v0 .. v6}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createIntent_AccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)Landroid/content/Intent;

    move-result-object v8

    .line 122
    .local v8, i:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v0, v8}, Lcom/broadcom/bt/app/opp/util/BaseService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setupContent()I
    .locals 8

    .prologue
    .line 58
    const-string v4, "content://com.android.contacts/contacts/as_vcard/profile"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 59
    .local v1, myProfileUri:Landroid/net/Uri;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v3, uriBundle:Landroid/os/Bundle;
    const-string v4, "uri_to_authorize"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v4}, Lcom/broadcom/bt/app/opp/util/BaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v6, "authorize"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, authResponse:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 68
    const-string v4, "/data/data/com.android.bluetooth/.tmp/op_default.vcf"

    iput-object v4, p0, Lcom/broadcom/bt/app/opp/server/VCardPullServerHandler;->mFilePath:Ljava/lang/String;

    .line 69
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/VCardPullServerHandler;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/broadcom/bt/app/opp/server/VCardPullServerHandler;->mVCardFile:Ljava/io/File;

    .line 70
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/server/VCardPullServerHandler;->mVCardFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/server/VCardPullServerHandler;->mVCardFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 73
    :cond_0
    const-string v4, "authorized_uri"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 75
    .local v2, preauthorizedProfileUri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 76
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/server/VCardPullServerHandler;->mVCardFile:Ljava/io/File;

    invoke-static {v4, v5, v2}, Lcom/broadcom/bt/service/opp/VCardUtil;->createFileFromVcardUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Z

    .line 78
    :cond_1
    const-string v4, "/data/data/com.android.bluetooth/.tmp/"

    invoke-static {v4}, Lcom/broadcom/bt/app/opp/util/Utils;->setDefaultDirPermission(Ljava/lang/String;)V

    .line 79
    const-string v4, "/data/data/com.android.bluetooth/.tmp/op_default.vcf"

    invoke-static {v4}, Lcom/broadcom/bt/app/opp/util/Utils;->setDefaultFilePermission(Ljava/lang/String;)V

    .line 84
    const/4 v4, -0x1

    .end local v2           #preauthorizedProfileUri:Landroid/net/Uri;
    :goto_0
    return v4

    .line 82
    :cond_2
    const/16 v4, 0x1e1

    goto :goto_0
.end method
