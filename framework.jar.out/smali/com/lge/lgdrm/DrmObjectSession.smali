.class public final Lcom/lge/lgdrm/DrmObjectSession;
.super Ljava/lang/Object;
.source "DrmObjectSession.java"


# static fields
.field private static final PINIT_HND:I = 0x0

.field private static final PINIT_MAX:I = 0x2

.field private static final PINIT_SL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DrmObjSes"


# instance fields
.field bEndError:Z

.field private context:Landroid/content/Context;

.field private downloadAgent:I

.field private errorMsg:Ljava/lang/String;

.field private failReason:I

.field private nativeProcessHandle:I

.field private nativeSLType:I

.field private nativeSession:I

.field nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

.field private redirectURL:Ljava/lang/String;

.field private storedFilename:Ljava/lang/String;

.field private validSession:Z

.field private waitFlag:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 290
    return-void
.end method

.method protected constructor <init>(ILandroid/content/Context;I)V
    .locals 1
    .parameter "downloadAgent"
    .parameter "context"
    .parameter "session"

    .prologue
    .line 301
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    .line 303
    iput-object p2, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    .line 304
    iput p3, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 307
    return-void
.end method

.method private native nativeDestroySession(II)V
.end method

.method private native nativeProcessEnd(IILjava/lang/String;)I
.end method

