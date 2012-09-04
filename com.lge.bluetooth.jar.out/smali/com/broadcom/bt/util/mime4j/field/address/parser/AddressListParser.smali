.class public Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;
.super Ljava/lang/Object;
.source "AddressListParser.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTreeConstants;
.implements Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$1;,
        Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;,
        Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    }
.end annotation


# static fields
.field private static jj_la1_0:[I

.field private static jj_la1_1:[I


# instance fields
.field private final jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

.field private jj_endpos:I

.field private jj_expentries:Ljava/util/Vector;

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field jj_input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

.field private jj_lasttokens:[I

.field private final jj_ls:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

.field public jj_nt:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

.field private jj_semLA:Z

.field protected jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

.field public lookingAhead:Z

.field public token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

.field public token_source:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 712
    invoke-static {}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1_0()V

    .line 713
    invoke-static {}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1_1()V

    .line 714
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;)V
    .locals 6
    .parameter "tm"

    .prologue
    const/16 v5, 0x16

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 773
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    .line 705
    iput-boolean v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    .line 708
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    .line 721
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 722
    iput-boolean v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 723
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 817
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ls:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 863
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    .line 865
    iput v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 866
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 774
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 775
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 776
    iput v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 777
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 778
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 780
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 726
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/16 v7, 0x16

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 728
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    .line 705
    iput-boolean v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    .line 708
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    .line 721
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 722
    iput-boolean v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 723
    iput v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 817
    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ls:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 863
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    .line 865
    iput v6, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 866
    const/16 v2, 0x64

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 729
    :try_start_0
    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 731
    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    invoke-direct {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;-><init>()V

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 732
    iput v6, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 733
    iput v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 734
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 729
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 735
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 736
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 7
    .parameter "stream"

    .prologue
    const/16 v6, 0x16

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 752
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    .line 705
    iput-boolean v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    .line 708
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    .line 721
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 722
    iput-boolean v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 723
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 817
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ls:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 863
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    .line 865
    iput v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 866
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 753
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, p1, v5, v5}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    .line 754
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 755
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 756
    iput v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 757
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 758
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 759
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 760
    :cond_1
    return-void
.end method

.method private final jj_2_1(I)Z
    .locals 4
    .parameter "xla"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 615
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 616
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 618
    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    :goto_1
    return v1

    :cond_0
    move v1, v2

    .line 616
    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, ls:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    goto :goto_1

    .end local v0           #ls:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v2, p1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v1
.end method

.method private final jj_2_2(I)Z
    .locals 3
    .parameter "xla"

    .prologue
    const/4 v2, 0x1

    .line 622
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 623
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 625
    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    :goto_1
    return v1

    .line 623
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, ls:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    move v1, v2

    goto :goto_1

    .end local v0           #ls:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v2, p1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v1
.end method

.method private final jj_3R_10()Z
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 673
    .local v0, xsp:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_3R_12()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 675
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 677
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_11()Z
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 631
    .local v0, xsp:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 633
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 634
    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 635
    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 637
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_12()Z
    .locals 2

    .prologue
    .line 661
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 667
    :goto_0
    return v1

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 665
    .local v0, xsp:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_3R_13()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 667
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_13()Z
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 643
    .local v0, xsp:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 644
    :cond_0
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 645
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_8()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 649
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_3R_9()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    :cond_0
    :goto_0
    return v0

    .line 650
    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 651
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_3R_10()Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_9()Z
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 688
    .local v0, xsp:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 690
    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 696
    :goto_0
    return v1

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 694
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_3R_11()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 696
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3_1()Z
    .locals 1

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 657
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_2()Z
    .locals 1

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 682
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jj_add_error_token(II)V
    .locals 7
    .parameter "kind"
    .parameter "pos"

    .prologue
    .line 870
    const/16 v4, 0x64

    if-lt p2, v4, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v4, v4, 0x1

    if-ne p2, v4, :cond_2

    .line 872
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    aput p1, v4, v5

    goto :goto_0

    .line 873
    :cond_2
    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-eqz v4, :cond_0

    .line 874
    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    .line 875
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-ge v2, v4, :cond_3

    .line 876
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    aget v5, v5, v2

    aput v5, v4, v2

    .line 875
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 878
    :cond_3
    const/4 v1, 0x0

    .line 879
    .local v1, exists:Z
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 880
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move-object v3, v4

    check-cast v3, [I

    .line 881
    .local v3, oldentry:[I
    array-length v4, v3

    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v5, v5

    if-ne v4, v5, :cond_4

    .line 882
    const/4 v1, 0x1

    .line 883
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 884
    aget v4, v3, v2

    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_8

    .line 885
    const/4 v1, 0x0

    .line 889
    :cond_5
    if-eqz v1, :cond_4

    .line 892
    .end local v3           #oldentry:[I
    :cond_6
    if-nez v1, :cond_7

    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 893
    :cond_7
    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v5, p2, -0x1

    aput p1, v4, v5

    goto :goto_0

    .line 883
    .restart local v3       #oldentry:[I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private final jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    .locals 5
    .parameter "kind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 794
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .local v2, oldToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    iget-object v3, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget-object v3, v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 796
    :goto_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 797
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget v3, v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->kind:I

    if-ne v3, p1, :cond_4

    .line 798
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 799
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    const/16 v4, 0x64

    if-le v3, v4, :cond_3

    .line 800
    const/4 v3, 0x0

    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 801
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 802
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v3, v1

    .line 803
    .local v0, c:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_2
    if-eqz v0, :cond_2

    .line 804
    iget v3, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 805
    :cond_0
    iget-object v0, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_2

    .line 795
    .end local v0           #c:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;
    .end local v1           #i:I
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v4}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v4

    iput-object v4, v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 801
    .restart local v0       #c:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 809
    .end local v0           #c:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    return-object v3

    .line 811
    :cond_4
    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 812
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 813
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->generateParseException()Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    move-result-object v3

    throw v3
.end method

.method private static jj_la1_0()V
    .locals 1

    .prologue
    .line 716
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    .line 717
    return-void

    .line 716
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x8t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x50t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x40t 0x40t 0x0t 0x80t
        0x40t 0x40t 0x0t 0x80t
        0x8t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x0t 0x1t 0x0t 0x0t
        0x8t 0x1t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x42t 0x0t 0x80t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x42t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x40t 0x4t 0x0t
    .end array-data
.end method

.method private static jj_la1_1()V
    .locals 1

    .prologue
    .line 719
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    .line 720
    return-void

    .line 719
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private final jj_ntk()I
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_nt:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    if-nez v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget v0, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 860
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_nt:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget v0, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0
.end method

.method private final jj_rescan_token()V
    .locals 4

    .prologue
    .line 943
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 944
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 946
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v1, v2, v0

    .line 948
    .local v1, p:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_0
    iget v2, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v2, v3, :cond_1

    .line 949
    iget v2, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v2, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 950
    packed-switch v0, :pswitch_data_0

    .line 955
    :cond_1
    :goto_1
    iget-object v1, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 956
    if-nez v1, :cond_0

    .line 944
    .end local v1           #p:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    .restart local v1       #p:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;
    :pswitch_0
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z

    goto :goto_1

    .line 957
    .end local v1           #p:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 952
    .restart local v1       #p:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;
    :pswitch_1
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_0
    .catch Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 959
    .end local v1           #p:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 960
    return-void

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jj_save(II)V
    .locals 4
    .parameter "index"
    .parameter "xla"

    .prologue
    .line 963
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v2, p1

    .line 964
    .local v0, p:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_0
    iget v2, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v2, v3, :cond_0

    .line 965
    iget-object v2, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    if-nez v2, :cond_1

    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    iput-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    .end local v0           #p:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;
    .local v1, p:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;
    move-object v0, v1

    .line 968
    .end local v1           #p:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;
    .restart local v0       #p:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_0
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v2, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput p2, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    .line 969
    return-void

    .line 966
    :cond_1
    iget-object v0, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_0
.end method

.method private final jj_scan_token(I)Z
    .locals 4
    .parameter "kind"

    .prologue
    .line 819
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_1

    .line 820
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la:I

    .line 821
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    if-nez v2, :cond_0

    .line 822
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v3

    iput-object v3, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 829
    :goto_0
    iget-boolean v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    if-eqz v2, :cond_3

    .line 830
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 831
    .local v1, tok:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    goto :goto_1

    .line 824
    .end local v0           #i:I
    .end local v1           #tok:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 827
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 832
    .restart local v0       #i:I
    .restart local v1       #tok:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    .line 834
    .end local v0           #i:I
    .end local v1           #tok:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :cond_3
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget v2, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->kind:I

    if-eq v2, p1, :cond_4

    const/4 v2, 0x1

    .line 836
    :goto_2
    return v2

    .line 835
    :cond_4
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ls:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    throw v2

    .line 836
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 35
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 24
    :goto_0
    :try_start_0
    new-instance v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;)V

    .line 25
    .local v0, parser:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->parseLine()V

    .line 26
    iget-object v2, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->dump(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    .end local v0           #parser:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;
    :catch_0
    move-exception v1

    .line 28
    .local v1, x:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    return-void
.end method


# virtual methods
.method public ReInit(Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;)V
    .locals 3
    .parameter "tm"

    .prologue
    const/4 v2, -0x1

    .line 783
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 784
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 785
    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 786
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    .line 787
    const/4 v1, 0x0

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 788
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 789
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 790
    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 739
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/4 v5, -0x1

    .line 742
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;)V

    .line 744
    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    invoke-direct {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;-><init>()V

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 745
    iput v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 746
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    .line 747
    const/4 v2, 0x0

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 748
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 742
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 749
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 750
    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4
    .parameter "stream"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 763
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 764
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;)V

    .line 765
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 766
    iput v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 767
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    .line 768
    const/4 v1, 0x0

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 769
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 770
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 771
    :cond_1
    return-void
.end method

.method public final addr_spec()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 472
    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;-><init>(I)V

    .line 473
    .local v2, jjtn000:Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;
    const/4 v0, 0x1

    .line 474
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 475
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 477
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->local_part()V

    .line 478
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 479
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    if-eqz v0, :cond_0

    .line 496
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v5}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 497
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 500
    :cond_0
    return-void

    .line 480
    :catch_0
    move-exception v1

    .line 481
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 482
    :try_start_1
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 483
    const/4 v0, 0x0

    .line 487
    :goto_0
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    .line 488
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 496
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v5}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 497
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    :cond_1
    throw v3

    .line 485
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    goto :goto_0

    .line 490
    :cond_3
    instance-of v3, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_4

    .line 491
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 493
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_4
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final address()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 137
    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress;-><init>(I)V

    .line 138
    .local v2, jjtn000:Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress;
    const/4 v0, 0x1

    .line 139
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 140
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 142
    const v3, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_1(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    if-eqz v0, :cond_0

    .line 187
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 188
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 191
    :cond_0
    return-void

    .line 145
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 166
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x5

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 167
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 168
    new-instance v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 173
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 174
    const/4 v0, 0x0

    .line 178
    :goto_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    .line 179
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 187
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 188
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 145
    :cond_3
    :try_start_3
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1

    .line 147
    :sswitch_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_0

    .line 151
    :sswitch_1
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->phrase()V

    .line 152
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 160
    :pswitch_0
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x4

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 161
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 162
    new-instance v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    .line 152
    :cond_4
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_3

    .line 154
    :pswitch_1
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->group_body()V

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 176
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_5
    :try_start_4
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    goto :goto_2

    .line 181
    :cond_6
    instance-of v3, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_7

    .line 182
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 184
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_7
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch

    .line 152
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final address_list()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 76
    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress_list;

    invoke-direct {v2, v6}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress_list;-><init>(I)V

    .line 77
    .local v2, jjtn000:Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress_list;
    const/4 v0, 0x1

    .line 78
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 81
    :try_start_0
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_1

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 88
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x1

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 93
    :goto_1
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_3

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 98
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x2

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 130
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 133
    :cond_0
    return-void

    .line 81
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 85
    :sswitch_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 115
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 116
    const/4 v0, 0x0

    .line 120
    :goto_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    .line 121
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 129
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 130
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 93
    :cond_3
    :try_start_3
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 101
    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 102
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_4

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    sparse-switch v3, :sswitch_data_1

    .line 109
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x3

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_1

    .line 102
    :cond_4
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4

    .line 106
    :sswitch_1
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 118
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_5
    :try_start_4
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    goto :goto_3

    .line 123
    :cond_6
    instance-of v3, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_7

    .line 124
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 126
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_7
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch

    .line 93
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 102
    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_1
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public final angle_addr()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v6, 0x1

    .line 335
    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {v2, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;-><init>(I)V

    .line 336
    .local v2, jjtn000:Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;
    const/4 v0, 0x1

    .line 337
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 338
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 340
    const/4 v3, 0x6

    :try_start_0
    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 341
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 346
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xa

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 349
    :goto_1
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->addr_spec()V

    .line 350
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    if-eqz v0, :cond_0

    .line 367
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 368
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 371
    :cond_0
    return-void

    .line 341
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 343
    :pswitch_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->route()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 351
    :catch_0
    move-exception v1

    .line 352
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 353
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 354
    const/4 v0, 0x0

    .line 358
    :goto_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_4

    .line 359
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 367
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 368
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 356
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    goto :goto_2

    .line 361
    :cond_4
    instance-of v3, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_5

    .line 362
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 364
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_5
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public final disable_tracing()V
    .locals 0

    .prologue
    .line 940
    return-void
.end method

.method public final domain()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 566
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTdomain;

    const/16 v3, 0xb

    invoke-direct {v1, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTdomain;-><init>(I)V

    .line 567
    .local v1, jjtn000:Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTdomain;
    const/4 v0, 0x1

    .line 568
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 569
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 571
    :try_start_0
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 602
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x15

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 603
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 604
    new-instance v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 608
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v1, v7}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 609
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    :cond_0
    throw v3

    .line 571
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 573
    :sswitch_0
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 576
    .local v2, t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :goto_1
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    sparse-switch v3, :sswitch_data_1

    .line 582
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x13

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    .end local v2           #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :goto_3
    if-eqz v0, :cond_2

    .line 608
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v7}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 609
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 612
    :cond_2
    return-void

    .line 576
    .restart local v2       #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :cond_3
    :try_start_2
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 585
    :sswitch_1
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_4

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    packed-switch v3, :pswitch_data_0

    .line 590
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x14

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 593
    :goto_5
    iget-object v3, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v4, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_5

    .line 594
    new-instance v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    const-string v4, "Atoms in domain names must be separated by \'.\'"

    invoke-direct {v3, v4}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 585
    :cond_4
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4

    .line 587
    :pswitch_0
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 588
    goto :goto_5

    .line 595
    :cond_5
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v2

    goto :goto_1

    .line 599
    .end local v2           #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :sswitch_2
    const/16 v3, 0x12

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 571
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 576
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_1
        0xe -> :sswitch_1
    .end sparse-switch

    .line 585
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public final enable_tracing()V
    .locals 0

    .prologue
    .line 937
    return-void
.end method

.method public generateParseException()Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
    .locals 9

    .prologue
    const/16 v8, 0x22

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 898
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 899
    new-array v3, v8, [Z

    .line 900
    .local v3, la1tokens:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 901
    aput-boolean v7, v3, v1

    .line 900
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 903
    :cond_0
    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    if-ltz v4, :cond_1

    .line 904
    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 905
    const/4 v4, -0x1

    iput v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 907
    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x16

    if-ge v1, v4, :cond_5

    .line 908
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ne v4, v5, :cond_4

    .line 909
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    const/16 v4, 0x20

    if-ge v2, v4, :cond_4

    .line 910
    sget-object v4, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 911
    aput-boolean v6, v3, v2

    .line 913
    :cond_2
    sget-object v4, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 914
    add-int/lit8 v4, v2, 0x20

    aput-boolean v6, v3, v4

    .line 909
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 907
    .end local v2           #j:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 919
    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v8, :cond_7

    .line 920
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_6

    .line 921
    new-array v4, v6, [I

    iput-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    .line 922
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aput v1, v4, v7

    .line 923
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 919
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 926
    :cond_7
    iput v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    .line 927
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_rescan_token()V

    .line 928
    invoke-direct {p0, v7, v7}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    .line 929
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 930
    .local v0, exptokseq:[[I
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 931
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 930
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 933
    :cond_8
    new-instance v4, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    sget-object v6, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getNextToken()Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 842
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 843
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 844
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    return-object v0

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    .locals 4
    .parameter "index"

    .prologue
    .line 848
    iget-boolean v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 849
    .local v1, t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    move-object v2, v1

    .end local v1           #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    .local v2, t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :goto_1
    if-ge v0, p1, :cond_2

    .line 850
    iget-object v3, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    if-eqz v3, :cond_1

    iget-object v1, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 849
    .end local v2           #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    .restart local v1       #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1           #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    .restart local v2       #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    goto :goto_1

    .line 848
    .end local v0           #i:I
    .end local v2           #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 851
    .restart local v0       #i:I
    .restart local v2       #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->token_source:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .end local v2           #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    .restart local v1       #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    goto :goto_2

    .line 853
    .end local v1           #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    .restart local v2       #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :cond_2
    return-object v2
.end method

.method public final group_body()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 272
    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTgroup_body;

    invoke-direct {v2, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTgroup_body;-><init>(I)V

    .line 273
    .local v2, jjtn000:Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTgroup_body;
    const/4 v0, 0x1

    .line 274
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 275
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 277
    const/4 v3, 0x4

    :try_start_0
    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 278
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 285
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x7

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 290
    :goto_1
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 295
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x8

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 310
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    if-eqz v0, :cond_0

    .line 327
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v7}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 328
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 331
    :cond_0
    return-void

    .line 278
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 282
    :sswitch_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 313
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 314
    const/4 v0, 0x0

    .line 318
    :goto_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    .line 319
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 327
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v7}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 328
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 290
    :cond_3
    :try_start_3
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 298
    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 299
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_4

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    sparse-switch v3, :sswitch_data_1

    .line 306
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x9

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_1

    .line 299
    :cond_4
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4

    .line 303
    :sswitch_1
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 316
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_5
    :try_start_4
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    goto :goto_3

    .line 321
    :cond_6
    instance-of v3, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_7

    .line 322
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 324
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_7
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 278
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch

    .line 290
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 299
    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_1
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 53
    check-cast p1, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->getToken(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lcom/broadcom/bt/util/mime4j/field/address/parser/BaseNode;->lastToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 54
    return-void
.end method

.method jjtreeOpenNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 49
    check-cast p1, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;

    .end local p1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->getToken(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lcom/broadcom/bt/util/mime4j/field/address/parser/BaseNode;->firstToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 50
    return-void
.end method

.method public final local_part()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x1f

    const/4 v6, -0x1

    .line 504
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTlocal_part;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTlocal_part;-><init>(I)V

    .line 505
    .local v1, jjtn000:Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTlocal_part;
    const/4 v0, 0x1

    .line 506
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 507
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 509
    :try_start_0
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 517
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xf

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 518
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 519
    new-instance v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 558
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v1, v8}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 559
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    :cond_0
    throw v3

    .line 509
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 511
    :sswitch_0
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 523
    .local v2, t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :goto_1
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    sparse-switch v3, :sswitch_data_1

    .line 530
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x10

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    if-eqz v0, :cond_2

    .line 558
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v8}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 559
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 562
    :cond_2
    return-void

    .line 514
    .end local v2           #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :sswitch_1
    const/16 v3, 0x1f

    :try_start_2
    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 515
    .restart local v2       #t:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    goto :goto_1

    .line 523
    :cond_3
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 533
    :sswitch_2
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_5

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 538
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x11

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 541
    :goto_4
    iget-object v3, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v4, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_4

    iget v3, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->kind:I

    if-ne v3, v7, :cond_6

    .line 542
    :cond_4
    new-instance v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    const-string v4, "Words in local part must be separated by \'.\'"

    invoke-direct {v3, v4}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 533
    :cond_5
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_3

    .line 535
    :pswitch_0
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 536
    goto :goto_4

    .line 543
    :cond_6
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_7

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_5
    sparse-switch v3, :sswitch_data_2

    .line 551
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x12

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 552
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 553
    new-instance v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    .line 543
    :cond_7
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_5

    .line 545
    :sswitch_3
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 546
    goto/16 :goto_1

    .line 548
    :sswitch_4
    const/16 v3, 0x1f

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 549
    goto/16 :goto_1

    .line 509
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch

    .line 523
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_2
        0xe -> :sswitch_2
        0x1f -> :sswitch_2
    .end sparse-switch

    .line 533
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    .line 543
    :sswitch_data_2
    .sparse-switch
        0xe -> :sswitch_3
        0x1f -> :sswitch_4
    .end sparse-switch
.end method

.method public final mailbox()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 195
    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTmailbox;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTmailbox;-><init>(I)V

    .line 196
    .local v2, jjtn000:Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTmailbox;
    const/4 v0, 0x1

    .line 197
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 198
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 200
    const v3, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_2_2(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    if-eqz v0, :cond_0

    .line 233
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 234
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 237
    :cond_0
    return-void

    .line 203
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 212
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x6

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 213
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 214
    new-instance v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 219
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 220
    const/4 v0, 0x0

    .line 224
    :goto_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_5

    .line 225
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 233
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 234
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 203
    :cond_3
    :try_start_3
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1

    .line 205
    :sswitch_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_0

    .line 209
    :sswitch_1
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->name_addr()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 222
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    goto :goto_2

    .line 227
    :cond_5
    instance-of v3, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_6

    .line 228
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 230
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_6
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 203
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public final name_addr()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 241
    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTname_addr;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTname_addr;-><init>(I)V

    .line 242
    .local v2, jjtn000:Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTname_addr;
    const/4 v0, 0x1

    .line 243
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 244
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 246
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->phrase()V

    .line 247
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    if-eqz v0, :cond_0

    .line 264
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v5}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 265
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 268
    :cond_0
    return-void

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 250
    :try_start_1
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 251
    const/4 v0, 0x0

    .line 255
    :goto_0
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    .line 256
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 264
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v5}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 265
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    :cond_1
    throw v3

    .line 253
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    goto :goto_0

    .line 258
    :cond_3
    instance-of v3, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_4

    .line 259
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 261
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_4
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public parse()Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress_list;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->parseAll()V

    .line 41
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress_list;
    :try_end_0
    .catch Lcom/broadcom/bt/util/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, tme:Lcom/broadcom/bt/util/mime4j/field/address/parser/TokenMgrError;
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->address_list()V

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 72
    return-void
.end method

.method public final parseLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->address_list()V

    .line 58
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 63
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v2, v0, v1

    .line 66
    :goto_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 67
    return-void

    .line 58
    :cond_0
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 60
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    goto :goto_1

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final phrase()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 433
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTphrase;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTphrase;-><init>(I)V

    .line 434
    .local v1, jjtn000:Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTphrase;
    const/4 v0, 0x1

    .line 435
    .local v0, jjtc000:Z
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 436
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 440
    :sswitch_0
    :try_start_0
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 448
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0xd

    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v2, v3

    .line 449
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 450
    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    invoke-direct {v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    .line 464
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v5}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 465
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    :cond_0
    throw v2

    .line 440
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 442
    :sswitch_1
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 452
    :goto_1
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_2
    sparse-switch v2, :sswitch_data_1

    .line 458
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0xe

    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    if-eqz v0, :cond_2

    .line 464
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v1, v5}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 465
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 468
    :cond_2
    return-void

    .line 445
    :sswitch_2
    const/16 v2, 0x1f

    :try_start_2
    invoke-direct {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    goto :goto_1

    .line 452
    :cond_3
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 440
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch

    .line 452
    :sswitch_data_1
    .sparse-switch
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public final route()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 375
    new-instance v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTroute;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTroute;-><init>(I)V

    .line 376
    .local v2, jjtn000:Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTroute;
    const/4 v0, 0x1

    .line 377
    .local v0, jjtc000:Z
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 378
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 380
    const/16 v3, 0x8

    :try_start_0
    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 381
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->domain()V

    .line 384
    :goto_0
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 390
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xb

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 408
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    if-eqz v0, :cond_0

    .line 425
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v7}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 426
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 429
    :cond_0
    return-void

    .line 384
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1

    .line 403
    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 395
    :sswitch_0
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 400
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xc

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 405
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 406
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 411
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    .line 412
    const/4 v0, 0x0

    .line 416
    :goto_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_5

    .line 417
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 424
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 425
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v7}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;Z)V

    .line 426
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 395
    :cond_3
    :try_start_3
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 414
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->jjtree:Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lcom/broadcom/bt/util/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    goto :goto_3

    .line 419
    :cond_5
    instance-of v3, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_6

    .line 420
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 422
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_6
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 384
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch

    .line 395
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
