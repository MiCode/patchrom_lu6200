.class public Lcom/broadcom/bt/app/opp/data/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static volatile BLUETOOTH_IS_ON:Z

.field public static final CONTACT_URI:Ljava/lang/String;

.field public static DATABASE_DUPLICATE_CONTACTS:Ljava/lang/String;

.field public static DUPLICATE_CONTACT_TABLE:Ljava/lang/String;

.field public static final GROUP_URI:Ljava/lang/String;

.field public static final MULTI_VCARD_URI:Ljava/lang/String;

.field public static volatile OPP_SVC_AVAILABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/app/opp/data/Constants;->CONTACT_URI:Ljava/lang/String;

    .line 34
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/app/opp/data/Constants;->GROUP_URI:Ljava/lang/String;

    .line 35
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/app/opp/data/Constants;->MULTI_VCARD_URI:Ljava/lang/String;

    .line 95
    const-string v0, "duplicate_contact_table"

    sput-object v0, Lcom/broadcom/bt/app/opp/data/Constants;->DUPLICATE_CONTACT_TABLE:Ljava/lang/String;

    .line 96
    const-string v0, "duplicate_duplicate_contacts"

    sput-object v0, Lcom/broadcom/bt/app/opp/data/Constants;->DATABASE_DUPLICATE_CONTACTS:Ljava/lang/String;

    .line 204
    sput-boolean v1, Lcom/broadcom/bt/app/opp/data/Constants;->BLUETOOTH_IS_ON:Z

    .line 206
    sput-boolean v1, Lcom/broadcom/bt/app/opp/data/Constants;->OPP_SVC_AVAILABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStatusErrorOrCancelled(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 115
    const/16 v0, 0x1ea

    if-eq v0, p0, :cond_0

    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setStatusCancelled(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "request"
    .parameter "endTime"

    .prologue
    .line 176
    iput-wide p2, p1, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    .line 177
    const/16 v0, 0x1ea

    iput v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 178
    invoke-virtual {p1}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequestStatus(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/broadcom/bt/app/opp/data/Job;)I

    .line 179
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->requestCancelled(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 181
    return-void
.end method

.method public static setStatusSuccess(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;JJJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "request"
    .parameter "currentBytes"
    .parameter "totalBytes"
    .parameter "endTime"

    .prologue
    .line 196
    iput-wide p2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 197
    iput-wide p4, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 198
    iput-wide p6, p1, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    .line 199
    const/16 v0, 0xc8

    iput v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 200
    invoke-virtual {p1}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequestStatus(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/broadcom/bt/app/opp/data/Job;)I

    .line 201
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->requestEnded_NoError(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 202
    return-void
.end method

.method public static updateProgress(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;JJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "request"
    .parameter "currentBytes"
    .parameter "totalBytes"

    .prologue
    .line 144
    iput-wide p2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 145
    iput-wide p4, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 146
    invoke-virtual {p1}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequestStatus(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/broadcom/bt/app/opp/data/Job;)I

    .line 148
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->requestInProgress_Updated(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 149
    return-void
.end method
