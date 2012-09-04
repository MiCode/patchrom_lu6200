.class public Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;
.super Ljava/lang/Object;
.source "AddressListParserTokenManager.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserConstants;


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

.field protected input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

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

    .line 245
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    .line 714
    new-array v0, v4, [I

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    .line 716
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, ","

    aput-object v2, v0, v1

    const-string v1, ":"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, ";"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "."

    aput-object v2, v0, v1

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

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 720
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INDOMAINLITERAL"

    aput-object v1, v0, v5

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "NESTED_COMMENT"

    aput-object v2, v0, v1

    const-string v1, "INQUOTEDSTRING"

    aput-object v1, v0, v6

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 727
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    .line 731
    new-array v0, v5, [J

    const-wide v1, 0x800443ffL

    aput-wide v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoToken:[J

    .line 734
    new-array v0, v5, [J

    const-wide/32 v1, 0x100400

    aput-wide v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSkip:[J

    .line 737
    new-array v0, v5, [J

    const-wide/16 v1, 0x400

    aput-wide v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSpecial:[J

    .line 740
    new-array v0, v5, [J

    const-wide/32 v1, 0x7feb8000

    aput-wide v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoMore:[J

    return-void

    .line 245
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 727
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
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    const/4 v1, 0x0

    .line 750
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 744
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    .line 745
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    .line 799
    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    .line 800
    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->defaultLexState:I

    .line 753
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    .line 754
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;)V

    .line 757
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->SwitchTo(I)V

    .line 758
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 769
    const v2, -0x7fffffff

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    .line 770
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

    .line 771
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x8000

    aput v3, v2, v0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 772
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
    .line 100
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 101
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 102
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
    .line 91
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 94
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 96
    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2
    .parameter "start"

    .prologue
    .line 116
    sget-object v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 117
    sget-object v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 118
    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 111
    :goto_0
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 112
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 113
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
    .line 105
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 106
    invoke-direct {p0, p2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 107
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 122
    const/4 v8, 0x0

    .line 123
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 124
    const/4 v1, 0x1

    .line 125
    .local v1, i:I
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 126
    const v3, 0x7fffffff

    .line 129
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 131
    :cond_0
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_8

    .line 133
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 136
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 167
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 200
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 202
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 203
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 204
    const v3, 0x7fffffff

    .line 206
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 207
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_e

    .line 210
    :goto_3
    return p2

    .line 139
    .restart local v4       #l:J
    :pswitch_0
    const-wide v9, -0x5c00530600000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 141
    const/16 v9, 0xe

    if-le v3, v9, :cond_4

    .line 142
    const/16 v3, 0xe

    .line 143
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 145
    :cond_5
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 147
    const/16 v9, 0xa

    if-le v3, v9, :cond_6

    .line 148
    const/16 v3, 0xa

    .line 149
    :cond_6
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 153
    :pswitch_1
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 155
    const/16 v3, 0xa

    .line 156
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 159
    :pswitch_2
    const-wide v9, -0x5c00130600000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 161
    const/16 v9, 0xe

    if-le v3, v9, :cond_7

    .line 162
    const/16 v3, 0xe

    .line 163
    :cond_7
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 169
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_c

    .line 171
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 174
    .restart local v4       #l:J
    :cond_9
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 186
    :cond_a
    :goto_4
    if-ne v1, v8, :cond_9

    goto/16 :goto_2

    .line 178
    :pswitch_3
    const-wide v9, 0x7fffffffc7fffffeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    .line 180
    const/16 v9, 0xe

    if-le v3, v9, :cond_b

    .line 181
    const/16 v3, 0xe

    .line 182
    :cond_b
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 190
    .end local v4           #l:J
    :cond_c
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 191
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 194
    .local v6, l2:J
    :cond_d
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    .line 198
    if-ne v1, v8, :cond_d

    goto/16 :goto_2

    .line 209
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_e
    :try_start_0
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 210
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 174
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 625
    const/4 v8, 0x0

    .line 626
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 627
    const/4 v1, 0x1

    .line 628
    .local v1, i:I
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 629
    const v3, 0x7fffffff

    .line 632
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 634
    :cond_0
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 636
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 639
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 651
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 701
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 703
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 704
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 705
    const v3, 0x7fffffff

    .line 707
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 708
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 711
    :goto_3
    return p2

    .line 642
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0x11

    if-le v3, v9, :cond_2

    .line 643
    const/16 v3, 0x11

    goto :goto_1

    .line 646
    :pswitch_1
    const/16 v9, 0x10

    if-le v3, v9, :cond_2

    .line 647
    const/16 v3, 0x10

    goto :goto_1

    .line 653
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 655
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 658
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 679
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 661
    :pswitch_2
    const-wide/32 v9, -0x38000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 663
    const/16 v9, 0x11

    if-le v3, v9, :cond_6

    .line 664
    const/16 v3, 0x11

    goto :goto_4

    .line 666
    :cond_7
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 667
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 670
    :pswitch_3
    const/16 v9, 0x10

    if-le v3, v9, :cond_6

    .line 671
    const/16 v3, 0x10

    goto :goto_4

    .line 674
    :pswitch_4
    const-wide/32 v9, -0x38000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_6

    const/16 v9, 0x11

    if-le v3, v9, :cond_6

    .line 675
    const/16 v3, 0x11

    goto :goto_4

    .line 683
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 684
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 687
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 699
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto/16 :goto_2

    .line 690
    :pswitch_5
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x11

    if-le v3, v9, :cond_a

    .line 691
    const/16 v3, 0x11

    goto :goto_5

    .line 694
    :pswitch_6
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x10

    if-le v3, v9, :cond_a

    .line 695
    const/16 v3, 0x10

    goto :goto_5

    .line 710
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 711
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 639
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 658
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 687
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
    .line 251
    const/4 v8, 0x0

    .line 252
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 253
    const/4 v1, 0x1

    .line 254
    .local v1, i:I
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 255
    const v3, 0x7fffffff

    .line 258
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 260
    :cond_0
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 262
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 265
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 277
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 324
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 326
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 327
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 328
    const v3, 0x7fffffff

    .line 330
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 331
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 334
    :goto_3
    return p2

    .line 268
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0x17

    if-le v3, v9, :cond_2

    .line 269
    const/16 v3, 0x17

    goto :goto_1

    .line 272
    :pswitch_1
    const/16 v9, 0x15

    if-le v3, v9, :cond_2

    .line 273
    const/16 v3, 0x15

    goto :goto_1

    .line 279
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 281
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 284
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 302
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 287
    :pswitch_2
    const/16 v9, 0x17

    if-le v3, v9, :cond_7

    .line 288
    const/16 v3, 0x17

    .line 289
    :cond_7
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 290
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 293
    :pswitch_3
    const/16 v9, 0x15

    if-le v3, v9, :cond_6

    .line 294
    const/16 v3, 0x15

    goto :goto_4

    .line 297
    :pswitch_4
    const/16 v9, 0x17

    if-le v3, v9, :cond_6

    .line 298
    const/16 v3, 0x17

    goto :goto_4

    .line 306
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 307
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 310
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 322
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 313
    :pswitch_5
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x17

    if-le v3, v9, :cond_a

    .line 314
    const/16 v3, 0x17

    goto :goto_5

    .line 317
    :pswitch_6
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x15

    if-le v3, v9, :cond_a

    .line 318
    const/16 v3, 0x15

    goto :goto_5

    .line 333
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 334
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 284
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 310
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
    .line 506
    const/4 v8, 0x0

    .line 507
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 508
    const/4 v1, 0x1

    .line 509
    .local v1, i:I
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 510
    const v3, 0x7fffffff

    .line 513
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 515
    :cond_0
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 517
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 520
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 532
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 579
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 581
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 582
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 583
    const v3, 0x7fffffff

    .line 585
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 586
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 589
    :goto_3
    return p2

    .line 523
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0x1b

    if-le v3, v9, :cond_2

    .line 524
    const/16 v3, 0x1b

    goto :goto_1

    .line 527
    :pswitch_1
    const/16 v9, 0x18

    if-le v3, v9, :cond_2

    .line 528
    const/16 v3, 0x18

    goto :goto_1

    .line 534
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 536
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 539
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 557
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 542
    :pswitch_2
    const/16 v9, 0x1b

    if-le v3, v9, :cond_7

    .line 543
    const/16 v3, 0x1b

    .line 544
    :cond_7
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 545
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 548
    :pswitch_3
    const/16 v9, 0x18

    if-le v3, v9, :cond_6

    .line 549
    const/16 v3, 0x18

    goto :goto_4

    .line 552
    :pswitch_4
    const/16 v9, 0x1b

    if-le v3, v9, :cond_6

    .line 553
    const/16 v3, 0x1b

    goto :goto_4

    .line 561
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 562
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 565
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 577
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 568
    :pswitch_5
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x1b

    if-le v3, v9, :cond_a

    .line 569
    const/16 v3, 0x1b

    goto :goto_5

    .line 572
    :pswitch_6
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x18

    if-le v3, v9, :cond_a

    .line 573
    const/16 v3, 0x18

    goto :goto_5

    .line 588
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 589
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 539
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 565
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_4(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 370
    const/4 v8, 0x0

    .line 371
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 372
    const/4 v1, 0x1

    .line 373
    .local v1, i:I
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 374
    const v3, 0x7fffffff

    .line 377
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 379
    :cond_0
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_5

    .line 381
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 384
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 400
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 458
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 460
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 461
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 462
    const v3, 0x7fffffff

    .line 464
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 465
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_f

    .line 468
    :goto_3
    return p2

    .line 388
    .restart local v4       #l:J
    :pswitch_0
    const-wide v9, -0x400000001L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 390
    const/16 v9, 0x1e

    if-le v3, v9, :cond_4

    .line 391
    const/16 v3, 0x1e

    .line 392
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 395
    :pswitch_1
    const/16 v9, 0x1d

    if-le v3, v9, :cond_2

    .line 396
    const/16 v3, 0x1d

    goto :goto_1

    .line 402
    .end local v4           #l:J
    :cond_5
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_b

    .line 404
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 407
    .restart local v4       #l:J
    :cond_6
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 432
    :cond_7
    :goto_4
    if-ne v1, v8, :cond_6

    goto :goto_2

    .line 410
    :pswitch_2
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    .line 412
    const/16 v9, 0x1e

    if-le v3, v9, :cond_8

    .line 413
    const/16 v3, 0x1e

    .line 414
    :cond_8
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 416
    :cond_9
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_7

    .line 417
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 420
    :pswitch_3
    const/16 v9, 0x1d

    if-le v3, v9, :cond_7

    .line 421
    const/16 v3, 0x1d

    goto :goto_4

    .line 424
    :pswitch_4
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 426
    const/16 v9, 0x1e

    if-le v3, v9, :cond_a

    .line 427
    const/16 v3, 0x1e

    .line 428
    :cond_a
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 436
    .end local v4           #l:J
    :cond_b
    iget-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 437
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 440
    .local v6, l2:J
    :cond_c
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 456
    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 444
    :pswitch_5
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 446
    const/16 v9, 0x1e

    if-le v3, v9, :cond_e

    .line 447
    const/16 v3, 0x1e

    .line 448
    :cond_e
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 451
    :pswitch_6
    sget-object v9, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    const/16 v9, 0x1d

    if-le v3, v9, :cond_d

    .line 452
    const/16 v3, 0x1d

    goto :goto_5

    .line 467
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_f
    :try_start_0
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 468
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 407
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 440
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    iget-char v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 86
    invoke-direct {p0, v2, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 62
    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 64
    :sswitch_1
    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 66
    :sswitch_2
    const/16 v0, 0x1c

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 68
    :sswitch_3
    const/16 v0, 0x13

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 70
    :sswitch_4
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 72
    :sswitch_5
    const/16 v0, 0x9

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 74
    :sswitch_6
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 76
    :sswitch_7
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 78
    :sswitch_8
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 80
    :sswitch_9
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 82
    :sswitch_a
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 84
    :sswitch_b
    const/16 v0, 0xf

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 59
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x28 -> :sswitch_3
        0x2c -> :sswitch_4
        0x2e -> :sswitch_5
        0x3a -> :sswitch_6
        0x3b -> :sswitch_7
        0x3c -> :sswitch_8
        0x3e -> :sswitch_9
        0x40 -> :sswitch_a
        0x5b -> :sswitch_b
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 614
    iget-char v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 619
    invoke-direct {p0, v1, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 617
    :pswitch_0
    const/16 v0, 0x12

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 614
    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-char v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 242
    invoke-direct {p0, v1, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 238
    :pswitch_0
    const/16 v0, 0x16

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 240
    :pswitch_1
    const/16 v0, 0x14

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 235
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

    .line 493
    iget-char v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 500
    invoke-direct {p0, v1, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_0
    return v0

    .line 496
    :pswitch_0
    const/16 v0, 0x19

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 498
    :pswitch_1
    const/16 v0, 0x1a

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_4()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-char v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 364
    invoke-direct {p0, v1, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_4(II)I

    move-result v0

    :goto_0
    return v0

    .line 362
    :pswitch_0
    const/16 v0, 0x1f

    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 359
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
    .line 51
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 52
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_0(II)I

    move-result v1

    :goto_0
    return v1

    .line 54
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
    .line 606
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 607
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_1(II)I

    move-result v1

    :goto_0
    return v1

    .line 609
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
    .line 227
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 228
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_2(II)I

    move-result v1

    :goto_0
    return v1

    .line 230
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
    .line 485
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 486
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_3(II)I

    move-result v1

    :goto_0
    return v1

    .line 488
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_4(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 351
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 352
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_4(II)I

    move-result v1

    :goto_0
    return v1

    .line 354
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
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 602
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 481
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_4(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 347
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_4(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_4(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .parameter "pos"
    .parameter "kind"

    .prologue
    .line 45
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 46
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 47
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 33
    .line 36
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 594
    .line 597
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 215
    .line 218
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 473
    .line 476
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_4(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 339
    .line 342
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 927
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 928
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 989
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 931
    :pswitch_1
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 932
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 934
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 935
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 938
    :pswitch_2
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 939
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 940
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 941
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 942
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 945
    :pswitch_3
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 946
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 947
    :cond_3
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 948
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 949
    const/4 v0, 0x1

    sput v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    goto :goto_0

    .line 952
    :pswitch_4
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 953
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 954
    :cond_4
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 955
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 956
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 959
    :pswitch_5
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 960
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 961
    :cond_5
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 962
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 963
    sget v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    goto/16 :goto_0

    .line 966
    :pswitch_6
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    .line 967
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 968
    :cond_6
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 969
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 970
    sget v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    sget v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 973
    :pswitch_7
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_7

    .line 974
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 975
    :cond_7
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 976
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 977
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 980
    :pswitch_8
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_8

    .line 981
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 982
    :cond_8
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 983
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 984
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 928
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public ReInit(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 761
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 762
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    .line 763
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    .line 764
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 765
    return-void
.end method

.method public ReInit(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 775
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;)V

    .line 776
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->SwitchTo(I)V

    .line 777
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .parameter "lexState"

    .prologue
    .line 780
    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 781
    :cond_0
    new-instance v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/TokenMgrError;

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

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 783
    :cond_1
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    .line 784
    return-void
.end method

.method TokenLexicalActions(Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;)V
    .locals 4
    .parameter "matchedToken"

    .prologue
    .line 992
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    sparse-switch v0, :sswitch_data_0

    .line 1009
    :goto_0
    return-void

    .line 995
    :sswitch_0
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 996
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 998
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    goto :goto_0

    .line 1001
    :sswitch_1
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 1002
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 1004
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    goto :goto_0

    .line 992
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public getNextToken()Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    .locals 17

    .prologue
    .line 809
    const/4 v14, 0x0

    .line 811
    .local v14, specialToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    const/4 v9, 0x0

    .line 818
    .local v9, curPos:I
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->BeginToken()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 828
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 832
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    packed-switch v1, :pswitch_data_0

    .line 860
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_8

    .line 862
    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v9, :cond_1

    .line 863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->backup(I)V

    .line 864
    :cond_1
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoToken:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_3

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v12

    .line 867
    .local v12, matchedToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    iput-object v14, v12, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->specialToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 868
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->TokenLexicalActions(Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;)V

    .line 869
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 870
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    :cond_2
    move-object v13, v12

    .line 871
    .end local v12           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    .local v13, matchedToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :goto_3
    return-object v13

    .line 820
    .end local v13           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :catch_0
    move-exception v10

    .line 822
    .local v10, e:Ljava/io/IOException;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v12

    .line 824
    .restart local v12       #matchedToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    iput-object v14, v12, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->specialToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-object v13, v12

    .line 825
    .end local v12           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    .restart local v13       #matchedToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    goto :goto_3

    .line 835
    .end local v10           #e:Ljava/io/IOException;
    .end local v13           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :pswitch_0
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 836
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 837
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v9

    .line 838
    goto :goto_2

    .line 840
    :pswitch_1
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 841
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 842
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v9

    .line 843
    goto/16 :goto_2

    .line 845
    :pswitch_2
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 846
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 847
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v9

    .line 848
    goto/16 :goto_2

    .line 850
    :pswitch_3
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 851
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 852
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v9

    .line 853
    goto/16 :goto_2

    .line 855
    :pswitch_4
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 856
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 857
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_4()I

    move-result v9

    goto/16 :goto_2

    .line 873
    :cond_3
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSkip:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_6

    .line 875
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSpecial:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_4

    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v12

    .line 878
    .restart local v12       #matchedToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    if-nez v14, :cond_5

    .line 879
    move-object v14, v12

    .line 886
    .end local v12           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :cond_4
    :goto_4
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 887
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 882
    .restart local v12       #matchedToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :cond_5
    iput-object v14, v12, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->specialToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 883
    iput-object v12, v14, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-object v14, v12

    goto :goto_4

    .line 890
    .end local v12           #matchedToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->MoreLexicalActions()V

    .line 891
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    .line 892
    sget-object v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    .line 893
    :cond_7
    const/4 v9, 0x0

    .line 894
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 896
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 899
    :catch_1
    move-exception v1

    .line 901
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 902
    .local v4, error_line:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->getEndColumn()I

    move-result v5

    .line 903
    .local v5, error_column:I
    const/4 v6, 0x0

    .line 904
    .local v6, error_after:Ljava/lang/String;
    const/4 v2, 0x0

    .line 905
    .local v2, EOFSeen:Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 916
    :goto_5
    if-nez v2, :cond_9

    .line 917
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->backup(I)V

    .line 918
    const/4 v1, 0x1

    if-gt v9, v1, :cond_d

    const-string v6, ""

    .line 920
    :cond_9
    :goto_6
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/TokenMgrError;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    move-object/from16 v0, p0

    iget-char v7, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/broadcom/bt/util/mime4j/field/address/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 906
    :catch_2
    move-exception v11

    .line 907
    .local v11, e1:Ljava/io/IOException;
    const/4 v2, 0x1

    .line 908
    const/4 v1, 0x1

    if-gt v9, v1, :cond_b

    const-string v6, ""

    .line 909
    :goto_7
    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-eq v1, v3, :cond_a

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    .line 910
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 911
    const/4 v5, 0x0

    goto :goto_5

    .line 908
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 914
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 918
    .end local v11           #e1:Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 832
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected jjFillToken()Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    .locals 4

    .prologue
    .line 788
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->newToken(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v1

    .line 789
    .local v1, t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->kind:I

    .line 790
    sget-object v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 791
    .local v0, im:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .end local v0           #im:Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    .line 792
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->beginLine:I

    .line 793
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->beginColumn:I

    .line 794
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->endLine:I

    .line 795
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->endColumn:I

    .line 796
    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
