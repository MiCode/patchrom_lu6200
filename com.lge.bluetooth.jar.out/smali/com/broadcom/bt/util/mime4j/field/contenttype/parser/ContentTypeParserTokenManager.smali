.class public Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
.super Ljava/lang/Object;
.source "ContentTypeParserTokenManager.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserConstants;


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

.field protected input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

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
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 110
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    .line 603
    new-array v0, v4, [I

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    .line 605
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "/"

    aput-object v2, v0, v1

    const-string v1, ";"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 608
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 614
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    .line 617
    new-array v0, v5, [J

    const-wide/32 v1, 0x38003f

    aput-wide v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoToken:[J

    .line 620
    new-array v0, v5, [J

    const-wide/16 v1, 0x140

    aput-wide v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSkip:[J

    .line 623
    new-array v0, v5, [J

    const-wide/16 v1, 0x40

    aput-wide v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSpecial:[J

    .line 626
    new-array v0, v5, [J

    const-wide/32 v1, 0x7fe80

    aput-wide v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoMore:[J

    return-void

    .line 110
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 614
    :array_1
    .array-data 0x4
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
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    const/4 v1, 0x0

    .line 636
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 630
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    .line 631
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    .line 685
    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    .line 686
    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->defaultLexState:I

    .line 639
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    .line 640
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;-><init>(Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;)V

    .line 643
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->SwitchTo(I)V

    .line 644
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 655
    const v2, -0x7fffffff

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    .line 656
    const/4 v0, 0x3

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_0

    .line 657
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x8000

    aput v3, v2, v0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 658
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
    .line 91
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 92
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 93
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
    .line 82
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 85
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 87
    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2
    .parameter "start"

    .prologue
    .line 107
    sget-object v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    .line 108
    sget-object v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    .line 109
    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 102
    :goto_0
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    .line 103
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 104
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
    .line 96
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    .line 97
    invoke-direct {p0, p2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    .line 98
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 116
    const/4 v8, 0x0

    .line 117
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    .line 118
    const/4 v1, 0x1

    .line 119
    .local v1, i:I
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 120
    const v3, 0x7fffffff

    .line 123
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    .line 125
    :cond_0
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_b

    .line 127
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 130
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 174
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 214
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 216
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 217
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 218
    const v3, 0x7fffffff

    .line 220
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 221
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_12

    .line 224
    :goto_3
    return p2

    .line 133
    .restart local v4       #l:J
    :pswitch_0
    const-wide v9, 0x3ff6cfafffffdffL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 135
    const/16 v9, 0x15

    if-le v3, v9, :cond_4

    .line 136
    const/16 v3, 0x15

    .line 137
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    .line 145
    :cond_5
    :goto_4
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 147
    const/16 v9, 0x14

    if-le v3, v9, :cond_6

    .line 148
    const/16 v3, 0x14

    .line 149
    :cond_6
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 139
    :cond_7
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 141
    const/4 v9, 0x6

    if-le v3, v9, :cond_8

    .line 142
    const/4 v3, 0x6

    .line 143
    :cond_8
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 153
    :pswitch_1
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 155
    const/4 v3, 0x6

    .line 156
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 159
    :pswitch_2
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 161
    const/16 v9, 0x14

    if-le v3, v9, :cond_9

    .line 162
    const/16 v3, 0x14

    .line 163
    :cond_9
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 166
    :pswitch_3
    const-wide v9, 0x3ff6cfafffffdffL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 168
    const/16 v9, 0x15

    if-le v3, v9, :cond_a

    .line 169
    const/16 v3, 0x15

    .line 170
    :cond_a
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 176
    .end local v4           #l:J
    :cond_b
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_e

    .line 178
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 181
    .restart local v4       #l:J
    :cond_c
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 192
    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 185
    :pswitch_4
    const-wide/32 v9, -0x38000002

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 187
    const/16 v3, 0x15

    .line 188
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 196
    .end local v4           #l:J
    :cond_e
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 197
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 200
    .local v6, l2:J
    :cond_f
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 212
    :cond_10
    :goto_6
    if-ne v1, v8, :cond_f

    goto/16 :goto_2

    .line 204
    :pswitch_5
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_10

    .line 206
    const/16 v9, 0x15

    if-le v3, v9, :cond_11

    .line 207
    const/16 v3, 0x15

    .line 208
    :cond_11
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_6

    .line 223
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_12
    :try_start_0
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 224
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 181
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 200
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 262
    const/4 v8, 0x0

    .line 263
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    .line 264
    const/4 v1, 0x1

    .line 265
    .local v1, i:I
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 266
    const v3, 0x7fffffff

    .line 269
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    .line 271
    :cond_0
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 273
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 276
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 288
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 335
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 337
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 338
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 339
    const v3, 0x7fffffff

    .line 341
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 342
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 345
    :goto_3
    return p2

    .line 279
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0xb

    if-le v3, v9, :cond_2

    .line 280
    const/16 v3, 0xb

    goto :goto_1

    .line 283
    :pswitch_1
    const/16 v9, 0x9

    if-le v3, v9, :cond_2

    .line 284
    const/16 v3, 0x9

    goto :goto_1

    .line 290
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 292
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 295
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 313
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 298
    :pswitch_2
    const/16 v9, 0xb

    if-le v3, v9, :cond_7

    .line 299
    const/16 v3, 0xb

    .line 300
    :cond_7
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 301
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 304
    :pswitch_3
    const/16 v9, 0x9

    if-le v3, v9, :cond_6

    .line 305
    const/16 v3, 0x9

    goto :goto_4

    .line 308
    :pswitch_4
    const/16 v9, 0xb

    if-le v3, v9, :cond_6

    .line 309
    const/16 v3, 0xb

    goto :goto_4

    .line 317
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 318
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 321
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 333
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 324
    :pswitch_5
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0xb

    if-le v3, v9, :cond_a

    .line 325
    const/16 v3, 0xb

    goto :goto_5

    .line 328
    :pswitch_6
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x9

    if-le v3, v9, :cond_a

    .line 329
    const/16 v3, 0x9

    goto :goto_5

    .line 344
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 345
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 295
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 321
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
    .line 517
    const/4 v8, 0x0

    .line 518
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    .line 519
    const/4 v1, 0x1

    .line 520
    .local v1, i:I
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 521
    const v3, 0x7fffffff

    .line 524
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    .line 526
    :cond_0
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 528
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 531
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 543
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 590
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 592
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 593
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 594
    const v3, 0x7fffffff

    .line 596
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 597
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 600
    :goto_3
    return p2

    .line 534
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0xf

    if-le v3, v9, :cond_2

    .line 535
    const/16 v3, 0xf

    goto :goto_1

    .line 538
    :pswitch_1
    const/16 v9, 0xc

    if-le v3, v9, :cond_2

    .line 539
    const/16 v3, 0xc

    goto :goto_1

    .line 545
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 547
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 550
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 568
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 553
    :pswitch_2
    const/16 v9, 0xf

    if-le v3, v9, :cond_7

    .line 554
    const/16 v3, 0xf

    .line 555
    :cond_7
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 556
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 559
    :pswitch_3
    const/16 v9, 0xc

    if-le v3, v9, :cond_6

    .line 560
    const/16 v3, 0xc

    goto :goto_4

    .line 563
    :pswitch_4
    const/16 v9, 0xf

    if-le v3, v9, :cond_6

    .line 564
    const/16 v3, 0xf

    goto :goto_4

    .line 572
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 573
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 576
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 588
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 579
    :pswitch_5
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0xf

    if-le v3, v9, :cond_a

    .line 580
    const/16 v3, 0xf

    goto :goto_5

    .line 583
    :pswitch_6
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0xc

    if-le v3, v9, :cond_a

    .line 584
    const/16 v3, 0xc

    goto :goto_5

    .line 599
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 600
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 550
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 576
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_3(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 381
    const/4 v8, 0x0

    .line 382
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    .line 383
    const/4 v1, 0x1

    .line 384
    .local v1, i:I
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 385
    const v3, 0x7fffffff

    .line 388
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    .line 390
    :cond_0
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_5

    .line 392
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 395
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 411
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 469
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 471
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 472
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 473
    const v3, 0x7fffffff

    .line 475
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 476
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_f

    .line 479
    :goto_3
    return p2

    .line 399
    .restart local v4       #l:J
    :pswitch_0
    const-wide v9, -0x400000001L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 401
    const/16 v9, 0x12

    if-le v3, v9, :cond_4

    .line 402
    const/16 v3, 0x12

    .line 403
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 406
    :pswitch_1
    const/16 v9, 0x11

    if-le v3, v9, :cond_2

    .line 407
    const/16 v3, 0x11

    goto :goto_1

    .line 413
    .end local v4           #l:J
    :cond_5
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_b

    .line 415
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 418
    .restart local v4       #l:J
    :cond_6
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 443
    :cond_7
    :goto_4
    if-ne v1, v8, :cond_6

    goto :goto_2

    .line 421
    :pswitch_2
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    .line 423
    const/16 v9, 0x12

    if-le v3, v9, :cond_8

    .line 424
    const/16 v3, 0x12

    .line 425
    :cond_8
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 427
    :cond_9
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_7

    .line 428
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 431
    :pswitch_3
    const/16 v9, 0x11

    if-le v3, v9, :cond_7

    .line 432
    const/16 v3, 0x11

    goto :goto_4

    .line 435
    :pswitch_4
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 437
    const/16 v9, 0x12

    if-le v3, v9, :cond_a

    .line 438
    const/16 v3, 0x12

    .line 439
    :cond_a
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 447
    .end local v4           #l:J
    :cond_b
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 448
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 451
    .local v6, l2:J
    :cond_c
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 467
    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 455
    :pswitch_5
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 457
    const/16 v9, 0x12

    if-le v3, v9, :cond_e

    .line 458
    const/16 v3, 0x12

    .line 459
    :cond_e
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 462
    :pswitch_6
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    const/16 v9, 0x11

    if-le v3, v9, :cond_d

    .line 463
    const/16 v3, 0x11

    goto :goto_5

    .line 478
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_f
    :try_start_0
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 479
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 418
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 451
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 60
    iget-char v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 77
    invoke-direct {p0, v3, v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 63
    :sswitch_0
    invoke-direct {p0, v1, v2, v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    .line 65
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    .line 67
    :sswitch_2
    const/16 v0, 0x10

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 69
    :sswitch_3
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 71
    :sswitch_4
    invoke-direct {p0, v1, v3}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 73
    :sswitch_5
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 75
    :sswitch_6
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 60
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x28 -> :sswitch_3
        0x2f -> :sswitch_4
        0x3b -> :sswitch_5
        0x3d -> :sswitch_6
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-char v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 256
    invoke-direct {p0, v1, v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 252
    :pswitch_0
    const/16 v0, 0xa

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 254
    :pswitch_1
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 249
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

    .line 504
    iget-char v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 511
    invoke-direct {p0, v1, v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 507
    :pswitch_0
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 509
    :pswitch_1
    const/16 v0, 0xe

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_3()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    iget-char v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 375
    invoke-direct {p0, v1, v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_0
    return v0

    .line 373
    :pswitch_0
    const/16 v0, 0x13

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 52
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 53
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v1

    :goto_0
    return v1

    .line 55
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
    .line 241
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 242
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v1

    :goto_0
    return v1

    .line 244
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
    .line 496
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 497
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 498
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v1

    :goto_0
    return v1

    .line 499
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_3(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 362
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 363
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3(II)I

    move-result v1

    :goto_0
    return v1

    .line 365
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
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 237
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 492
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 358
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .parameter "pos"
    .parameter "kind"

    .prologue
    .line 46
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 47
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 48
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 34
    .line 37
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 229
    .line 232
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 484
    .line 487
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 350
    .line 353
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 808
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 809
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 863
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 812
    :pswitch_1
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 813
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 815
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 816
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 819
    :pswitch_2
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 820
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 822
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 823
    sput v4, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    goto :goto_0

    .line 826
    :pswitch_3
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 827
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 828
    :cond_3
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 829
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 830
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 833
    :pswitch_4
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 834
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 835
    :cond_4
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 836
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 837
    sget v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    goto/16 :goto_0

    .line 840
    :pswitch_5
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 841
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 842
    :cond_5
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 843
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 844
    sget v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    sget v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 847
    :pswitch_6
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    .line 848
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 849
    :cond_6
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 850
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 851
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 854
    :pswitch_7
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_7

    .line 855
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 856
    :cond_7
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 857
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 858
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 809
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public ReInit(Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 647
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 648
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    .line 649
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    .line 650
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    .line 651
    return-void
.end method

.method public ReInit(Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 661
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInit(Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;)V

    .line 662
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->SwitchTo(I)V

    .line 663
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .parameter "lexState"

    .prologue
    .line 666
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 667
    :cond_0
    new-instance v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/TokenMgrError;

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

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 669
    :cond_1
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    .line 670
    return-void
.end method

.method TokenLexicalActions(Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;)V
    .locals 4
    .parameter "matchedToken"

    .prologue
    .line 866
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 877
    :goto_0
    return-void

    .line 869
    :pswitch_0
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 870
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 872
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    goto :goto_0

    .line 866
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public getNextToken()Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    .locals 17

    .prologue
    .line 695
    const/4 v14, 0x0

    .line 697
    .local v14, specialToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    const/4 v9, 0x0

    .line 704
    .local v9, curPos:I
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->BeginToken()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 714
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 718
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    packed-switch v1, :pswitch_data_0

    .line 741
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_8

    .line 743
    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v9, :cond_1

    .line 744
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V

    .line 745
    :cond_1
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoToken:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_3

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;

    move-result-object v12

    .line 748
    .local v12, matchedToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    iput-object v14, v12, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;->specialToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;

    .line 749
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->TokenLexicalActions(Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;)V

    .line 750
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 751
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    :cond_2
    move-object v13, v12

    .line 752
    .end local v12           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    .local v13, matchedToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    :goto_3
    return-object v13

    .line 706
    .end local v13           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    :catch_0
    move-exception v10

    .line 708
    .local v10, e:Ljava/io/IOException;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;

    move-result-object v12

    .line 710
    .restart local v12       #matchedToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    iput-object v14, v12, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;->specialToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;

    move-object v13, v12

    .line 711
    .end local v12           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    .restart local v13       #matchedToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    goto :goto_3

    .line 721
    .end local v10           #e:Ljava/io/IOException;
    .end local v13           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    :pswitch_0
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 722
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 723
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v9

    .line 724
    goto :goto_2

    .line 726
    :pswitch_1
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 727
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 728
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v9

    .line 729
    goto/16 :goto_2

    .line 731
    :pswitch_2
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 732
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 733
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v9

    .line 734
    goto/16 :goto_2

    .line 736
    :pswitch_3
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 737
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 738
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v9

    goto/16 :goto_2

    .line 754
    :cond_3
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSkip:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_6

    .line 756
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSpecial:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_4

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;

    move-result-object v12

    .line 759
    .restart local v12       #matchedToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    if-nez v14, :cond_5

    .line 760
    move-object v14, v12

    .line 767
    .end local v12           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    :cond_4
    :goto_4
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 768
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 763
    .restart local v12       #matchedToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    :cond_5
    iput-object v14, v12, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;->specialToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;

    .line 764
    iput-object v12, v14, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;

    move-object v14, v12

    goto :goto_4

    .line 771
    .end local v12           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->MoreLexicalActions()V

    .line 772
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    .line 773
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    .line 774
    :cond_7
    const/4 v9, 0x0

    .line 775
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 777
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 780
    :catch_1
    move-exception v1

    .line 782
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 783
    .local v4, error_line:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->getEndColumn()I

    move-result v5

    .line 784
    .local v5, error_column:I
    const/4 v6, 0x0

    .line 785
    .local v6, error_after:Ljava/lang/String;
    const/4 v2, 0x0

    .line 786
    .local v2, EOFSeen:Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 797
    :goto_5
    if-nez v2, :cond_9

    .line 798
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V

    .line 799
    const/4 v1, 0x1

    if-gt v9, v1, :cond_d

    const-string v6, ""

    .line 801
    :cond_9
    :goto_6
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/TokenMgrError;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    move-object/from16 v0, p0

    iget-char v7, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 787
    :catch_2
    move-exception v11

    .line 788
    .local v11, e1:Ljava/io/IOException;
    const/4 v2, 0x1

    .line 789
    const/4 v1, 0x1

    if-gt v9, v1, :cond_b

    const-string v6, ""

    .line 790
    :goto_7
    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-eq v1, v3, :cond_a

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    .line 791
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 792
    const/4 v5, 0x0

    goto :goto_5

    .line 789
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 795
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 799
    .end local v11           #e1:Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 718
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected jjFillToken()Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    .locals 4

    .prologue
    .line 674
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;->newToken(I)Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    .line 675
    .local v1, t:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;->kind:I

    .line 676
    sget-object v2, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 677
    .local v0, im:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .end local v0           #im:Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    .line 678
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;->beginLine:I

    .line 679
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;->beginColumn:I

    .line 680
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;->endLine:I

    .line 681
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;->endColumn:I

    .line 682
    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