.method private native nativeProcessInit(ILjava/lang/String;Ljava/lang/String;II)[I
.end method

.method private native nativeProcessStatus(I)I
.end method

.method private native nativeProcessUpdate(I[BII)I
.end method

.method private native nativeSetContentSize(IJ)I
.end method

.method private postWaitResult(Ljava/lang/String;IILjava/lang/String;)V
    .locals 14
    .parameter "resultReceiver"
    .parameter "result"
    .parameter "waitType"
    .parameter "filename"

    .prologue
    .line 932
    const-string v11, "DrmObjSes"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "postWaitResult() : result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " waitType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " filename = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    if-nez p1, :cond_1

    .line 936
    const-string v11, "DrmObjSes"

    const-string/jumbo v12, "postWaitResult() : resultReceiver is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    const-string v11, ";"

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 942
    .local v1, component:[Ljava/lang/String;
    if-nez v1, :cond_2

    .line 943
    const-string v11, "DrmObjSes"

    const-string/jumbo v12, "postWaitResult() : Fail to devide package;class"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 947
    :cond_2
    if-nez p4, :cond_3

    .line 949
    const-string v11, "DrmObjSes"

    const-string/jumbo v12, "postWaitResult() : Filename is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 953
    :cond_3
    const/4 v2, 0x0

    .line 955
    .local v2, content:Lcom/lge/lgdrm/DrmContent;
    :try_start_0
    iget-object v11, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    move-object/from16 v0, p4

    invoke-static {v0, v11}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v10

    .line 956
    .local v10, session:Lcom/lge/lgdrm/DrmContentSession;
    if-nez v10, :cond_4

    .line 957
    const-string v11, "DrmObjSes"

    const-string v12, "createContentSession() : Fail"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 961
    .end local v10           #session:Lcom/lge/lgdrm/DrmContentSession;
    :catch_0
    move-exception v6

    .line 962
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 965
    .end local v6           #e:Ljava/lang/Exception;
    :goto_1
    if-eqz v2, :cond_0

    .line 970
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 971
    .local v9, path:Landroid/net/Uri;
    if-nez v9, :cond_5

    .line 972
    const-string v11, "DrmObjSes"

    const-string/jumbo v12, "postWaitResult() : Fail to make URI"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 960
    .end local v9           #path:Landroid/net/Uri;
    .restart local v10       #session:Lcom/lge/lgdrm/DrmContentSession;
    :cond_4
    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {v10, v11}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    .line 977
    .end local v10           #session:Lcom/lge/lgdrm/DrmContentSession;
    .restart local v9       #path:Landroid/net/Uri;
    :cond_5
    iget-object v11, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v12, v13, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 979
    const/4 v11, 0x0

    aget-object v11, v1, v11

    const-string v12, "com.android.providers.downloads"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 982
    .local v3, downloadProvider:Z
    const/4 v11, 0x2

    move/from16 v0, p3

    if-eq v0, v11, :cond_6

    if-eqz v3, :cond_9

    .line 984
    :cond_6
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.lge.lgdrm.action.DRM_PROCESS_RESULT"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 985
    .local v7, intent:Landroid/content/Intent;
    if-nez v7, :cond_7

    .line 986
    const-string v11, "DrmObjSes"

    const-string/jumbo v12, "postWaitResult() : Fail to new intent"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 989
    :cond_7
    const-string v11, "DrmObjSes"

    const-string/jumbo v12, "postWaitResult() : Intent (action wait result)"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const-string v11, "com.lge.lgdrm.extra.WAIT_RESULT"

    move/from16 v0, p2

    invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 992
    const-string v11, "com.lge.lgdrm.extra.WAIT_TYPE"

    move/from16 v0, p3

    invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 993
    const-string v11, "com.lge.lgdrm.extra.FILE_NAME"

    move-object/from16 v0, p4

    invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v7

    .line 1043
    .end local v7           #intent:Landroid/content/Intent;
    .local v8, intent:Landroid/content/Intent;
    :goto_2
    if-nez v3, :cond_8

    const/4 v11, 0x2

    move/from16 v0, p3

    if-ne v0, v11, :cond_d

    .line 1044
    :cond_8
    :try_start_2
    iget-object v11, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    invoke-virtual {v11, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1067
    :catch_1
    move-exception v6

    move-object v7, v8

    .line 1069
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v7       #intent:Landroid/content/Intent;
    :goto_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 996
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_9
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 997
    .restart local v7       #intent:Landroid/content/Intent;
    if-nez v7, :cond_a

    .line 998
    const-string v11, "DrmObjSes"

    const-string/jumbo v12, "postWaitResult() : Fail to new intent"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1001
    :cond_a
    const-string v11, "DrmObjSes"

    const-string/jumbo v12, "postWaitResult() : Intent (action view)"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v4, 0x0

    .line 1006
    .local v4, drmMime:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v5

    .line 1007
    .local v5, drmType:I
    and-int/lit8 v11, v5, 0x10

    if-eqz v11, :cond_b

    .line 1008
    const-string v4, "application/vnd.oma.drm.message"

    .line 1018
    :goto_4
    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1020
    invoke-virtual {v2}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_0

    .line 1022
    :pswitch_0
    const-string v11, "com.lge.lgdrm.IMAGE_CATEGORY"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v7

    .line 1023
    .end local v7           #intent:Landroid/content/Intent;
    .restart local v8       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 1009
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v7       #intent:Landroid/content/Intent;
    :cond_b
    and-int/lit16 v11, v5, 0x100

    if-eqz v11, :cond_c

    .line 1010
    const-string v4, "application/vnd.oma.drm.content"

    goto :goto_4

    .line 1011
    :cond_c
    and-int/lit16 v11, v5, 0x1000

    if-eqz v11, :cond_0

    .line 1012
    const-string v4, "application/vnd.oma.drm.dcf"

    goto :goto_4

    .line 1025
    :pswitch_1
    const-string v11, "com.lge.lgdrm.AUDIO_CATEGORY"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v7

    .line 1026
    .end local v7           #intent:Landroid/content/Intent;
    .restart local v8       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 1028
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v7       #intent:Landroid/content/Intent;
    :pswitch_2
    const-string v11, "com.lge.lgdrm.VIDEO_CATEGORY"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v7

    .line 1029
    .end local v7           #intent:Landroid/content/Intent;
    .restart local v8       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 1031
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v7       #intent:Landroid/content/Intent;
    :pswitch_3
    const-string v11, "com.lge.lgdrm.GAME_CATEGORY"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v7

    .line 1032
    .end local v7           #intent:Landroid/content/Intent;
    .restart local v8       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 1049
    .end local v4           #drmMime:Ljava/lang/String;
    .end local v5           #drmType:I
    :cond_d
    :try_start_3
    invoke-virtual {v2}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v5

    .line 1050
    .restart local v5       #drmType:I
    and-int/lit16 v11, v5, 0x100

    if-eqz v11, :cond_e

    .line 1052
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.lge.lgdrm.action.RIGHTS_RECEIVED"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1053
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v7       #intent:Landroid/content/Intent;
    :try_start_4
    const-string v11, "com.lge.lgdrm.extra.FILE_NAME"

    move-object/from16 v0, p4

    invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    const-string v11, "com.lge.lgdrm.extra.CID"

    const/4 v12, 0x3

    invoke-virtual {v2, v12}, Lcom/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    iget-object v11, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1067
    :catch_2
    move-exception v6

    goto/16 :goto_3

    .line 1059
    .end local v7           #intent:Landroid/content/Intent;
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_e
    :try_start_5
    iget v11, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_0

    iget v11, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v12, 0x4

    if-eq v11, v12, :cond_0

    .line 1065
    const/high16 v11, 0x1000

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1066
    iget-object v11, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    invoke-virtual {v11, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v7, v8

    .line 1070
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v7       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setFailInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "failReason"
    .parameter "errorMsg"
    .parameter "redirectURL"

    .prologue
    .line 826
    iput p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->failReason:I

    .line 827
    iput-object p2, p0, Lcom/lge/lgdrm/DrmObjectSession;->errorMsg:Ljava/lang/String;

    .line 828
    iput-object p3, p0, Lcom/lge/lgdrm/DrmObjectSession;->redirectURL:Ljava/lang/String;

    .line 829
    return-void
.end method

.method private setNextRequest(IIILjava/lang/String;[B)I
    .locals 1
    .parameter "session"
    .parameter "requestType"
    .parameter "httpMethod"
    .parameter "url"
    .parameter "data"

    .prologue
    .line 857
    iput p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 860
    new-instance v0, Lcom/lge/lgdrm/DrmDldRequest;

    invoke-direct {v0}, Lcom/lge/lgdrm/DrmDldRequest;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 861
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-nez v0, :cond_0

    .line 862
    const/4 v0, -0x1

    .line 870
    :goto_0
    return v0

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p2, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    .line 866
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p3, v0, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    .line 867
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p4, v0, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    .line 868
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p5, v0, Lcom/lge/lgdrm/DrmDldRequest;->data:[B

    .line 870
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStoredFilename(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 837
    iput-object p1, p0, Lcom/lge/lgdrm/DrmObjectSession;->storedFilename:Ljava/lang/String;

    .line 838
    return-void
.end method

.method private startDldClient()I
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 884
    iget v6, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSLType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    move v1, v3

    .line 886
    .local v1, downloadAgent:I
    :goto_0
    new-instance v2, Lcom/lge/lgdrm/DrmObjectSession;

    iget-object v6, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    iget v7, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    invoke-direct {v2, v1, v6, v7}, Lcom/lge/lgdrm/DrmObjectSession;-><init>(ILandroid/content/Context;I)V

    .line 887
    .local v2, session:Lcom/lge/lgdrm/DrmObjectSession;
    if-nez v2, :cond_1

    .line 889
    invoke-virtual {p0, v3}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    move v3, v4

    .line 914
    :goto_1
    return v3

    .line 884
    .end local v1           #downloadAgent:I
    .end local v2           #session:Lcom/lge/lgdrm/DrmObjectSession;
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 897
    .restart local v1       #downloadAgent:I
    .restart local v2       #session:Lcom/lge/lgdrm/DrmObjectSession;
    :cond_1
    new-instance v0, Lcom/lge/lgdrm/DrmDldClient;

    iget-object v6, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v7, p0, Lcom/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v6, v7}, Lcom/lge/lgdrm/DrmDldClient;-><init>(Lcom/lge/lgdrm/DrmObjectSession;Lcom/lge/lgdrm/DrmDldRequest;Landroid/content/Context;)V

    .line 898
    .local v0, dldClient:Lcom/lge/lgdrm/DrmDldClient;
    if-nez v0, :cond_2

    .line 900
    invoke-virtual {p0, v3}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    move v3, v4

    .line 901
    goto :goto_1

    .line 905
    :cond_2
    iput v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 906
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 909
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmDldClient;->start()V

    .line 912
    iput-boolean v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    move v3, v5

    .line 914
    goto :goto_1
.end method


# virtual methods
.method public destroySession(I)V
    .locals 3
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 332
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid reason"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_1
    if-nez p1, :cond_2

    .line 352
    :goto_0
    return-void

    .line 341
    :cond_2
    iput-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 342
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-eqz v0, :cond_4

    .line 344
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .line 350
    :cond_3
    :goto_1
    iput v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 351
    iput v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    goto :goto_0

    .line 345
    :cond_4
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    if-eqz v0, :cond_3

    .line 347
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    invoke-direct {p0, v0, p1}, Lcom/lge/lgdrm/DrmObjectSession;->nativeDestroySession(II)V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 805
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-eqz v0, :cond_1

    .line 807
    const-string v0, "DrmObjSes"

    const-string v1, "finalize() : There still exists valid processing handle. Check impl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    if-eqz v0, :cond_0

    .line 811
    const-string v0, "DrmObjSes"

    const-string v1, "finalize() : There still exists valid session. Check impl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_0
.end method

.method public getFailInfo(I)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->bEndError:Z

    if-nez v0, :cond_0

    .line 723
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No error was occurred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->errorMsg:Ljava/lang/String;

    .line 729
    :goto_0
    return-object v0

    .line 728
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 729
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->redirectURL:Ljava/lang/String;

    goto :goto_0

    .line 731
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFailReason()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->bEndError:Z

    if-nez v0, :cond_0

    .line 701
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No error was occurred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_0
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->failReason:I

    return v0
.end method

.method public getNextRequest()Lcom/lge/lgdrm/DrmDldRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 756
    .local v0, request:Lcom/lge/lgdrm/DrmDldRequest;
    iget-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v1, :cond_0

    .line 757
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 759
    :cond_0
    if-nez v0, :cond_1

    .line 760
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not exist next message"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 764
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 765
    return-object v0
.end method

.method public getStoredFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->storedFilename:Ljava/lang/String;

    return-object v0
.end method

.method public isValidSession()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    return v0
.end method

.method public processEnd(ILandroid/content/ComponentName;)I
    .locals 6
    .parameter "userResponse"
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 620
    const/4 v0, 0x0

    .line 622
    .local v0, intentReceiver:Ljava/lang/String;
    iget v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v2, :cond_0

    .line 623
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Init was not called successfully"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 625
    :cond_0
    if-lt p1, v4, :cond_1

    const/4 v2, 0x3

    if-le p1, v2, :cond_2

    .line 626
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid userResponse"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 628
    :cond_2
    iget-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v2, :cond_3

    if-eq p1, v4, :cond_3

    .line 630
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid userResponse. Only permit PROC_RESP_CANCEL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 632
    :cond_3
    if-eqz p2, :cond_4

    .line 643
    iget-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    if-eqz v2, :cond_6

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    :cond_4
    :goto_0
    iget v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    invoke-direct {p0, v2, p1, v0}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessEnd(IILjava/lang/String;)I

    move-result v1

    .line 657
    .local v1, retVal:I
    iput v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    .line 658
    iput-boolean v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    .line 660
    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 661
    iput-boolean v4, p0, Lcom/lge/lgdrm/DrmObjectSession;->bEndError:Z

    .line 672
    :cond_5
    :goto_1
    return v1

    .line 646
    .end local v1           #retVal:I
    :cond_6
    const-string v2, "DrmObjSes"

    const-string/jumbo v3, "processEnd() : Invalid resultReceiver. Setup only based on processStatus()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 662
    .restart local v1       #retVal:I
    :cond_7
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 663
    iget v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_8

    iget v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 665
    :cond_8
    const/4 v1, 0x0

    .line 666
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmObjectSession;->startDldClient()I

    move-result v2

    if-eqz v2, :cond_5

    .line 667
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public processInit(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter "drmMimeType"
    .parameter "filename"
    .parameter "attribute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 401
    const/4 v6, 0x0

    .line 403
    .local v6, nativeHnds:[I
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_0
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    iget v5, p0, Lcom/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessInit(ILjava/lang/String;Ljava/lang/String;II)[I

    move-result-object v6

    .line 408
    if-eqz v6, :cond_1

    aget v0, v6, v7

    if-eqz v0, :cond_1

    .line 413
    iput v7, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 416
    aget v0, v6, v7

    iput v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    .line 417
    const/4 v0, 0x1

    aget v0, v6, v0

    iput v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSLType:I

    move v0, v7

    .line 421
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public processStatus()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 526
    iget-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v1, :cond_0

    .line 527
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 529
    :cond_0
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v1, :cond_1

    .line 530
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Init was not called successfully"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_1
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    invoke-direct {p0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessStatus(I)I

    move-result v0

    .line 534
    .local v0, retVal:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 535
    iput-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 538
    :cond_2
    if-eq v0, v3, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 539
    :cond_3
    iput-boolean v3, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    .line 544
    :goto_0
    return v0

    .line 541
    :cond_4
    iput-boolean v2, p0, Lcom/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    goto :goto_0
.end method

.method public processUpdate([BI)I
    .locals 1
    .parameter "buf"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/lge/lgdrm/DrmObjectSession;->processUpdate([BII)I

    move-result v0

    return v0
.end method

.method public processUpdate([BII)I
    .locals 3
    .parameter "buf"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 473
    iget-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v1, :cond_0

    .line 474
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :cond_0
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v1, :cond_1

    .line 477
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Init was not called successfully"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    :cond_1
    if-nez p1, :cond_2

    .line 480
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter buf is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_2
    if-ltz p3, :cond_3

    array-length v1, p1

    if-le p3, v1, :cond_4

    .line 483
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_4
    iget v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessUpdate(I[BII)I

    move-result v0

    .line 487
    .local v0, retVal:I
    if-eqz v0, :cond_5

    .line 488
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 491
    :cond_5
    return v0
.end method

.method public setContentSize(J)I
    .locals 2
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v0, :cond_0

    .line 785
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_0
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v0, :cond_1

    .line 788
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Init was not called successfully"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    .line 791
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_2
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeSLType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 795
    const/4 v0, 0x0

    .line 799
    :goto_0
    return v0

    :cond_3
    iget v0, p0, Lcom/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/lge/lgdrm/DrmObjectSession;->nativeSetContentSize(IJ)I

    move-result v0

    goto :goto_0
.end method
