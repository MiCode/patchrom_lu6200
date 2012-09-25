.class Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;
.super Ljava/lang/Thread;
.source "OppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/notification/OppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationUpdateThread"
.end annotation


# instance fields
.field private mFinished:Z

.field private mPendingUpdate:Z

.field final synthetic this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/app/opp/notification/OppNotification;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 237
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationUpdateThread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 234
    iput-boolean v3, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->mFinished:Z

    .line 235
    iput-boolean v3, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->mPendingUpdate:Z

    .line 239
    return-void
.end method

.method static synthetic access$202(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->mPendingUpdate:Z

    return p1
.end method

.method static synthetic access$300(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->mFinished:Z

    return v0
.end method

.method private createPendingNotification(II)Landroid/app/Notification;
    .locals 10
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0500a5

    const v8, 0x7f05009f

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 447
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 448
    iget v0, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v3, Landroid/app/Notification;->flags:I

    .line 452
    if-nez p2, :cond_1

    .line 453
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0500bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 454
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0500bf

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    if-ne p1, v7, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 457
    const v0, 0x1080088

    iput v0, v3, Landroid/app/Notification;->icon:I

    .line 458
    iput p1, v3, Landroid/app/Notification;->number:I

    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v4, "brcm.OPEN_OUTBOUND_PENDING_TRANSFER"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    const-string v4, "com.android.bluetooth"

    const-class v5, Lcom/broadcom/bt/app/opp/OppReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    :goto_1
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 478
    return-object v3

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0500bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 465
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0500c0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    if-ne p1, v7, :cond_2

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 468
    const v0, 0x1080081

    iput v0, v3, Landroid/app/Notification;->icon:I

    .line 469
    iput p1, v3, Landroid/app/Notification;->number:I

    .line 471
    new-instance v0, Landroid/content/Intent;

    const-string v4, "brcm.OPEN_INBOUND_PENDING_TRANSFER"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    const-string v4, "com.android.bluetooth"

    const-class v5, Lcom/broadcom/bt/app/opp/OppReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private createPendingOrActiveNotificationObject(Landroid/net/Uri;ILjava/lang/String;IJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 652
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, -0x1

    move-object/from16 v0, p10

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    invoke-static {v4, v0, v1, v2, v5}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 656
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f03000c

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 658
    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-static {v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getTransferPercent(JJ)I

    move-result v6

    .line 659
    if-nez v6, :cond_1

    .line 661
    const v6, 0x7f080023

    const/16 v7, 0x64

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 665
    :goto_0
    const v6, 0x7f080021

    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-static {v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 669
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.btopp.intent.action.LIST"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/broadcom/bt/app/opp/OppReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 674
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 675
    iget v8, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 676
    iput-object v5, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 677
    iget-object v8, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v6, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 680
    if-nez p2, :cond_3

    .line 684
    const v6, 0x1080088

    iput v6, v7, Landroid/app/Notification;->icon:I

    .line 685
    const v6, 0x7f080020

    const v8, 0x1080088

    invoke-virtual {v5, v6, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 692
    const/16 v6, 0xc0

    move/from16 v0, p4

    if-ne v0, v6, :cond_2

    .line 693
    packed-switch p13, :pswitch_data_0

    .line 700
    const v6, 0x7f080022

    iget-object v8, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f050019

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 734
    :cond_0
    :goto_1
    return-object v7

    .line 663
    :cond_1
    const v7, 0x7f080023

    const/16 v8, 0x64

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto/16 :goto_0

    .line 695
    :pswitch_0
    const v4, 0x7f080022

    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f050019

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f05009b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 705
    :cond_2
    const v6, 0x7f080022

    iget-object v8, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0500b9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 709
    :cond_3
    const/4 v6, 0x1

    if-ne p2, v6, :cond_0

    .line 713
    const v6, 0x1080081

    iput v6, v7, Landroid/app/Notification;->icon:I

    .line 714
    const v6, 0x7f080020

    const v8, 0x1080081

    invoke-virtual {v5, v6, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 722
    packed-switch p13, :pswitch_data_1

    .line 729
    const v6, 0x7f080022

    iget-object v8, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f050016

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 724
    :pswitch_1
    const v4, 0x7f080022

    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f050016

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f05009b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 693
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 722
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method private processActiveRequest(IILjava/lang/String;IJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 18
    .parameter "id"
    .parameter "dir"
    .parameter "requestID"
    .parameter "status"
    .parameter "current"
    .parameter "total"
    .parameter "isCancelRequested"
    .parameter "filenameHint"
    .parameter "data"
    .parameter "contentUri"
    .parameter "requestType"
    .parameter "role"

    .prologue
    .line 746
    const/4 v3, 0x1

    move/from16 v0, p2

    if-eq v0, v3, :cond_1

    if-eqz p2, :cond_1

    .line 747
    const-string v3, "OppNotification"

    const-string v5, "Unable to process: invalid direction"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 752
    .local v4, requestUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move/from16 v1, p9

    move/from16 v2, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->processCancelRequest(ZLandroid/net/Uri;I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    .line 759
    invoke-direct/range {v3 .. v16}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->createPendingOrActiveNotificationObject(Landroid/net/Uri;ILjava/lang/String;IJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v17

    .line 769
    .local v17, n:Landroid/app/Notification;
    if-nez p14, :cond_3

    .line 770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    move-object/from16 v0, v17

    #setter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNot:Landroid/app/Notification;
    invoke-static {v3, v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1802(Lcom/broadcom/bt/app/opp/notification/OppNotification;Landroid/app/Notification;)Landroid/app/Notification;

    .line 781
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v3

    move/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 772
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, p14

    if-ne v0, v3, :cond_2

    .line 773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    move-object/from16 v0, v17

    #setter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNot:Landroid/app/Notification;
    invoke-static {v3, v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1702(Lcom/broadcom/bt/app/opp/notification/OppNotification;Landroid/app/Notification;)Landroid/app/Notification;

    goto :goto_1
.end method

.method private processBufferedItems(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;)V
    .locals 4
    .parameter "items"

    .prologue
    .line 295
    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mUpdateAllRequest:I
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->access$1000(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;)I

    move-result v1

    .line 296
    .local v1, updateAllRequest:I
    packed-switch v1, :pswitch_data_0

    .line 312
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequestInsertIndex:I
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->access$1200(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 313
    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequests:[Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->access$1300(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;)[Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    move-result-object v2

    aget-object v2, v2, v0

    iget v2, v2, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;->mNotificationType:I

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->mRequests:[Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->access$1300(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;)[Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->processNotification(ILcom/broadcom/bt/app/opp/data/Job;)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .end local v0           #i:I
    :pswitch_0
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->cancelAll()V

    .line 299
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->refreshPendingNotification(Z)V

    .line 300
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->refreshActiveNotification()V

    .line 301
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->updateCompletedNotification()V

    .line 315
    :cond_0
    :goto_1
    return-void

    .line 304
    :pswitch_1
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_1

    .line 307
    :pswitch_2
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->updateCompletedNotification()V

    goto :goto_1

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processCancelRequest(ZLandroid/net/Uri;I)Z
    .locals 2
    .parameter "isCancelRequested"
    .parameter "requestUri"
    .parameter "id"

    .prologue
    .line 786
    if-eqz p1, :cond_0

    .line 787
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 788
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "IFC"

    invoke-virtual {v0, v1, p3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 794
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private processNotification(ILcom/broadcom/bt/app/opp/data/Job;)V
    .locals 7
    .parameter "nType"
    .parameter "r"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 318
    packed-switch p1, :pswitch_data_0

    .line 361
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 320
    :pswitch_1
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 324
    iget v0, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-ne v0, v5, :cond_0

    .line 325
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "IFC"

    iget v2, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 329
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->refreshPendingNotification(Z)V

    goto :goto_0

    .line 332
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->refreshActiveNotification(Lcom/broadcom/bt/app/opp/data/Job;)V

    goto :goto_0

    .line 335
    :pswitch_4
    iget v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v2, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    iget-wide v3, p2, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->updateCompletedNotification(IIJZ)V

    .line 336
    iget v0, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v1, 0x1ea

    if-eq v0, v1, :cond_1

    iget-boolean v0, p2, Lcom/broadcom/bt/app/opp/data/Job;->mCancelRequested:Z

    if-eqz v0, :cond_4

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mLastCancelledRequests:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1400(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 341
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mLastCancelledRequests:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1400(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 342
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mLastCancelledRequests:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1400(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mLastCancelledRequests:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1400(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 347
    :cond_3
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->updateCompletedNotification()V

    .line 348
    invoke-direct {p0, v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->refreshPendingNotification(Z)V

    goto :goto_0

    .line 350
    :cond_4
    iget v0, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private refreshActiveNotification()V
    .locals 24

    .prologue
    .line 571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->ALL_COLUMNS:[Ljava/lang/String;

    const-string v6, "status = 192"

    const/4 v7, 0x0

    const-string v8, "_id DESC "

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 573
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 574
    const-string v3, "OppNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Unable to get running notifications"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :goto_0
    return-void

    .line 580
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 581
    const/4 v3, 0x0

    invoke-static {v11, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getInt(Landroid/database/Cursor;I)I

    move-result v15

    .line 582
    .local v15, id:I
    const/4 v3, 0x5

    invoke-static {v11, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getInt(Landroid/database/Cursor;I)I

    move-result v13

    .line 583
    .local v13, dir:I
    const/16 v3, 0xf

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 584
    .local v18, requestID:Ljava/lang/String;
    const/16 v3, 0x9

    invoke-static {v11, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getInt(Landroid/database/Cursor;I)I

    move-result v21

    .line 585
    .local v21, status:I
    const/16 v3, 0xb

    invoke-static {v11, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getLong(Landroid/database/Cursor;I)J

    move-result-wide v9

    .line 587
    .local v9, current:J
    const/16 v3, 0xa

    invoke-static {v11, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getLong(Landroid/database/Cursor;I)J

    move-result-wide v22

    .line 588
    .local v22, total:J
    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-static {v11, v3, v4}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getBoolean(Landroid/database/Cursor;IZ)Z

    move-result v16

    .line 590
    .local v16, isCancelRequested:Z
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 591
    .local v14, filenameHint:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 592
    .local v12, data:Ljava/lang/String;
    const/16 v3, 0x11

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 593
    .local v19, requestType:I
    const/16 v3, 0xe

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 601
    .local v20, role:I
    new-instance v17, Lcom/broadcom/bt/app/opp/data/Job;

    invoke-direct/range {v17 .. v17}, Lcom/broadcom/bt/app/opp/data/Job;-><init>()V

    .line 602
    .local v17, r:Lcom/broadcom/bt/app/opp/data/Job;
    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 603
    move-object/from16 v0, v17

    iput v13, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 604
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    .line 605
    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 606
    move-object/from16 v0, v17

    iput-wide v9, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 607
    move-wide/from16 v0, v22

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 608
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/broadcom/bt/app/opp/data/Job;->mCancelRequested:Z

    .line 609
    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 610
    move-object/from16 v0, v17

    iput-object v12, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 611
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    .line 612
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    .line 620
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->refreshActiveNotification(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 580
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 622
    .end local v9           #current:J
    .end local v12           #data:Ljava/lang/String;
    .end local v13           #dir:I
    .end local v14           #filenameHint:Ljava/lang/String;
    .end local v15           #id:I
    .end local v16           #isCancelRequested:Z
    .end local v17           #r:Lcom/broadcom/bt/app/opp/data/Job;
    .end local v18           #requestID:Ljava/lang/String;
    .end local v19           #requestType:I
    .end local v20           #role:I
    .end local v21           #status:I
    .end local v22           #total:J
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private refreshActiveNotification(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 16
    .parameter "r"

    .prologue
    .line 370
    move-object/from16 v0, p1

    iget v1, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    if-nez v1, :cond_2

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1500(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    if-ne v1, v2, :cond_1

    .line 374
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/broadcom/bt/app/opp/data/Job;->mCancelRequested:Z

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v15}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->processActiveRequest(IILjava/lang/String;IJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->refreshPendingNotification(Z)V

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    #setter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1502(Lcom/broadcom/bt/app/opp/notification/OppNotification;I)I

    .line 390
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/broadcom/bt/app/opp/data/Job;->mCancelRequested:Z

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v15}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->processActiveRequest(IILjava/lang/String;IJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1600(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v1

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNot:Landroid/app/Notification;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1700(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1600(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNot:Landroid/app/Notification;
    invoke-static {v3}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1700(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 406
    :cond_2
    move-object/from16 v0, p1

    iget v1, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1600(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    if-ne v1, v2, :cond_3

    .line 411
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/broadcom/bt/app/opp/data/Job;->mCancelRequested:Z

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v15}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->processActiveRequest(IILjava/lang/String;IJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 423
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->refreshPendingNotification(Z)V

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1500(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v1

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNot:Landroid/app/Notification;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1800(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1500(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNot:Landroid/app/Notification;
    invoke-static {v3}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1800(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 430
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    #setter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1602(Lcom/broadcom/bt/app/opp/notification/OppNotification;I)I

    .line 431
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/broadcom/bt/app/opp/data/Job;->mCancelRequested:Z

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v15}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->processActiveRequest(IILjava/lang/String;IJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0
.end method

.method private refreshPendingNotification(Z)V
    .locals 11
    .parameter "keepActiveNotifications"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v8, -0x64

    const/16 v7, -0xc8

    const/4 v6, 0x1

    .line 486
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2000(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "status = 190 AND role = 0 AND direction = 1"

    invoke-static {v4, v5, v10}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getCount(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 491
    .local v1, clientInPendingCount:I
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2000(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "status = 190 AND role = 0 AND direction = 0"

    invoke-static {v4, v5, v10}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getCount(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 496
    .local v2, clientOutPendingCount:I
    const/4 v0, 0x0

    .line 498
    .local v0, activeRequestsCleaned:Z
    if-gt v1, v6, :cond_4

    .line 500
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientInPendingDisplayed:Z
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 501
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "P"

    invoke-virtual {v4, v5, v8}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 502
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #setter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientInPendingDisplayed:Z
    invoke-static {v4, v9}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2102(Lcom/broadcom/bt/app/opp/notification/OppNotification;Z)Z

    .line 526
    :cond_0
    :goto_0
    if-gt v2, v6, :cond_8

    .line 528
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientOutPendingDisplayed:Z
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2200(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 529
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "P"

    invoke-virtual {v4, v5, v7}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 530
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #setter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientOutPendingDisplayed:Z
    invoke-static {v4, v9}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2202(Lcom/broadcom/bt/app/opp/notification/OppNotification;Z)Z

    .line 556
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 558
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1600(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNot:Landroid/app/Notification;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1700(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 560
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1600(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v5

    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNot:Landroid/app/Notification;
    invoke-static {v6}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1700(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 563
    :cond_2
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1500(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNot:Landroid/app/Notification;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1800(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 565
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1500(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v5

    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNot:Landroid/app/Notification;
    invoke-static {v6}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1800(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 568
    :cond_3
    return-void

    .line 505
    :cond_4
    invoke-direct {p0, v1, v6}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->createPendingNotification(II)Landroid/app/Notification;

    move-result-object v3

    .line 507
    .local v3, n:Landroid/app/Notification;
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientInPendingDisplayed:Z
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 509
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "P"

    invoke-virtual {v4, v5, v8, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    .line 512
    :cond_5
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "P"

    invoke-virtual {v4, v5, v7}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 513
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1500(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v4

    if-lez v4, :cond_6

    .line 514
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1500(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 516
    :cond_6
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1600(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v4

    if-lez v4, :cond_7

    .line 517
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1600(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 519
    :cond_7
    const/4 v0, 0x1

    .line 521
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "P"

    invoke-virtual {v4, v5, v8, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 522
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #setter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientInPendingDisplayed:Z
    invoke-static {v4, v6}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2102(Lcom/broadcom/bt/app/opp/notification/OppNotification;Z)Z

    goto/16 :goto_0

    .line 533
    .end local v3           #n:Landroid/app/Notification;
    :cond_8
    invoke-direct {p0, v2, v9}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->createPendingNotification(II)Landroid/app/Notification;

    move-result-object v3

    .line 535
    .restart local v3       #n:Landroid/app/Notification;
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientOutPendingDisplayed:Z
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2200(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 537
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "P"

    invoke-virtual {v4, v5, v7, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 541
    :cond_9
    if-nez v0, :cond_b

    .line 542
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1500(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v4

    if-lez v4, :cond_a

    .line 543
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mClientActiveNotificationId:I
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1500(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 545
    :cond_a
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1600(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v4

    if-lez v4, :cond_b

    .line 546
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mServerActiveNotificationId:I
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1600(Lcom/broadcom/bt/app/opp/notification/OppNotification;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 551
    :cond_b
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "P"

    invoke-virtual {v4, v5, v7, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 552
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #setter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mIsClientOutPendingDisplayed:Z
    invoke-static {v4, v6}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2202(Lcom/broadcom/bt/app/opp/notification/OppNotification;Z)Z

    goto/16 :goto_1
.end method

.method private updateCompletedNotification()V
    .locals 3

    .prologue
    .line 799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 800
    .local v0, endTime:J
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #calls: Lcom/broadcom/bt/app/opp/notification/OppNotification;->updateOutboundNotification(J)V
    invoke-static {v2, v0, v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2300(Lcom/broadcom/bt/app/opp/notification/OppNotification;J)V

    .line 801
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #calls: Lcom/broadcom/bt/app/opp/notification/OppNotification;->updateInboundNotification(J)V
    invoke-static {v2, v0, v1}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2400(Lcom/broadcom/bt/app/opp/notification/OppNotification;J)V

    .line 802
    return-void
.end method

.method private updateCompletedNotification(IIJZ)V
    .locals 1
    .parameter "id"
    .parameter "dir"
    .parameter "endTime"
    .parameter "cancelActiveNotification"

    .prologue
    .line 806
    if-eqz p5, :cond_0

    .line 807
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #calls: Lcom/broadcom/bt/app/opp/notification/OppNotification;->removeFromCache(I)V
    invoke-static {v0, p1}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2500(Lcom/broadcom/bt/app/opp/notification/OppNotification;I)V

    .line 808
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$1100(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 811
    :cond_0
    if-nez p2, :cond_2

    .line 812
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #calls: Lcom/broadcom/bt/app/opp/notification/OppNotification;->updateOutboundNotification(J)V
    invoke-static {v0, p3, p4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2300(Lcom/broadcom/bt/app/opp/notification/OppNotification;J)V

    .line 816
    :cond_1
    :goto_0
    return-void

    .line 813
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #calls: Lcom/broadcom/bt/app/opp/notification/OppNotification;->updateInboundNotification(J)V
    invoke-static {v0, p3, p4}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$2400(Lcom/broadcom/bt/app/opp/notification/OppNotification;J)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->mFinished:Z

    .line 243
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->C_LOCK:Ljava/lang/Object;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$500(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->C_LOCK:Ljava/lang/Object;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$500(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 245
    monitor-exit v1

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 250
    const-string v5, "OppNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting notification thread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 254
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    invoke-direct {v0, v5, v8}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;-><init>(Lcom/broadcom/bt/app/opp/notification/OppNotification;Lcom/broadcom/bt/app/opp/notification/OppNotification$1;)V

    .line 255
    .local v0, bufferCopy:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;
    const/4 v1, 0x0

    .line 257
    .local v1, hasItems:Z
    :goto_0
    iget-boolean v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->mFinished:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->mPendingUpdate:Z

    if-eqz v5, :cond_4

    .line 258
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->mPendingUpdate:Z

    .line 260
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->C_LOCK:Ljava/lang/Object;
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$500(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 261
    const/4 v2, 0x1

    .local v2, retryCount:I
    move v3, v2

    .line 264
    .end local v2           #retryCount:I
    .local v3, retryCount:I
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationBuffer:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$600(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->copyAndClear(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v2, v3, -0x1

    .end local v3           #retryCount:I
    .restart local v2       #retryCount:I
    if-ltz v3, :cond_2

    .line 266
    :try_start_1
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->C_LOCK:Ljava/lang/Object;
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$500(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Ljava/lang/Object;

    move-result-object v5

    const-wide/16 v7, 0x2710

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v2

    .line 269
    .end local v2           #retryCount:I
    .restart local v3       #retryCount:I
    goto :goto_1

    .line 267
    .end local v3           #retryCount:I
    .restart local v2       #retryCount:I
    :catch_0
    move-exception v4

    .line 268
    .local v4, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v5, "OppNotification"

    const-string v7, "NotificationUpdateThread: unable to acquire wait lock"

    invoke-static {v5, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 269
    .end local v2           #retryCount:I
    .restart local v3       #retryCount:I
    goto :goto_1

    .end local v4           #t:Ljava/lang/Throwable;
    :cond_1
    move v2, v3

    .line 271
    .end local v3           #retryCount:I
    .restart local v2       #retryCount:I
    :cond_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 274
    if-eqz v1, :cond_3

    .line 275
    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->processBufferedItems(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;)V

    .line 276
    #calls: Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->clear()V
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;->access$700(Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationBuffer;)V

    .line 277
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->P_LOCK:Ljava/lang/Object;
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$800(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 278
    :try_start_3
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->P_LOCK:Ljava/lang/Object;
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$800(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 279
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 271
    .end local v2           #retryCount:I
    .restart local v3       #retryCount:I
    :catchall_1
    move-exception v5

    move v2, v3

    .end local v3           #retryCount:I
    .restart local v2       #retryCount:I
    :goto_2
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v5

    .line 281
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->mFinished:Z

    goto :goto_0

    .line 284
    .end local v2           #retryCount:I
    :cond_4
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    monitor-enter v6

    .line 285
    :try_start_5
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    #getter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationUpdateThread:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$900(Lcom/broadcom/bt/app/opp/notification/OppNotification;)Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    move-result-object v5

    if-ne v5, p0, :cond_5

    .line 286
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    const/4 v7, 0x0

    #setter for: Lcom/broadcom/bt/app/opp/notification/OppNotification;->mNotificationUpdateThread:Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;
    invoke-static {v5, v7}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->access$902(Lcom/broadcom/bt/app/opp/notification/OppNotification;Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;)Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;

    .line 288
    :cond_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 290
    const-string v5, "OppNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping notification thread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationUpdateThread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 288
    :catchall_2
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    .line 271
    .restart local v2       #retryCount:I
    :catchall_3
    move-exception v5

    goto :goto_2
.end method
