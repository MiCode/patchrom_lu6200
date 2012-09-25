.class public final Lcom/android/bluetooth/opp/BluetoothShare;
.super Ljava/lang/Object;
.source "BluetoothShare.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DUP_ALL_COLUMNS:[Ljava/lang/String;

.field public static final DUP_CONTENT_COUNT_URI:Landroid/net/Uri;

.field public static final DUP_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    const-string v0, "content://com.android.bluetooth.opp/btopp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 479
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "uri"

    aput-object v1, v0, v4

    const-string v1, "hint"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v6

    const-string v1, "mimetype"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "direction"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "destination"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "visibility"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "confirm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "scanned"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "role"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "request_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "transaction_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "request_type"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "destination_name"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "end_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "cancel_requested"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->ALL_COLUMNS:[Ljava/lang/String;

    .line 518
    const-string v0, "content://com.android.bluetooth.opp/btopp/dupcontent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_CONTENT_URI:Landroid/net/Uri;

    .line 520
    const-string v0, "content://com.android.bluetooth.opp/btopp/dupcontent/count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_CONTENT_COUNT_URI:Landroid/net/Uri;

    .line 522
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "request_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "mimetype"

    aput-object v1, v0, v6

    const-string v1, "uri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "record_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "action"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static isStatusCompleted(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 342
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x190

    if-lt p0, v0, :cond_2

    const/16 v0, 0x258

    if-ge p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 320
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 313
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
