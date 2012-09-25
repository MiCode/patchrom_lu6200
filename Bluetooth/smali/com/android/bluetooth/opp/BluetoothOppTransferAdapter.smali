.class public Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BluetoothOppTransferAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 67
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private getErrorStatus(Landroid/content/Context;IIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "status"
    .parameter "dir"
    .parameter "requestType"
    .parameter "fileName"

    .prologue
    .line 164
    const/16 v3, 0x1ea

    if-ne p2, v3, :cond_0

    .line 166
    packed-switch p4, :pswitch_data_0

    .line 170
    const v3, 0x7f050049

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    :goto_0
    return-object v3

    .line 168
    :pswitch_0
    const v3, 0x7f0500c8

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {p5}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromFileExt(Ljava/lang/String;)I

    move-result v1

    .line 175
    .local v1, objType:I
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId(I)I

    move-result v2

    .line 176
    .local v2, resourceId:I
    packed-switch p4, :pswitch_data_1

    .line 182
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p2, v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getErrorString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p2, v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getErrorString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, errorReason:Ljava/lang/String;
    const v3, 0x7f0500c9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 176
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method private getSuccessStatus(Landroid/content/Context;JIILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "totalBytes"
    .parameter "dir"
    .parameter "requestType"
    .parameter "fileName"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 189
    if-nez p4, :cond_0

    .line 190
    packed-switch p5, :pswitch_data_0

    .line 194
    const v0, 0x7f050051

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, p3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    .line 192
    :pswitch_0
    const v0, 0x7f0500c6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_0
    packed-switch p5, :pswitch_data_1

    .line 202
    const v0, 0x7f050050

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, p3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :pswitch_1
    const v0, 0x7f0500c7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 198
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 31
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 73
    const-string v3, "request_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 74
    .local v7, requestType:I
    const-string v3, "hint"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 75
    .local v23, filenameHint:Ljava/lang/String;
    const-string v3, "_data"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 76
    .local v19, data:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v9, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1, v4, v9}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, fileName:Ljava/lang/String;
    const v3, 0x7f080002

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 84
    .local v24, iv:Landroid/widget/ImageView;
    const-string v3, "status"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 85
    .local v5, status:I
    const-string v3, "direction"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 86
    .local v6, dir:I
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    const v3, 0x20202b9

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :goto_0
    const v3, 0x7f080003

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 107
    .local v30, tv:Landroid/widget/TextView;
    const-string v3, "hint"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 109
    .local v29, title:Ljava/lang/String;
    if-nez v29, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f050035

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 112
    :cond_0
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v3, 0x7f080004

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30           #tv:Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 116
    .restart local v30       #tv:Landroid/widget/TextView;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v16

    .line 117
    .local v16, adapter:Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "destination"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 118
    .local v21, destinationColumnId:I
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v25

    .line 120
    .local v25, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {p2 .. p2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v22

    .line 121
    .local v22, deviceName:Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const-string v3, "total_bytes"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 125
    .local v11, totalBytes:J
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    const v3, 0x7f080006

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30           #tv:Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 127
    .restart local v30       #tv:Landroid/widget/TextView;
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->getErrorStatus(Landroid/content/Context;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 134
    .local v17, completeText:Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :goto_1
    const-string v3, "timestamp"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 152
    .local v20, dateColumnId:I
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 153
    .local v27, time:J
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v18

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 154
    .local v18, d:Ljava/util/Date;
    invoke-static/range {v27 .. v28}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    .line 156
    .local v26, str:Ljava/lang/CharSequence;
    :goto_2
    const v3, 0x7f080005

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30           #tv:Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 157
    .restart local v30       #tv:Landroid/widget/TextView;
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .end local v17           #completeText:Ljava/lang/String;
    .end local v18           #d:Ljava/util/Date;
    .end local v20           #dateColumnId:I
    .end local v26           #str:Ljava/lang/CharSequence;
    .end local v27           #time:J
    :cond_1
    return-void

    .line 92
    .end local v11           #totalBytes:J
    .end local v16           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v21           #destinationColumnId:I
    .end local v22           #deviceName:Ljava/lang/String;
    .end local v25           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v29           #title:Ljava/lang/String;
    .end local v30           #tv:Landroid/widget/TextView;
    :cond_2
    if-nez v6, :cond_3

    .line 95
    const v3, 0x7f020017

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 100
    :cond_3
    const v3, 0x7f02000f

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .restart local v11       #totalBytes:J
    .restart local v16       #adapter:Landroid/bluetooth/BluetoothAdapter;
    .restart local v21       #destinationColumnId:I
    .restart local v22       #deviceName:Ljava/lang/String;
    .restart local v25       #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    .restart local v29       #title:Ljava/lang/String;
    .restart local v30       #tv:Landroid/widget/TextView;
    :cond_4
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move v13, v6

    move v14, v7

    move-object v15, v8

    .line 146
    invoke-direct/range {v9 .. v15}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->getSuccessStatus(Landroid/content/Context;JIILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 148
    .restart local v17       #completeText:Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 154
    .restart local v18       #d:Ljava/util/Date;
    .restart local v20       #dateColumnId:I
    .restart local v27       #time:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    goto :goto_2
.end method
