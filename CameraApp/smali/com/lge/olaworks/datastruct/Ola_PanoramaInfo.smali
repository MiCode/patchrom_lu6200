.class public Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;
.super Ljava/lang/Object;
.source "Ola_PanoramaInfo.java"


# static fields
.field public static final Ola_PanoramaDirection_EDown:I = 0x3

.field public static final Ola_PanoramaDirection_ELeft:I = 0x2

.field public static final Ola_PanoramaDirection_ERight:I = 0x1

.field public static final Ola_PanoramaDirection_EStill:I = 0x0

.field public static final Ola_PanoramaDirection_EUp:I = 0x4

.field public static final Ola_PanoramaDirection_None:I = -0x1

.field public static final Ola_PanoramaParam_EColorCompensationEnable:I = 0x0

.field public static final Ola_PanoramaStatus_ECanceled:I = 0x6

.field public static final Ola_PanoramaStatus_ECompleteSynthesis:I = 0x4

.field public static final Ola_PanoramaStatus_ECreated:I = 0x0

.field public static final Ola_PanoramaStatus_EError:I = 0x7

.field public static final Ola_PanoramaStatus_EImageSetted:I = 0x2

.field public static final Ola_PanoramaStatus_EInSynthesis:I = 0x3

.field public static final Ola_PanoramaStatus_EInitialized:I = 0x1

.field public static final Ola_PanoramaStatus_EReqCancel:I = 0x5


# instance fields
.field public direction:I

.field public hRealDisp:I

.field public status:I

.field public vRealDisp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->direction:I

    .line 26
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->hRealDisp:I

    .line 31
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->vRealDisp:I

    .line 52
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->status:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->direction:I

    .line 38
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->hRealDisp:I

    .line 39
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->vRealDisp:I

    .line 40
    return-void
.end method
