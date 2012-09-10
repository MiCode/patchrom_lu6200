.class public Lcom/lge/olaworks/datastruct/Ola_RawContext;
.super Ljava/lang/Object;
.source "Ola_RawContext.java"


# instance fields
.field public format:I

.field public height:I

.field public orientation:I

.field public rawData:[B

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    .line 19
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    .line 25
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->format:I

    .line 30
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->orientation:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->rawData:[B

    .line 41
    return-void
.end method

.method public constructor <init>(IIII[B)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "fmt"
    .parameter "ori"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    .line 19
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    .line 25
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->format:I

    .line 30
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->orientation:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->rawData:[B

    .line 52
    invoke-virtual {p0}, Lcom/lge/olaworks/datastruct/Ola_RawContext;->init()V

    .line 53
    iput p1, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    .line 54
    iput p2, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    .line 55
    iput p3, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->format:I

    .line 56
    iput p4, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->orientation:I

    .line 57
    iput-object p5, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->rawData:[B

    .line 58
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    .line 62
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    .line 63
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->format:I

    .line 64
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->orientation:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->rawData:[B

    .line 66
    return-void
.end method
