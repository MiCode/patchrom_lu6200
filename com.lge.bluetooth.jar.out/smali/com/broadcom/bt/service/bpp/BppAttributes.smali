.class public Lcom/broadcom/bt/service/bpp/BppAttributes;
.super Ljava/lang/Object;
.source "BppAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BppAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public BppStatus:I

.field public BtpHeight:I

.field public BtpWidth:I

.field public CharRepresentations:[B

.field public ColorSupported:Z

.field public Id1284Info:[B

.field public MaxCopies:I

.field public MaxPages:I

.field public Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

.field public MediaTypesMask:[I

.field public NumMediaLoaded:I

.field public OrientationMask:I

.field public PrinterLocation:Ljava/lang/String;

.field public PrinterName:Ljava/lang/String;

.field public PrinterStatus:I

.field public QualityMask:I

.field public QueuedJobs:I

.field public Reason:I

.field public SidesMask:I

.field public State:I

.field public SupportedDocumentFormats:[Ljava/lang/String;

.field public SupportedImageFormats:[Ljava/lang/String;

.field public SupportedMediaSizes:[Ljava/lang/String;

.field private boolArray:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/broadcom/bt/service/bpp/BppAttributes$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BppAttributes$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/BppAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    .line 101
    return-void
.end method

.method public constructor <init>(IIIIIIII[I[B[BLjava/lang/String;Ljava/lang/String;[Lcom/broadcom/bt/service/bpp/LoadedMedia;IIIIIZ[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "printerStatus"
    .parameter "bppStatus"
    .parameter "maxCopies"
    .parameter "maxPages"
    .parameter "queuedJobs"
    .parameter "btpWidth"
    .parameter "btpHeight"
    .parameter "numMediaLoaded"
    .parameter "mediaTypesMask"
    .parameter "charRepresentations"
    .parameter "id1284Info"
    .parameter "printerName"
    .parameter "printerLocation"
    .parameter "media"
    .parameter "state"
    .parameter "reason"
    .parameter "sidesMask"
    .parameter "qualityMask"
    .parameter "orientationMask"
    .parameter "colorSupported"
    .parameter "supportedDocumentFormats"
    .parameter "supportedMediaSizes"
    .parameter "supportedImageFormats"

    .prologue
    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v1, 0x1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    .line 155
    iput p1, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    .line 156
    iput p2, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    .line 157
    iput p3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    .line 158
    iput p4, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    .line 159
    iput p5, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    .line 160
    iput p6, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    .line 161
    iput p7, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    .line 162
    iput p8, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    .line 163
    iput-object p9, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    .line 164
    iput-object p10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->CharRepresentations:[B

    .line 165
    iput-object p11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Id1284Info:[B

    .line 166
    iput-object p12, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    .line 167
    iput-object p13, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    .line 168
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    .line 169
    move/from16 v0, p15

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    .line 170
    move/from16 v0, p16

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    .line 171
    move/from16 v0, p17

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    .line 172
    move/from16 v0, p18

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    .line 173
    move/from16 v0, p19

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    .line 174
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    .line 176
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    .line 177
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    .line 178
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    .line 179
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 186
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    .line 187
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BppAttributes;->readFromParcel(Landroid/os/Parcel;)V

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BppAttributes$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BppAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public listAttributes()Ljava/lang/String;
    .locals 13

    .prologue
    .line 308
    const-string v9, ""

    .line 310
    .local v9, seq:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tPrinter Name:\n\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 311
    iget-object v10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 312
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tPrinter Location:\n\t\tUnknown\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 316
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tQueued jobs: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 317
    const/16 v10, 0xb

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "OK"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string v11, "Error - Unknown"

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const-string v11, "Error - File"

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-string v11, "Error - Permission"

    aput-object v11, v4, v10

    const/4 v10, 0x4

    const-string v11, "Error - Memory"

    aput-object v11, v4, v10

    const/4 v10, 0x5

    const-string v11, "Error - SDP"

    aput-object v11, v4, v10

    const/4 v10, 0x6

    const-string v11, "Error - Forbidden"

    aput-object v11, v4, v10

    const/4 v10, 0x7

    const-string v11, "Error - Reference Object Channel"

    aput-object v11, v4, v10

    const/16 v10, 0x8

    const-string v11, "Error - Job Failed"

    aput-object v11, v4, v10

    const/16 v10, 0x9

    const-string v11, "Error - Unsupported Document Format"

    aput-object v11, v4, v10

    const/16 v10, 0xa

    const-string v11, "Error - Unauthorized"

    aput-object v11, v4, v10

    .line 330
    .local v4, sPrinterStatus:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tPrinter Status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    aget-object v11, v4, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 331
    const/4 v10, 0x4

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Undefined"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string v11, "Idle"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    const-string v11, "Processing"

    aput-object v11, v8, v10

    const/4 v10, 0x3

    const-string v11, "Stopped - Intervention required"

    aput-object v11, v8, v10

    .line 337
    .local v8, sState:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tPrinter State: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 338
    const/16 v10, 0xd

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Undefined"

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-string v11, "None"

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "Attention required"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    const-string v11, "Media Jam"

    aput-object v11, v6, v10

    const/4 v10, 0x4

    const-string v11, "Paused because state is stopped"

    aput-object v11, v6, v10

    const/4 v10, 0x5

    const-string v11, "Door open"

    aput-object v11, v6, v10

    const/4 v10, 0x6

    const-string v11, "Media low"

    aput-object v11, v6, v10

    const/4 v10, 0x7

    const-string v11, "Media empty"

    aput-object v11, v6, v10

    const/16 v10, 0x8

    const-string v11, "Output area almost full"

    aput-object v11, v6, v10

    const/16 v10, 0x9

    const-string v11, "Output area full"

    aput-object v11, v6, v10

    const/16 v10, 0xa

    const-string v11, "Low on ink or toner"

    aput-object v11, v6, v10

    const/16 v10, 0xb

    const-string v11, "Out of ink or toner"

    aput-object v11, v6, v10

    const/16 v10, 0xc

    const-string v11, "Ink cartridge or toner error"

    aput-object v11, v6, v10

    .line 353
    .local v6, sReason:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tReason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    aget-object v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 354
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tBPP Status: 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 355
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 357
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tMaximum copies: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 358
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tMaximum number up: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 359
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tText page width: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 360
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tText page height: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 361
    const/16 v10, 0x23

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Undefined"

    aput-object v11, v2, v10

    const/4 v10, 0x1

    const-string v11, "Stationery"

    aput-object v11, v2, v10

    const/4 v10, 0x2

    const-string v11, "Stationery Coated"

    aput-object v11, v2, v10

    const/4 v10, 0x3

    const-string v11, "Stationery Inkjet"

    aput-object v11, v2, v10

    const/4 v10, 0x4

    const-string v11, "Stationery Preprinted"

    aput-object v11, v2, v10

    const/4 v10, 0x5

    const-string v11, "Stationery Letterhead"

    aput-object v11, v2, v10

    const/4 v10, 0x6

    const-string v11, "Stationery Prepunched"

    aput-object v11, v2, v10

    const/4 v10, 0x7

    const-string v11, "Stationery Fine"

    aput-object v11, v2, v10

    const/16 v10, 0x8

    const-string v11, "Stationery Heavyweight"

    aput-object v11, v2, v10

    const/16 v10, 0x9

    const-string v11, "Stationery Lightweight"

    aput-object v11, v2, v10

    const/16 v10, 0xa

    const-string v11, "Transparency"

    aput-object v11, v2, v10

    const/16 v10, 0xb

    const-string v11, "Envelope"

    aput-object v11, v2, v10

    const/16 v10, 0xc

    const-string v11, "Envelope Plain"

    aput-object v11, v2, v10

    const/16 v10, 0xd

    const-string v11, "Envelope Window"

    aput-object v11, v2, v10

    const/16 v10, 0xe

    const-string v11, "Continuous"

    aput-object v11, v2, v10

    const/16 v10, 0xf

    const-string v11, "Continuous Long"

    aput-object v11, v2, v10

    const/16 v10, 0x10

    const-string v11, "Continuous Short"

    aput-object v11, v2, v10

    const/16 v10, 0x11

    const-string v11, "Tab Stock"

    aput-object v11, v2, v10

    const/16 v10, 0x12

    const-string v11, "Pre Cut Tabs"

    aput-object v11, v2, v10

    const/16 v10, 0x13

    const-string v11, "Full Cut Tabs"

    aput-object v11, v2, v10

    const/16 v10, 0x14

    const-string v11, "Multi Part Form"

    aput-object v11, v2, v10

    const/16 v10, 0x15

    const-string v11, "Labels"

    aput-object v11, v2, v10

    const/16 v10, 0x16

    const-string v11, "Multi Layer"

    aput-object v11, v2, v10

    const/16 v10, 0x17

    const-string v11, "Screen"

    aput-object v11, v2, v10

    const/16 v10, 0x18

    const-string v11, "Screen Paged"

    aput-object v11, v2, v10

    const/16 v10, 0x19

    const-string v11, "Photographic"

    aput-object v11, v2, v10

    const/16 v10, 0x1a

    const-string v11, "Photographic Glossy"

    aput-object v11, v2, v10

    const/16 v10, 0x1b

    const-string v11, "Photographic High Gloss"

    aput-object v11, v2, v10

    const/16 v10, 0x1c

    const-string v11, "Photographic Semi Gloss"

    aput-object v11, v2, v10

    const/16 v10, 0x1d

    const-string v11, "Photographic Satin"

    aput-object v11, v2, v10

    const/16 v10, 0x1e

    const-string v11, "Photographic Matte"

    aput-object v11, v2, v10

    const/16 v10, 0x1f

    const-string v11, "Photographic Film"

    aput-object v11, v2, v10

    const/16 v10, 0x20

    const-string v11, "Back Print Film"

    aput-object v11, v2, v10

    const/16 v10, 0x21

    const-string v11, "Cardstock"

    aput-object v11, v2, v10

    const/16 v10, 0x22

    const-string v11, "Roll"

    aput-object v11, v2, v10

    .line 398
    .local v2, sMediaTypes:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tSupported Media types:\n\t\t\t(0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 401
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    array-length v10, v10

    if-ge v0, v10, :cond_3

    .line 402
    const/4 v1, 0x0

    .local v1, mask:I
    :goto_2
    const/16 v10, 0x20

    if-ge v1, v10, :cond_2

    .line 403
    iget-object v10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    aget v10, v10, v0

    const/4 v11, 0x1

    shl-int/2addr v11, v1

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    .line 404
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    mul-int/lit8 v11, v0, 0x20

    add-int/2addr v11, v1

    aget-object v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 402
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 314
    .end local v0           #i:I
    .end local v1           #mask:I
    .end local v2           #sMediaTypes:[Ljava/lang/String;
    .end local v4           #sPrinterStatus:[Ljava/lang/String;
    .end local v6           #sReason:[Ljava/lang/String;
    .end local v8           #sState:[Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tPrinter Location:\n\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 401
    .restart local v0       #i:I
    .restart local v1       #mask:I
    .restart local v2       #sMediaTypes:[Ljava/lang/String;
    .restart local v4       #sPrinterStatus:[Ljava/lang/String;
    .restart local v6       #sReason:[Ljava/lang/String;
    .restart local v8       #sState:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 408
    .end local v1           #mask:I
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tNumber of media loaded: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 411
    const/4 v0, 0x0

    :goto_3
    iget-object v10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    array-length v10, v10

    if-ge v0, v10, :cond_5

    .line 412
    iget-object v10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    aget-object v10, v10, v0

    iget-object v10, v10, Lcom/broadcom/bt/service/bpp/LoadedMedia;->Size:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 413
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    aget-object v11, v11, v0

    iget v11, v11, Lcom/broadcom/bt/service/bpp/LoadedMedia;->MediaType:I

    aget-object v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    aget-object v11, v11, v0

    iget-object v11, v11, Lcom/broadcom/bt/service/bpp/LoadedMedia;->Size:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 411
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 416
    :cond_5
    const/4 v10, 0x4

    new-array v5, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Undefined"

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-string v11, "Normal"

    aput-object v11, v5, v10

    const/4 v10, 0x2

    const-string v11, "Draft"

    aput-object v11, v5, v10

    const/4 v10, 0x3

    const-string v11, "High"

    aput-object v11, v5, v10

    .line 422
    .local v5, sQualityMask:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tSupported Quality:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 423
    const/4 v0, 0x0

    :goto_4
    array-length v10, v5

    if-ge v0, v10, :cond_7

    .line 424
    iget v10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    const/4 v11, 0x1

    add-int/lit8 v12, v0, 0x3

    shl-int/2addr v11, v12

    and-int/2addr v10, v11

    if-eqz v10, :cond_6

    .line 425
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v5, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 423
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 428
    :cond_7
    const/4 v10, 0x5

    new-array v3, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Undefined"

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const-string v11, "Portrait"

    aput-object v11, v3, v10

    const/4 v10, 0x2

    const-string v11, "Landscape"

    aput-object v11, v3, v10

    const/4 v10, 0x3

    const-string v11, "Reverse Landscape"

    aput-object v11, v3, v10

    const/4 v10, 0x4

    const-string v11, "Reverse Portrait"

    aput-object v11, v3, v10

    .line 435
    .local v3, sOrientationMask:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tSupported Orientation:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 436
    const/4 v0, 0x0

    :goto_5
    array-length v10, v3

    if-ge v0, v10, :cond_9

    .line 437
    iget v10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    const/4 v11, 0x1

    add-int/lit8 v12, v0, 0x3

    shl-int/2addr v11, v12

    and-int/2addr v10, v11

    if-eqz v10, :cond_8

    .line 438
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 436
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 441
    :cond_9
    const/4 v10, 0x4

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Undefined"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string v11, "One sided"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string v11, "Two sided - long edge"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const-string v11, "Two sided - short edge"

    aput-object v11, v7, v10

    .line 447
    .local v7, sSidesMask:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tSupported Page Sides:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 448
    const/4 v0, 0x0

    :goto_6
    array-length v10, v7

    if-ge v0, v10, :cond_b

    .line 449
    iget v10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    const/4 v11, 0x1

    add-int/lit8 v12, v0, 0x3

    shl-int/2addr v11, v12

    and-int/2addr v10, v11

    if-eqz v10, :cond_a

    .line 450
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v7, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 448
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 453
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tColor Supported: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 455
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tSupported Document Formats:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 456
    const/4 v0, 0x0

    :goto_7
    iget-object v10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    array-length v10, v10

    if-ge v0, v10, :cond_d

    .line 457
    iget-object v10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    aget-object v10, v10, v0

    if-eqz v10, :cond_c

    .line 458
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 456
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 461
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tSupported Media Sizes:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 462
    const/4 v0, 0x0

    :goto_8
    iget-object v10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    array-length v10, v10

    if-ge v0, v10, :cond_f

    .line 463
    iget-object v10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    aget-object v10, v10, v0

    if-eqz v10, :cond_e

    .line 464
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 462
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 467
    :cond_f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tSupported Image Formats:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 468
    const/4 v0, 0x0

    :goto_9
    iget-object v10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    array-length v10, v10

    if-ge v0, v10, :cond_11

    .line 469
    iget-object v10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    aget-object v10, v10, v0

    if-eqz v10, :cond_10

    .line 470
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 468
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 474
    :cond_11
    return-object v9
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 255
    .local v0, i:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 265
    .local v2, tempSize:I
    if-lez v2, :cond_0

    .line 266
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    .line 267
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    .line 273
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    .line 275
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 276
    .local v1, tempParcelArray:[Landroid/os/Parcelable;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 277
    array-length v3, v1

    new-array v3, v3, [Lcom/broadcom/bt/service/bpp/LoadedMedia;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    .line 278
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 279
    iget-object v4, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    aget-object v3, v1, v0

    check-cast v3, Lcom/broadcom/bt/service/bpp/LoadedMedia;

    aput-object v3, v4, v0

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    .line 287
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 288
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    iput-boolean v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 291
    if-lez v2, :cond_2

    .line 292
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    .line 293
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 295
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 296
    if-lez v2, :cond_3

    .line 297
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    .line 298
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 300
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    if-lez v2, :cond_4

    .line 302
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    .line 303
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 305
    :cond_4
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 195
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 216
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    iget-boolean v1, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    aput-boolean v1, v0, v2

    .line 223
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 224
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 230
    :goto_1
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 236
    :goto_2
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 242
    :goto_3
    return-void

    .line 208
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 234
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 240
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method
