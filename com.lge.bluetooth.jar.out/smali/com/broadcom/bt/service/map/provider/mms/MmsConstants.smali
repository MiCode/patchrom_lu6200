.class public Lcom/broadcom/bt/service/map/provider/mms/MmsConstants;
.super Ljava/lang/Object;
.source "MmsConstants.java"


# static fields
.field public static final ACTION_MOVE:Ljava/lang/String; = "com.broadcom.bt.mms.MOVE"

.field public static final ACTION_SAVE:Ljava/lang/String; = "com.broadcom.bt.mms.SAVE"

.field public static final ACTION_SEND:Ljava/lang/String; = "com.broadcom.bt.mms.SENDNOW"

.field public static final EVENT_DELETED:Ljava/lang/String; = "com.broadcom.bt.mms.DELETED"

.field public static final EVENT_DELIVERED:Ljava/lang/String; = "com.broadcom.bt.mms.DELIVERED"

.field public static final EVENT_MOVED:Ljava/lang/String; = "com.broadcom.bt.mms.MOVED"

.field public static final EVENT_RECEIVED:Ljava/lang/String; = "com.broadcom.bt.mms.RECEIVED"

.field public static final EVENT_SAVED:Ljava/lang/String; = "com.broadcom.bt.mms.SAVED"

.field public static final EVENT_SEND_SUCCESS:Ljava/lang/String; = "com.broadcom.bt.mms.SEND_SUCCESS"

.field public static final EVENT_SENT:Ljava/lang/String; = "com.broadcom.bt.mms.SENT"

.field public static final EXTRA_FOLDER_ID:Ljava/lang/String; = "folder"

.field public static final EXTRA_MIMETYPE:Ljava/lang/String; = "mimetype"

.field public static final EXTRA_MMS_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "req_id"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_ERROR:Ljava/lang/String; = "2"

.field public static final STATUS_SUCCESS:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventForAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "action"

    .prologue
    .line 32
    const-string v0, "com.broadcom.bt.mms.SENDNOW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "com.broadcom.bt.mms.SENT"

    .line 39
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v0, "com.broadcom.bt.mms.SAVE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    const-string v0, "com.broadcom.bt.mms.SAVED"

    goto :goto_0

    .line 36
    :cond_1
    const-string v0, "com.broadcom.bt.mms.MOVE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    const-string v0, "com.broadcom.bt.mms.MOVED"

    goto :goto_0

    .line 39
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
