.class Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;
.super Ljava/lang/Thread;
.source "VCalUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/VCalUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VCalReadThread"
.end annotation


# instance fields
.field private mDefaultDupAction:I

.field private mDoCountOnly:Z

.field private mDupActions:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;",
            ">;"
        }
    .end annotation
.end field

.field private mFile:Ljava/io/File;

.field private mIsRunning:Z

.field mProcessDupRecords:Z

.field private mProgressHandler:Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;

.field private mResolver:Landroid/content/ContentResolver;

.field private mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

.field private mUri:Landroid/net/Uri;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/broadcom/bt/service/opp/VCalUtil;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/opp/VCalUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 859
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->init()V

    .line 860
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mIsRunning:Z

    return v0
.end method

.method private addToCalendar(ILcom/android/calendarcommon/ICalendar$Component;ILjava/lang/String;)Landroid/net/Uri;
    .locals 23
    .parameter "calendarId"
    .parameter "component"
    .parameter "index"
    .parameter "displayName"

    .prologue
    .line 1152
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1153
    .local v7, values:Landroid/content/ContentValues;
    const/4 v14, 0x0

    .line 1154
    .local v14, res:Landroid/net/Uri;
    invoke-static {}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1155
    const-string v1, "VCalUtil"

    const-string v2, "addtoCalendar"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_0
    :try_start_0
    const-string v1, "VEVENT"

    invoke-virtual/range {p2 .. p2}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    #getter for: Lcom/broadcom/bt/service/opp/VCalUtil;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$300(Lcom/broadcom/bt/service/opp/VCalUtil;)Landroid/content/ContentResolver;

    move-result-object v2

    move/from16 v0, p1

    int-to-long v4, v0

    const/4 v6, 0x1

    move-object/from16 v3, p2

    #calls: Lcom/broadcom/bt/service/opp/VCalUtil;->insertVEvent(Landroid/content/ContentResolver;Lcom/android/calendarcommon/ICalendar$Component;JILandroid/content/ContentValues;)Landroid/net/Uri;
    invoke-static/range {v1 .. v7}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$700(Lcom/broadcom/bt/service/opp/VCalUtil;Landroid/content/ContentResolver;Lcom/android/calendarcommon/ICalendar$Component;JILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 1161
    if-eqz v14, :cond_2

    .line 1162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget v2, v1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mAddedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mAddedCount:I

    .line 1163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;

    if-eqz v1, :cond_1

    .line 1164
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    const/4 v13, 0x1

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p2

    invoke-interface/range {v8 .. v14}, Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;->onVCalProcessed(Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V

    .line 1170
    :goto_0
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/calendarcommon/RecurrenceSet;->populateContentValues(Lcom/android/calendarcommon/ICalendar$Component;Landroid/content/ContentValues;)Z

    move-object v1, v14

    .line 1196
    :goto_1
    return-object v1

    .line 1166
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget-object v1, v1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCommittedIndexes:Ljava/util/LinkedList;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget-object v1, v1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCommittedTypes:Ljava/util/LinkedList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget-object v1, v1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCommittedUris:Ljava/util/LinkedList;

    invoke-virtual {v1, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1184
    :catch_0
    move-exception v22

    .line 1185
    .local v22, t:Ljava/lang/Throwable;
    const-string v1, "VCalUtil"

    const-string v2, "Error during creating the new event"

    move-object/from16 v0, v22

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    .end local v22           #t:Ljava/lang/Throwable;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget v2, v1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCantCommitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCantCommitCount:I

    .line 1189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget-object v1, v1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCantCommitIndexes:Ljava/util/LinkedList;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;

    if-eqz v1, :cond_3

    .line 1191
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    move-object/from16 v16, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p2

    invoke-interface/range {v15 .. v21}, Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;->onVCalProcessed(Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V

    .line 1196
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1173
    :cond_4
    :try_start_1
    const-string v1, "VTODO"

    invoke-virtual/range {p2 .. p2}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1175
    const-string v1, "VJOURNAL"

    invoke-virtual/range {p2 .. p2}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1177
    const-string v1, "VFREEBUSY"

    invoke-virtual/range {p2 .. p2}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1179
    const-string v1, "VALARM"

    invoke-virtual/range {p2 .. p2}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1181
    const-string v1, "VTIMEZONE"

    invoke-virtual/range {p2 .. p2}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mIsRunning:Z

    .line 941
    return-void
.end method

.method private getVcsRecord()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 944
    iget-object v7, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mFile:Ljava/io/File;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 945
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v7, "VCS does not exist"

    invoke-direct {v2, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 946
    .local v2, ie:Ljava/io/IOException;
    const-string v7, "VCalUtil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v7, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v7, v2}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->onError(Landroid/net/Uri;Ljava/lang/Throwable;)V

    .line 974
    .end local v2           #ie:Ljava/io/IOException;
    :goto_0
    return-object v6

    .line 950
    :cond_1
    iget-object v7, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0xf4240

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 951
    iget-object v7, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mUri:Landroid/net/Uri;

    new-instance v8, Ljava/io/IOException;

    const-string v9, "VCS file size too large"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7, v8}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->onError(Landroid/net/Uri;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 955
    :cond_2
    iget-object v7, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v1, v7, [C

    .line 956
    .local v1, data:[C
    const/4 v3, 0x0

    .line 957
    .local v3, r:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 959
    .local v0, bytesRead:I
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mFile:Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    .end local v3           #r:Ljava/io/FileReader;
    .local v4, r:Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/io/FileReader;->read([C)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    move-object v3, v4

    .line 964
    .end local v4           #r:Ljava/io/FileReader;
    .restart local v3       #r:Ljava/io/FileReader;
    :goto_1
    if-eqz v3, :cond_3

    .line 966
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 970
    :cond_3
    :goto_2
    if-lez v0, :cond_4

    .line 971
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 961
    :catch_0
    move-exception v5

    .line 962
    .local v5, t:Ljava/lang/Throwable;
    :goto_3
    iget-object v7, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v7, v5}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->onError(Landroid/net/Uri;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 973
    .end local v5           #t:Ljava/lang/Throwable;
    :cond_4
    iget-object v7, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mUri:Landroid/net/Uri;

    new-instance v8, Ljava/io/IOException;

    const-string v9, "VCS is empty"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7, v8}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->onError(Landroid/net/Uri;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 967
    :catch_1
    move-exception v7

    goto :goto_2

    .line 961
    .end local v3           #r:Ljava/io/FileReader;
    .restart local v4       #r:Ljava/io/FileReader;
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4           #r:Ljava/io/FileReader;
    .restart local v3       #r:Ljava/io/FileReader;
    goto :goto_3
.end method

.method private init()V
    .locals 3

    .prologue
    .line 880
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    #getter for: Lcom/broadcom/bt/service/opp/VCalUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$100(Lcom/broadcom/bt/service/opp/VCalUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResolver:Landroid/content/ContentResolver;

    .line 881
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    #getter for: Lcom/broadcom/bt/service/opp/VCalUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$100(Lcom/broadcom/bt/service/opp/VCalUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 882
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "VCalUtil"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 884
    return-void
.end method

.method private onError(Landroid/net/Uri;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "targetUri"
    .parameter "t"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->setError(Ljava/lang/Throwable;)V

    .line 856
    return-void
.end method

.method private parseCalendar(Ljava/lang/String;)V
    .locals 17
    .parameter "data"

    .prologue
    .line 979
    const/4 v8, 0x0

    .line 981
    .local v8, calendar:Lcom/android/calendarcommon/ICalendar$Component;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    #getter for: Lcom/broadcom/bt/service/opp/VCalUtil;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$300(Lcom/broadcom/bt/service/opp/VCalUtil;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "calendar_displayName"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "visible"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "calendar_access_level"

    aput-object v5, v3, v4

    const-string v4, "visible=1 AND calendar_access_level>=500"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 990
    .local v7, c:Landroid/database/Cursor;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v15, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_1

    .line 992
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 993
    .local v14, idColumn:I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 994
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 995
    .local v12, id:J
    long-to-int v1, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 997
    .end local v12           #id:J
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 999
    .end local v14           #idColumn:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    #setter for: Lcom/broadcom/bt/service/opp/VCalUtil;->mCalendarCount:I
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$402(Lcom/broadcom/bt/service/opp/VCalUtil;I)I

    .line 1001
    invoke-static {}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1002
    const-string v1, "VCalUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calendar Size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    #getter for: Lcom/broadcom/bt/service/opp/VCalUtil;->mCalendarCount:I
    invoke-static {v3}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$400(Lcom/broadcom/bt/service/opp/VCalUtil;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/calendarcommon/ICalendar;->parseCalendar(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;
    :try_end_0
    .catch Lcom/android/calendarcommon/ICalendar$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1011
    invoke-virtual {v8}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1012
    invoke-static {}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$200()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1013
    const-string v1, "VCalUtil"

    const-string v2, "Calendar Empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_3
    :goto_1
    return-void

    .line 1006
    :catch_0
    move-exception v10

    .line 1007
    .local v10, fe:Lcom/android/calendarcommon/ICalendar$FormatException;
    invoke-static {}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$200()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1008
    const-string v1, "VCalUtil"

    const-string v2, "Could not parse Calendar."

    invoke-static {v1, v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1017
    .end local v10           #fe:Lcom/android/calendarcommon/ICalendar$FormatException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    #getter for: Lcom/broadcom/bt/service/opp/VCalUtil;->mCalendarCount:I
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$400(Lcom/broadcom/bt/service/opp/VCalUtil;)I

    move-result v1

    if-lez v1, :cond_3

    .line 1019
    invoke-virtual {v8}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v9

    .line 1020
    .local v9, components:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendarcommon/ICalendar$Component;>;"
    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1022
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mProcessDupRecords:Z

    if-eqz v1, :cond_5

    .line 1023
    const-string v1, "VCalUtil"

    const-string v2, "Processing dup records"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mDupActions:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1025
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mDupActions:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;

    .line 1026
    .local v16, mCurrentDupAction:Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;
    move-object/from16 v0, v16

    iget v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;->mIndex:I

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendarcommon/ICalendar$Component;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;->mIndex:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;->mAction:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->onCalendarParsed(Lcom/android/calendarcommon/ICalendar$Component;II)V

    goto :goto_2

    .line 1030
    .end local v16           #mCurrentDupAction:Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    if-eqz v1, :cond_6

    .line 1031
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCount:I

    .line 1033
    :cond_6
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_3

    .line 1034
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendarcommon/ICalendar$Component;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mDefaultDupAction:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v11, v2}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->onCalendarParsed(Lcom/android/calendarcommon/ICalendar$Component;II)V

    .line 1033
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method

.method private registerDup(Landroid/net/Uri;Lcom/android/calendarcommon/ICalendar$Component;ILjava/lang/String;)V
    .locals 7
    .parameter "dupUri"
    .parameter "component"
    .parameter "index"
    .parameter "displayName"

    .prologue
    .line 1137
    invoke-static {}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    const-string v0, "VCalUtil"

    const-string v1, "Ignoring entry...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mDuplicateCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mDuplicateCount:I

    .line 1142
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget-object v0, v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mDupIndexes:Ljava/util/LinkedList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1143
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget-object v0, v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mDupUris:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1144
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget-object v0, v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mDupDisplayNames:Ljava/util/LinkedList;

    invoke-virtual {v0, p4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1145
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;

    if-eqz v0, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    const/4 v5, 0x2

    move v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;->onVCalProcessed(Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V

    .line 1148
    :cond_1
    return-void
.end method

.method private updateCalendar(IILcom/android/calendarcommon/ICalendar$Component;ILjava/lang/String;)Landroid/net/Uri;
    .locals 10
    .parameter "eventId"
    .parameter "calendarId"
    .parameter "component"
    .parameter "index"
    .parameter "displayName"

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x0

    .line 1201
    const/4 v6, 0x0

    .line 1202
    .local v6, res:Landroid/net/Uri;
    invoke-static {}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    const-string v0, "VCalUtil"

    const-string v1, "updateCalendar()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    #getter for: Lcom/broadcom/bt/service/opp/VCalUtil;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$300(Lcom/broadcom/bt/service/opp/VCalUtil;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1206
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->addToCalendar(ILcom/android/calendarcommon/ICalendar$Component;ILjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1211
    :goto_0
    if-eqz v6, :cond_3

    .line 1212
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mUpdatedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mUpdatedCount:I

    .line 1213
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;

    if-eqz v0, :cond_2

    .line 1214
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    move v2, p4

    move-object v3, p5

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;->onVCalProcessed(Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V

    .line 1227
    :cond_1
    :goto_1
    return-object v6

    .line 1207
    :catch_0
    move-exception v7

    .line 1208
    .local v7, t:Ljava/lang/Throwable;
    const-string v0, "VCalUtil"

    const-string v1, "Error during updating the event"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1216
    .end local v7           #t:Ljava/lang/Throwable;
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget-object v0, v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCommittedIndexes:Ljava/util/LinkedList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1217
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget-object v0, v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCommittedTypes:Ljava/util/LinkedList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1218
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget-object v0, v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCommittedUris:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1221
    :cond_3
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCantCommitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCantCommitCount:I

    .line 1222
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget-object v0, v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCantCommitIndexes:Ljava/util/LinkedList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1223
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;

    if-eqz v0, :cond_1

    .line 1224
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    move v2, p4

    move-object v3, p5

    move-object v4, p3

    move v5, v9

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;->onVCalProcessed(Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V

    goto :goto_1
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 904
    :cond_0
    return-void
.end method

.method public getResult()Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    return-object v0
.end method

.method public init(Ljava/io/File;IILjava/util/Iterator;Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;)V
    .locals 2
    .parameter "file"
    .parameter "defaultDupAction"
    .parameter "dupActionCount"
    .parameter
    .parameter "progressHandler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Ljava/util/Iterator",
            "<",
            "Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;",
            ">;",
            "Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 864
    .local p4, dupActions:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/opp/VCalUtil$DupAction;>;"
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mFile:Ljava/io/File;

    .line 865
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mUri:Landroid/net/Uri;

    .line 866
    iput p2, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mDefaultDupAction:I

    .line 867
    iput-object p4, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mDupActions:Ljava/util/Iterator;

    .line 868
    iput-object p5, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;

    .line 869
    new-instance v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;-><init>(Lcom/broadcom/bt/service/opp/VCalUtil;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    .line 870
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mFilepath:Ljava/lang/String;

    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mDoCountOnly:Z

    .line 872
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->init()V

    .line 873
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mDupActions:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mDupActions:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mProcessDupRecords:Z

    .line 875
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iput p3, v0, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCount:I

    .line 877
    :cond_0
    return-void
.end method

.method public declared-synchronized onCalendarParsed(Lcom/android/calendarcommon/ICalendar$Component;II)V
    .locals 25
    .parameter "component"
    .parameter "index"
    .parameter "duplicateAction"

    .prologue
    .line 1042
    monitor-enter p0

    :try_start_0
    new-instance v23, Landroid/text/format/Time;

    const-string v4, "UTC"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1043
    .local v23, time:Landroid/text/format/Time;
    const/16 v19, 0x0

    .line 1044
    .local v19, dtstart:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1045
    .local v17, dtend:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 1046
    .local v7, startTime:J
    const-wide/16 v9, 0x0

    .line 1047
    .local v9, endTime:J
    const/4 v12, 0x0

    .line 1048
    .local v12, eventId:I
    const/4 v6, 0x0

    .line 1050
    .local v6, eventName:Ljava/lang/String;
    const-string v4, "VEVENT"

    invoke-virtual/range {p1 .. p1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1052
    const-string v4, "SUMMARY"

    move-object/from16 v0, p1

    #calls: Lcom/broadcom/bt/service/opp/VCalUtil;->getPropertyValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$500(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1053
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1054
    const-string v4, "DESCRIPTION"

    move-object/from16 v0, p1

    #calls: Lcom/broadcom/bt/service/opp/VCalUtil;->getPropertyValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$500(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1057
    :cond_0
    const-string v4, "DTSTART"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v20

    .line 1058
    .local v20, dtstartProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v20, :cond_3

    .line 1059
    invoke-virtual/range {v20 .. v20}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 1060
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1061
    const-string v4, "TZID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v24

    .line 1062
    .local v24, tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-eqz v24, :cond_1

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1063
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    :cond_1
    :try_start_1
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1072
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    .line 1075
    .end local v24           #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_2
    const-string v4, "DTEND"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v18

    .line 1076
    .local v18, dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v18, :cond_3

    .line 1077
    invoke-virtual/range {v18 .. v18}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 1078
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 1080
    :try_start_3
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1086
    const/4 v4, 0x0

    :try_start_4
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v9

    .line 1102
    .end local v18           #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    .end local v20           #dtstartProp:Lcom/android/calendarcommon/ICalendar$Property;
    :cond_3
    :goto_0
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    #getter for: Lcom/broadcom/bt/service/opp/VCalUtil;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$300(Lcom/broadcom/bt/service/opp/VCalUtil;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v4 .. v10}, Lcom/broadcom/bt/service/opp/VCalUtil;->getEventIdWithNameandTime(Landroid/content/ContentResolver;Ljava/lang/String;JJ)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v12

    .line 1108
    :goto_1
    if-gtz v12, :cond_6

    .line 1109
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    #getter for: Lcom/broadcom/bt/service/opp/VCalUtil;->mDefaultCalendarId:I
    invoke-static {v4}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$600(Lcom/broadcom/bt/service/opp/VCalUtil;)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v6}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->addToCalendar(ILcom/android/calendarcommon/ICalendar$Component;ILjava/lang/String;)Landroid/net/Uri;

    .line 1131
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    if-eqz v4, :cond_4

    .line 1132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    iget v5, v4, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;->mCount:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1134
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    .line 1067
    .restart local v20       #dtstartProp:Lcom/android/calendarcommon/ICalendar$Property;
    .restart local v24       #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    :catch_0
    move-exception v21

    .line 1068
    .local v21, e:Ljava/lang/Exception;
    :try_start_7
    invoke-static {}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$200()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1069
    const-string v4, "VCalUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot parse dtstart "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 1042
    .end local v6           #eventName:Ljava/lang/String;
    .end local v7           #startTime:J
    .end local v9           #endTime:J
    .end local v12           #eventId:I
    .end local v17           #dtend:Ljava/lang/String;
    .end local v19           #dtstart:Ljava/lang/String;
    .end local v20           #dtstartProp:Lcom/android/calendarcommon/ICalendar$Property;
    .end local v21           #e:Ljava/lang/Exception;
    .end local v23           #time:Landroid/text/format/Time;
    .end local v24           #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1081
    .restart local v6       #eventName:Ljava/lang/String;
    .restart local v7       #startTime:J
    .restart local v9       #endTime:J
    .restart local v12       #eventId:I
    .restart local v17       #dtend:Ljava/lang/String;
    .restart local v18       #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    .restart local v19       #dtstart:Ljava/lang/String;
    .restart local v20       #dtstartProp:Lcom/android/calendarcommon/ICalendar$Property;
    .restart local v23       #time:Landroid/text/format/Time;
    :catch_1
    move-exception v21

    .line 1082
    .restart local v21       #e:Ljava/lang/Exception;
    :try_start_8
    invoke-static {}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$200()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1083
    const-string v4, "VCalUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot parse dtend "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1090
    .end local v18           #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    .end local v20           #dtstartProp:Lcom/android/calendarcommon/ICalendar$Property;
    .end local v21           #e:Ljava/lang/Exception;
    :cond_5
    const-string v4, "VTODO"

    invoke-virtual/range {p1 .. p1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1092
    const-string v4, "VJOURNAL"

    invoke-virtual/range {p1 .. p1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1094
    const-string v4, "VFREEBUSY"

    invoke-virtual/range {p1 .. p1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1096
    const-string v4, "VALARM"

    invoke-virtual/range {p1 .. p1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1098
    const-string v4, "VTIMEZONE"

    invoke-virtual/range {p1 .. p1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_0

    .line 1103
    :catch_2
    move-exception v21

    .line 1104
    .restart local v21       #e:Ljava/lang/Exception;
    const-string v4, "VCalUtil"

    const-string v5, "Unable to get event Id"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1112
    .end local v21           #e:Ljava/lang/Exception;
    :cond_6
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 1115
    .local v22, eventUri:Landroid/net/Uri;
    packed-switch p3, :pswitch_data_0

    .line 1126
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->registerDup(Landroid/net/Uri;Lcom/android/calendarcommon/ICalendar$Component;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 1117
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->registerDup(Landroid/net/Uri;Lcom/android/calendarcommon/ICalendar$Component;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 1120
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    #getter for: Lcom/broadcom/bt/service/opp/VCalUtil;->mDefaultCalendarId:I
    invoke-static {v4}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$600(Lcom/broadcom/bt/service/opp/VCalUtil;)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v6}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->addToCalendar(ILcom/android/calendarcommon/ICalendar$Component;ILjava/lang/String;)Landroid/net/Uri;

    goto/16 :goto_2

    .line 1123
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCalUtil;

    #getter for: Lcom/broadcom/bt/service/opp/VCalUtil;->mDefaultCalendarId:I
    invoke-static {v4}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$600(Lcom/broadcom/bt/service/opp/VCalUtil;)I

    move-result v13

    move-object/from16 v11, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v16}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->updateCalendar(IILcom/android/calendarcommon/ICalendar$Component;ILjava/lang/String;)Landroid/net/Uri;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 1115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 9

    .prologue
    .line 908
    invoke-static {}, Lcom/broadcom/bt/service/opp/VCalUtil;->access$200()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 909
    const-string v6, "VCalUtil"

    const-string v7, "run()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mIsRunning:Z

    .line 912
    iget-object v6, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 914
    :try_start_0
    iget-object v6, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mUri:Landroid/net/Uri;

    if-eqz v6, :cond_1

    .line 917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 920
    .local v1, start:J
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->getVcsRecord()Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, data:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->parseCalendar(Ljava/lang/String;)V

    .line 924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v1

    .line 925
    .local v4, time:J
    const-string v6, "VCalUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "time for processing vcal entries: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #start:J
    .end local v4           #time:J
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->finish()V

    .line 932
    iget-object v6, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;

    if-eqz v6, :cond_2

    .line 933
    iget-object v6, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;

    iget-object v7, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;

    invoke-interface {v6, v7}, Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;->onParseComplete(Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;)V

    .line 936
    :cond_2
    return-void

    .line 928
    :catch_0
    move-exception v3

    .line 929
    .local v3, t:Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v6, v3}, Lcom/broadcom/bt/service/opp/VCalUtil$VCalReadThread;->onError(Landroid/net/Uri;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
