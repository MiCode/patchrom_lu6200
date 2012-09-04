.class public Lcom/broadcom/bt/util/io/FileSystemUtils;
.super Ljava/lang/Object;
.source "FileSystemUtils.java"


# static fields
.field private static final INIT_PROBLEM:I = -0x1

.field private static final INSTANCE:Lcom/broadcom/bt/util/io/FileSystemUtils; = null

#the value of this static final field might be set in the static constructor
.field private static final OS:I = 0x0

.field private static final OTHER:I = 0x0

.field private static final POSIX_UNIX:I = 0x3

.field private static final UNIX:I = 0x2

.field private static final WINDOWS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 69
    new-instance v3, Lcom/broadcom/bt/util/io/FileSystemUtils;

    invoke-direct {v3}, Lcom/broadcom/bt/util/io/FileSystemUtils;-><init>()V

    sput-object v3, Lcom/broadcom/bt/util/io/FileSystemUtils;->INSTANCE:Lcom/broadcom/bt/util/io/FileSystemUtils;

    .line 85
    const/4 v1, 0x0

    .line 87
    .local v1, os:I
    :try_start_0
    const-string v3, "os.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, osName:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 89
    new-instance v3, Ljava/io/IOException;

    const-string v4, "os.name not found"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v2           #osName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 114
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 116
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_0
    sput v1, Lcom/broadcom/bt/util/io/FileSystemUtils;->OS:I

    .line 117
    return-void

    .line 91
    .restart local v2       #osName:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 93
    const-string v3, "windows"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 94
    const/4 v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    const-string v3, "linux"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    const-string v3, "sun os"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    const-string v3, "sunos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    const-string v3, "solaris"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    const-string v3, "mpe/ix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    const-string v3, "freebsd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    const-string v3, "irix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    const-string v3, "digital unix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    const-string v3, "unix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    const-string v3, "mac os x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 105
    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    .line 106
    :cond_3
    const-string v3, "hp-ux"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_4

    const-string v3, "aix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eq v3, v4, :cond_5

    .line 108
    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    .line 110
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method public static freeSpace(Ljava/lang/String;)J
    .locals 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    sget-object v0, Lcom/broadcom/bt/util/io/FileSystemUtils;->INSTANCE:Lcom/broadcom/bt/util/io/FileSystemUtils;

    sget v1, Lcom/broadcom/bt/util/io/FileSystemUtils;->OS:I

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/broadcom/bt/util/io/FileSystemUtils;->freeSpaceOS(Ljava/lang/String;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static freeSpaceKb(Ljava/lang/String;)J
    .locals 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    sget-object v0, Lcom/broadcom/bt/util/io/FileSystemUtils;->INSTANCE:Lcom/broadcom/bt/util/io/FileSystemUtils;

    sget v1, Lcom/broadcom/bt/util/io/FileSystemUtils;->OS:I

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/broadcom/bt/util/io/FileSystemUtils;->freeSpaceOS(Ljava/lang/String;IZ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method freeSpaceOS(Ljava/lang/String;IZ)J
    .locals 4
    .parameter "path"
    .parameter "os"
    .parameter "kb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Exception caught when determining operating system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :pswitch_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/broadcom/bt/util/io/FileSystemUtils;->freeSpaceWindows(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    .line 215
    :goto_0
    return-wide v0

    .line 211
    :cond_1
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/util/io/FileSystemUtils;->freeSpaceWindows(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 213
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lcom/broadcom/bt/util/io/FileSystemUtils;->freeSpaceUnix(Ljava/lang/String;ZZ)J

    move-result-wide v0

    goto :goto_0

    .line 215
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lcom/broadcom/bt/util/io/FileSystemUtils;->freeSpaceUnix(Ljava/lang/String;ZZ)J

    move-result-wide v0

    goto :goto_0

    .line 217
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported operating system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method freeSpaceUnix(Ljava/lang/String;ZZ)J
    .locals 10
    .parameter "path"
    .parameter "kb"
    .parameter "posix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 330
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Path must not be empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 332
    :cond_0
    invoke-static {p1}, Lcom/broadcom/bt/util/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 335
    const-string v1, "-"

    .line 336
    .local v1, flags:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "k"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    :cond_1
    if-eqz p3, :cond_2

    .line 340
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "P"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "df"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    aput-object v1, v0, v7

    const/4 v7, 0x2

    aput-object p1, v0, v7

    .line 346
    .local v0, cmdAttribs:[Ljava/lang/String;
    :goto_0
    const/4 v7, 0x3

    invoke-virtual {p0, v0, v7}, Lcom/broadcom/bt/util/io/FileSystemUtils;->performCommand([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 347
    .local v5, lines:Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_4

    .line 349
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Command line \'df\' did not return info as expected for path \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'- response was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 342
    .end local v0           #cmdAttribs:[Ljava/lang/String;
    .end local v5           #lines:Ljava/util/List;
    :cond_3
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "df"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    aput-object p1, v0, v7

    goto :goto_0

    .line 353
    .restart local v0       #cmdAttribs:[Ljava/lang/String;
    .restart local v5       #lines:Ljava/util/List;
    :cond_4
    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 356
    .local v3, line2:Ljava/lang/String;
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, " "

    invoke-direct {v6, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .local v6, tok:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_6

    .line 359
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_5

    .line 360
    const/4 v7, 0x2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 361
    .local v4, line3:Ljava/lang/String;
    new-instance v6, Ljava/util/StringTokenizer;

    .end local v6           #tok:Ljava/util/StringTokenizer;
    const-string v7, " "

    invoke-direct {v6, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .end local v4           #line3:Ljava/lang/String;
    .restart local v6       #tok:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 371
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 372
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, freeSpace:Ljava/lang/String;
    invoke-virtual {p0, v2, p1}, Lcom/broadcom/bt/util/io/FileSystemUtils;->parseBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    return-wide v7

    .line 363
    .end local v2           #freeSpace:Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Command line \'df\' did not return data as expected for path \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'- check path is valid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 368
    :cond_6
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_1
.end method

.method freeSpaceWindows(Ljava/lang/String;)J
    .locals 9
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 233
    invoke-static {p1}, Lcom/broadcom/bt/util/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 235
    if-nez p1, :cond_0

    .line 237
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "[FileSystemUtils.java]freeSpaceWindows : path is null!!"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_1

    .line 241
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 245
    :cond_1
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "cmd.exe"

    aput-object v4, v0, v7

    const-string v4, "/C"

    aput-object v4, v0, v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dir /-c "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 248
    .local v0, cmdAttribs:[Ljava/lang/String;
    const v4, 0x7fffffff

    invoke-virtual {p0, v0, v4}, Lcom/broadcom/bt/util/io/FileSystemUtils;->performCommand([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 254
    .local v3, lines:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_3

    .line 255
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 256
    .local v2, line:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 257
    invoke-virtual {p0, v2, p1}, Lcom/broadcom/bt/util/io/FileSystemUtils;->parseDir(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4

    .line 254
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 261
    .end local v2           #line:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Command line \'dir /-c\' did not return any info for path \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method openProcess([Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .parameter "cmdAttribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method parseBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .parameter "freeSpace"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 388
    .local v0, bytes:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 389
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command line \'df\' did not find free space in response for path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'- check path is valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local v0           #bytes:J
    :catch_0
    move-exception v2

    .line 396
    .local v2, ex:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command line \'df\' did not return numeric data as expected for path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'- check path is valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 393
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    .restart local v0       #bytes:J
    :cond_0
    return-wide v0
.end method

.method parseDir(Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .parameter "line"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2e

    const/16 v8, 0x2c

    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, bytesStart:I
    const/4 v1, 0x0

    .line 281
    .local v1, bytesEnd:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 282
    .local v4, j:I
    :goto_0
    if-ltz v4, :cond_0

    .line 283
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 284
    .local v3, c:C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 287
    add-int/lit8 v1, v4, 0x1

    .line 292
    .end local v3           #c:C
    :cond_0
    :goto_1
    if-ltz v4, :cond_1

    .line 293
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 294
    .restart local v3       #c:C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_3

    if-eq v3, v8, :cond_3

    if-eq v3, v9, :cond_3

    .line 297
    add-int/lit8 v2, v4, 0x1

    .line 302
    .end local v3           #c:C
    :cond_1
    if-gez v4, :cond_4

    .line 303
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Command line \'dir /-c\' did not return valid info for path \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 290
    .restart local v3       #c:C
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 291
    goto :goto_0

    .line 300
    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 301
    goto :goto_1

    .line 309
    .end local v3           #c:C
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, k:I
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 311
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_6

    .line 312
    :cond_5
    add-int/lit8 v6, v5, -0x1

    .end local v5           #k:I
    .local v6, k:I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move v5, v6

    .line 310
    .end local v6           #k:I
    .restart local v5       #k:I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 315
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, p2}, Lcom/broadcom/bt/util/io/FileSystemUtils;->parseBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    return-wide v7
.end method

.method performCommand([Ljava/lang/String;I)Ljava/util/List;
    .locals 12
    .parameter "cmdAttribs"
    .parameter "max"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    new-instance v6, Ljava/util/ArrayList;

    const/16 v9, 0x14

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 421
    .local v6, lines:Ljava/util/List;
    const/4 v8, 0x0

    .line 422
    .local v8, proc:Ljava/lang/Process;
    const/4 v2, 0x0

    .line 423
    .local v2, in:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 424
    .local v7, out:Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 425
    .local v0, err:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 427
    .local v3, inr:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/util/io/FileSystemUtils;->openProcess([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 428
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 429
    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 430
    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 431
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 432
    .end local v3           #inr:Ljava/io/BufferedReader;
    .local v4, inr:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 433
    .local v5, line:Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v9, p2, :cond_0

    .line 434
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 435
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    .line 440
    invoke-virtual {v8}, Ljava/lang/Process;->exitValue()I

    move-result v9

    if-eqz v9, :cond_2

    .line 442
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Command line returned OS error code \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Process;->exitValue()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' for command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 454
    .end local v5           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 455
    .end local v4           #inr:Ljava/io/BufferedReader;
    .local v1, ex:Ljava/lang/InterruptedException;
    .restart local v3       #inr:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Command line threw an InterruptedException \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' for command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v9

    :goto_2
    invoke-static {v2}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 460
    invoke-static {v7}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 461
    invoke-static {v0}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 462
    invoke-static {v3}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 463
    if-eqz v8, :cond_1

    .line 464
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    :cond_1
    throw v9

    .line 446
    .end local v3           #inr:Ljava/io/BufferedReader;
    .restart local v4       #inr:Ljava/io/BufferedReader;
    .restart local v5       #line:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 448
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Command line did not return any info for command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 459
    .end local v5           #line:Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #inr:Ljava/io/BufferedReader;
    .restart local v3       #inr:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v3           #inr:Ljava/io/BufferedReader;
    .restart local v4       #inr:Ljava/io/BufferedReader;
    .restart local v5       #line:Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 460
    invoke-static {v7}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 461
    invoke-static {v0}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 462
    invoke-static {v4}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 463
    if-eqz v8, :cond_4

    .line 464
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    :cond_4
    return-object v6

    .line 454
    .end local v4           #inr:Ljava/io/BufferedReader;
    .end local v5           #line:Ljava/lang/String;
    .restart local v3       #inr:Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    goto :goto_1
.end method
