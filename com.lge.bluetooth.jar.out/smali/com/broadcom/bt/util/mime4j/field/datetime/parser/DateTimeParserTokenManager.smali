.class public Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;
.super Ljava/lang/Object;
.source "DateTimeParserTokenManager.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserConstants;


# static fields
.field static commentNest:I

.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

.field jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 423
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    .line 636
    new-array v0, v4, [I

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    .line 638
    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v6

    const-string v1, ","

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Mon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Tue"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Wed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Thu"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Sat"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Sun"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Jan"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Feb"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Mar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Apr"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "May"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Dec"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    const-string v2, "UT"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "GMT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EST"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "EDT"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CST"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CDT"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "MST"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "MDT"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "PST"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "PDT"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    aput-object v3, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 647
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v6

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 652
    const/16 v0, 0x31

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    .line 656
    new-array v0, v5, [J

    const-wide v1, 0x400fffffffffL

    aput-wide v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoToken:[J

    .line 659
    new-array v0, v5, [J

    const-wide v1, 0x5000000000L

    aput-wide v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSkip:[J

    .line 662
    new-array v0, v5, [J

    const-wide v1, 0x1000000000L

    aput-wide v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSpecial:[J

    .line 665
    new-array v0, v5, [J

    const-wide v1, 0x3fa000000000L

    aput-wide v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoMore:[J

    return-void

    .line 423
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 652
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    const/4 v1, 0x0

    .line 675
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 669
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    .line 670
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    .line 724
    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 725
    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->defaultLexState:I

    .line 678
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    .line 679
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 681
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;)V

    .line 682
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V

    .line 683
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 694
    const v2, -0x7fffffff

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    .line 695
    const/4 v0, 0x4

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_0

    .line 696
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x8000

    aput v3, v2, v0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 697
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_0
    return-void
.end method

.method private final jjAddStates(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 278
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 279
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 280
    return-void

    :cond_0
    move p1, v0

    .end local v0           #start:I
    .restart local p1
    goto :goto_0
.end method

.method private final jjCheckNAdd(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 272
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 274
    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2
    .parameter "start"

    .prologue
    .line 294
    sget-object v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 295
    sget-object v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 296
    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 289
    :goto_0
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 290
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 291
    return-void

    :cond_0
    move p1, v0

    .end local v0           #start:I
    .restart local p1
    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .locals 0
    .parameter "state1"
    .parameter "state2"

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 284
    invoke-direct {p0, p2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 285
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 300
    const/4 v8, 0x0

    .line 301
    .local v8, startsAt:I
    const/4 v9, 0x4

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 302
    const/4 v1, 0x1

    .line 303
    .local v1, i:I
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 304
    const v3, 0x7fffffff

    .line 307
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 309
    :cond_0
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_8

    .line 311
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 314
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 349
    :cond_2
    :goto_1
    :pswitch_0
    if-ne v1, v8, :cond_1

    .line 378
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 380
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 381
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 382
    const v3, 0x7fffffff

    .line 384
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 385
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x4

    if-ne v1, v8, :cond_d

    .line 388
    :goto_3
    return p2

    .line 317
    .restart local v4       #l:J
    :pswitch_1
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 319
    const/16 v9, 0x2e

    if-le v3, v9, :cond_4

    .line 320
    const/16 v3, 0x2e

    .line 321
    :cond_4
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 323
    :cond_5
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 325
    const/16 v9, 0x24

    if-le v3, v9, :cond_6

    .line 326
    const/16 v3, 0x24

    .line 327
    :cond_6
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 329
    :cond_7
    const-wide v9, 0x280000000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 331
    const/16 v9, 0x18

    if-le v3, v9, :cond_2

    .line 332
    const/16 v3, 0x18

    goto :goto_1

    .line 336
    :pswitch_2
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 338
    const/16 v3, 0x24

    .line 339
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 342
    :pswitch_3
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 344
    const/16 v3, 0x2e

    .line 345
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 351
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_b

    .line 353
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 356
    .restart local v4       #l:J
    :cond_9
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 364
    :cond_a
    :goto_4
    if-ne v1, v8, :cond_9

    goto/16 :goto_2

    .line 359
    :pswitch_4
    const-wide v9, 0x7fffbfe07fffbfeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    .line 360
    const/16 v3, 0x23

    goto :goto_4

    .line 368
    .end local v4           #l:J
    :cond_b
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 369
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 372
    .local v6, l2:J
    :cond_c
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    .line 376
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 387
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_d
    :try_start_0
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 388
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 356
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 429
    const/4 v8, 0x0

    .line 430
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 431
    const/4 v1, 0x1

    .line 432
    .local v1, i:I
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 433
    const v3, 0x7fffffff

    .line 436
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 438
    :cond_0
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 440
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 443
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 455
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 502
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 504
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 505
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 506
    const v3, 0x7fffffff

    .line 508
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 509
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 512
    :goto_3
    return p2

    .line 446
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0x29

    if-le v3, v9, :cond_2

    .line 447
    const/16 v3, 0x29

    goto :goto_1

    .line 450
    :pswitch_1
    const/16 v9, 0x27

    if-le v3, v9, :cond_2

    .line 451
    const/16 v3, 0x27

    goto :goto_1

    .line 457
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 459
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 462
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 480
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 465
    :pswitch_2
    const/16 v9, 0x29

    if-le v3, v9, :cond_7

    .line 466
    const/16 v3, 0x29

    .line 467
    :cond_7
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 468
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 471
    :pswitch_3
    const/16 v9, 0x27

    if-le v3, v9, :cond_6

    .line 472
    const/16 v3, 0x27

    goto :goto_4

    .line 475
    :pswitch_4
    const/16 v9, 0x29

    if-le v3, v9, :cond_6

    .line 476
    const/16 v3, 0x29

    goto :goto_4

    .line 484
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 485
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 488
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 500
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 491
    :pswitch_5
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x29

    if-le v3, v9, :cond_a

    .line 492
    const/16 v3, 0x29

    goto :goto_5

    .line 495
    :pswitch_6
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x27

    if-le v3, v9, :cond_a

    .line 496
    const/16 v3, 0x27

    goto :goto_5

    .line 511
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 512
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 462
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 488
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_2(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 550
    const/4 v8, 0x0

    .line 551
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 552
    const/4 v1, 0x1

    .line 553
    .local v1, i:I
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 554
    const v3, 0x7fffffff

    .line 557
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 559
    :cond_0
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 561
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 564
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 576
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 623
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 625
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 626
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 627
    const v3, 0x7fffffff

    .line 629
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 630
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 633
    :goto_3
    return p2

    .line 567
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0x2d

    if-le v3, v9, :cond_2

    .line 568
    const/16 v3, 0x2d

    goto :goto_1

    .line 571
    :pswitch_1
    const/16 v9, 0x2a

    if-le v3, v9, :cond_2

    .line 572
    const/16 v3, 0x2a

    goto :goto_1

    .line 578
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 580
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 583
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 601
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 586
    :pswitch_2
    const/16 v9, 0x2d

    if-le v3, v9, :cond_7

    .line 587
    const/16 v3, 0x2d

    .line 588
    :cond_7
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 589
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 592
    :pswitch_3
    const/16 v9, 0x2a

    if-le v3, v9, :cond_6

    .line 593
    const/16 v3, 0x2a

    goto :goto_4

    .line 596
    :pswitch_4
    const/16 v9, 0x2d

    if-le v3, v9, :cond_6

    .line 597
    const/16 v3, 0x2d

    goto :goto_4

    .line 605
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 606
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 609
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 621
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 612
    :pswitch_5
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x2d

    if-le v3, v9, :cond_a

    .line 613
    const/16 v3, 0x2d

    goto :goto_5

    .line 616
    :pswitch_6
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x2a

    if-le v3, v9, :cond_a

    .line 617
    const/16 v3, 0x2a

    goto :goto_5

    .line 632
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 633
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 564
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 583
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 609
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-char v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 122
    invoke-direct {p0, v1, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 82
    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 84
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 86
    :sswitch_2
    const/16 v0, 0x25

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 88
    :sswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 90
    :sswitch_4
    const/16 v0, 0x17

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 92
    :sswitch_5
    const-wide/32 v0, 0x44000

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 94
    :sswitch_6
    const-wide/32 v0, 0x60000000

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 96
    :sswitch_7
    const-wide/32 v0, 0x400000

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 98
    :sswitch_8
    const-wide/32 v0, 0x18000000

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 100
    :sswitch_9
    const-wide/16 v0, 0x1100

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 102
    :sswitch_a
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 104
    :sswitch_b
    const-wide/32 v0, 0x30800

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 106
    :sswitch_c
    const-wide v0, 0x18000a010L

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 108
    :sswitch_d
    const-wide/32 v0, 0x200000

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 110
    :sswitch_e
    const-wide/32 v0, 0x100000

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 112
    :sswitch_f
    const-wide v0, 0x600000000L

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 114
    :sswitch_10
    const-wide/32 v0, 0x80600

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    .line 116
    :sswitch_11
    const-wide/16 v0, 0xa0

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    .line 118
    :sswitch_12
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    .line 120
    :sswitch_13
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x28 -> :sswitch_2
        0x2c -> :sswitch_3
        0x3a -> :sswitch_4
        0x41 -> :sswitch_5
        0x43 -> :sswitch_6
        0x44 -> :sswitch_7
        0x45 -> :sswitch_8
        0x46 -> :sswitch_9
        0x47 -> :sswitch_a
        0x4a -> :sswitch_b
        0x4d -> :sswitch_c
        0x4e -> :sswitch_d
        0x4f -> :sswitch_e
        0x50 -> :sswitch_f
        0x53 -> :sswitch_10
        0x54 -> :sswitch_11
        0x55 -> :sswitch_12
        0x57 -> :sswitch_13
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 413
    iget-char v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 420
    invoke-direct {p0, v1, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 416
    :pswitch_0
    const/16 v0, 0x28

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 418
    :pswitch_1
    const/16 v0, 0x26

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 537
    iget-char v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 544
    invoke-direct {p0, v1, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 540
    :pswitch_0
    const/16 v0, 0x2b

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 542
    :pswitch_1
    const/16 v0, 0x2c

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa1_0(J)I
    .locals 7
    .parameter "active0"

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    iget-char v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    .line 163
    :cond_0
    invoke-direct {p0, v6, p1, p2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v6, p1, p2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 135
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide v1, 0x550000000L

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 137
    :sswitch_1
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 139
    :sswitch_2
    const-wide v1, 0x2a8000000L

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 141
    :sswitch_3
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 142
    const/16 v2, 0x19

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 145
    :sswitch_4
    const-wide/32 v1, 0xaa00

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 147
    :sswitch_5
    const-wide/32 v1, 0x100000

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 149
    :sswitch_6
    const-wide/32 v1, 0x481040

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 151
    :sswitch_7
    const-wide/16 v1, 0x80

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 153
    :sswitch_8
    const-wide/32 v1, 0x200010

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 155
    :sswitch_9
    const-wide/16 v1, 0x4000

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 157
    :sswitch_a
    const-wide/16 v1, 0x100

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 159
    :sswitch_b
    const-wide/32 v1, 0x70420

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x4d -> :sswitch_1
        0x53 -> :sswitch_2
        0x54 -> :sswitch_3
        0x61 -> :sswitch_4
        0x63 -> :sswitch_5
        0x65 -> :sswitch_6
        0x68 -> :sswitch_7
        0x6f -> :sswitch_8
        0x70 -> :sswitch_9
        0x72 -> :sswitch_a
        0x75 -> :sswitch_b
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa2_0(JJ)I
    .locals 7
    .parameter "old0"
    .parameter "active0"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x2

    .line 167
    and-long/2addr p3, p1

    cmp-long v2, p3, v4

    if-nez v2, :cond_0

    .line 168
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 265
    :goto_0
    return v1

    .line 169
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    iget-char v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    .line 265
    :cond_1
    invoke-direct {p0, v6, p3, p4}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v6, p3, p4}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 177
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide/32 v2, 0x4000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 178
    const/16 v2, 0x1a

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 179
    :cond_2
    const-wide/32 v2, 0x8000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 180
    const/16 v2, 0x1b

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 181
    :cond_3
    const-wide/32 v2, 0x10000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 182
    const/16 v2, 0x1c

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 183
    :cond_4
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 184
    const/16 v2, 0x1d

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 185
    :cond_5
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 186
    const/16 v2, 0x1e

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 187
    :cond_6
    const-wide v2, 0x80000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 188
    const/16 v2, 0x1f

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 189
    :cond_7
    const-wide v2, 0x100000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 190
    const/16 v2, 0x20

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 191
    :cond_8
    const-wide v2, 0x200000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 192
    const/16 v2, 0x21

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 193
    :cond_9
    const-wide v2, 0x400000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 194
    const/16 v2, 0x22

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 197
    :sswitch_1
    const-wide/16 v2, 0x1000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 198
    const/16 v2, 0xc

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 201
    :sswitch_2
    const-wide/32 v2, 0x400000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 202
    const/16 v2, 0x16

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 205
    :sswitch_3
    const-wide/16 v2, 0x40

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 206
    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 209
    :sswitch_4
    const-wide/16 v2, 0x20

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 210
    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 213
    :sswitch_5
    const-wide/32 v2, 0x40000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 214
    const/16 v2, 0x12

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 217
    :sswitch_6
    const-wide/16 v2, 0x100

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 218
    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 221
    :sswitch_7
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 222
    const/16 v2, 0x11

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 225
    :sswitch_8
    const-wide/16 v2, 0x10

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    .line 226
    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 227
    :cond_a
    const-wide/16 v2, 0x400

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    .line 228
    const/16 v2, 0xa

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 229
    :cond_b
    const-wide/16 v2, 0x800

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 230
    const/16 v2, 0xb

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 231
    :cond_c
    const-wide/32 v2, 0x10000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 232
    const/16 v2, 0x10

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 235
    :sswitch_9
    const-wide/32 v2, 0x80000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 236
    const/16 v2, 0x13

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 239
    :sswitch_a
    const-wide/16 v2, 0x2000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    .line 240
    const/16 v2, 0xd

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 241
    :cond_d
    const-wide/16 v2, 0x4000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 242
    const/16 v2, 0xe

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 245
    :sswitch_b
    const-wide/16 v2, 0x200

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 246
    const/16 v2, 0x9

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 247
    :cond_e
    const-wide/32 v2, 0x100000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 248
    const/16 v2, 0x14

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 251
    :sswitch_c
    const-wide/16 v2, 0x80

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 252
    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 255
    :sswitch_d
    const-wide/32 v2, 0x200000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 256
    const/16 v2, 0x15

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 259
    :sswitch_e
    const-wide/32 v2, 0x8000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 260
    const/16 v2, 0xf

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_0
        0x62 -> :sswitch_1
        0x63 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x67 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6c -> :sswitch_7
        0x6e -> :sswitch_8
        0x70 -> :sswitch_9
        0x72 -> :sswitch_a
        0x74 -> :sswitch_b
        0x75 -> :sswitch_c
        0x76 -> :sswitch_d
        0x79 -> :sswitch_e
    .end sparse-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 71
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 72
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v1

    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_1(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 405
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 406
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v1

    :goto_0
    return v1

    .line 408
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_2(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 529
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 530
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v1

    :goto_0
    return v1

    .line 532
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 401
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 525
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .parameter "pos"
    .parameter "kind"

    .prologue
    .line 65
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 66
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 67
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 6
    .parameter "pos"
    .parameter "active0"

    .prologue
    const-wide v0, 0x7fe7cf7f0L

    const-wide/16 v4, 0x0

    const/16 v3, 0x23

    const/4 v2, -0x1

    .line 35
    packed-switch p1, :pswitch_data_0

    .line 56
    :cond_0
    :goto_0
    return v2

    .line 38
    :pswitch_0
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 40
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    goto :goto_0

    .line 45
    :pswitch_1
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 47
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    if-nez v0, :cond_0

    .line 49
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 393
    .line 396
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 517
    .line 520
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 841
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 842
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 882
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 845
    :pswitch_1
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 846
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 847
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 848
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 849
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 852
    :pswitch_2
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 853
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 854
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 855
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 856
    sput v4, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    goto :goto_0

    .line 859
    :pswitch_3
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 860
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 861
    :cond_3
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 862
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 863
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 866
    :pswitch_4
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 867
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 868
    :cond_4
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 869
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 870
    sget v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    goto/16 :goto_0

    .line 873
    :pswitch_5
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 874
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 875
    :cond_5
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 876
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 877
    sget v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    sget v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 842
    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public ReInit(Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 686
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 687
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 688
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    .line 689
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 690
    return-void
.end method

.method public ReInit(Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInit(Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;)V

    .line 701
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V

    .line 702
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .parameter "lexState"

    .prologue
    .line 705
    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 706
    :cond_0
    new-instance v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 708
    :cond_1
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 709
    return-void
.end method

.method public getNextToken()Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    .locals 17

    .prologue
    .line 734
    const/4 v14, 0x0

    .line 736
    .local v14, specialToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    const/4 v9, 0x0

    .line 743
    .local v9, curPos:I
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->BeginToken()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 753
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 757
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    packed-switch v1, :pswitch_data_0

    .line 775
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_8

    .line 777
    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v9, :cond_1

    .line 778
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V

    .line 779
    :cond_1
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoToken:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_3

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;

    move-result-object v12

    .line 782
    .local v12, matchedToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    iput-object v14, v12, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;->specialToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;

    .line 783
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 784
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    :cond_2
    move-object v13, v12

    .line 785
    .end local v12           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    .local v13, matchedToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    :goto_3
    return-object v13

    .line 745
    .end local v13           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    :catch_0
    move-exception v10

    .line 747
    .local v10, e:Ljava/io/IOException;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;

    move-result-object v12

    .line 749
    .restart local v12       #matchedToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    iput-object v14, v12, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;->specialToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;

    move-object v13, v12

    .line 750
    .end local v12           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    .restart local v13       #matchedToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    goto :goto_3

    .line 760
    .end local v10           #e:Ljava/io/IOException;
    .end local v13           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    :pswitch_0
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 761
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v9

    .line 763
    goto :goto_2

    .line 765
    :pswitch_1
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 766
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 767
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v9

    .line 768
    goto/16 :goto_2

    .line 770
    :pswitch_2
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 771
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 772
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v9

    goto/16 :goto_2

    .line 787
    :cond_3
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSkip:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_6

    .line 789
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSpecial:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_4

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;

    move-result-object v12

    .line 792
    .restart local v12       #matchedToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    if-nez v14, :cond_5

    .line 793
    move-object v14, v12

    .line 800
    .end local v12           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    :cond_4
    :goto_4
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 801
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 796
    .restart local v12       #matchedToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    :cond_5
    iput-object v14, v12, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;->specialToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;

    .line 797
    iput-object v12, v14, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;

    move-object v14, v12

    goto :goto_4

    .line 804
    .end local v12           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->MoreLexicalActions()V

    .line 805
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    .line 806
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 807
    :cond_7
    const/4 v9, 0x0

    .line 808
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 810
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 813
    :catch_1
    move-exception v1

    .line 815
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 816
    .local v4, error_line:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->getEndColumn()I

    move-result v5

    .line 817
    .local v5, error_column:I
    const/4 v6, 0x0

    .line 818
    .local v6, error_after:Ljava/lang/String;
    const/4 v2, 0x0

    .line 819
    .local v2, EOFSeen:Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 830
    :goto_5
    if-nez v2, :cond_9

    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V

    .line 832
    const/4 v1, 0x1

    if-gt v9, v1, :cond_d

    const-string v6, ""

    .line 834
    :cond_9
    :goto_6
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/TokenMgrError;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    move-object/from16 v0, p0

    iget-char v7, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 820
    :catch_2
    move-exception v11

    .line 821
    .local v11, e1:Ljava/io/IOException;
    const/4 v2, 0x1

    .line 822
    const/4 v1, 0x1

    if-gt v9, v1, :cond_b

    const-string v6, ""

    .line 823
    :goto_7
    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-eq v1, v3, :cond_a

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    .line 824
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 825
    const/4 v5, 0x0

    goto :goto_5

    .line 822
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 828
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 832
    .end local v11           #e1:Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 757
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected jjFillToken()Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    .locals 4

    .prologue
    .line 713
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;->newToken(I)Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;

    move-result-object v1

    .line 714
    .local v1, t:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;->kind:I

    .line 715
    sget-object v2, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 716
    .local v0, im:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .end local v0           #im:Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 717
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;->beginLine:I

    .line 718
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;->beginColumn:I

    .line 719
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;->endLine:I

    .line 720
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/Token;->endColumn:I

    .line 721
    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/datetime/parser/DateTimeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
