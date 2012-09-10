.class public Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Ifd;
.super Ljava/lang/Object;
.source "Ola_ExifInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/olaworks/datastruct/Ola_ExifInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ifd"
.end annotation


# instance fields
.field public count:I

.field public data:[B

.field public dataFormat:I

.field public tag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Ifd;->tag:I

    .line 40
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Ifd;->dataFormat:I

    .line 41
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Ifd;->count:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Ifd;->data:[B

    .line 43
    return-void
.end method
