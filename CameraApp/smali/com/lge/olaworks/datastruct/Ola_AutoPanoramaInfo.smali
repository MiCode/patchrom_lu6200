.class public Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;
.super Ljava/lang/Object;
.source "Ola_AutoPanoramaInfo.java"


# static fields
.field public static final OLA_AUTOPANORAMACROSSOFFSET_THRESHOLD:I = 0x32

.field public static final OLA_AUTOPANORAMADIRECTION_EDOWN:I = 0x3

.field public static final OLA_AUTOPANORAMADIRECTION_ELEFT:I = 0x2

.field public static final OLA_AUTOPANORAMADIRECTION_ERIGHT:I = 0x1

.field public static final OLA_AUTOPANORAMADIRECTION_ESTILL:I = 0x0

.field public static final OLA_AUTOPANORAMADIRECTION_EUP:I = 0x4

.field public static final OLA_AUTOPANORAMADIRECTION_NONE:I = -0x1

.field public static final OLA_AUTOPANORAMAPARAM_EALIGNMENTDETAILOPTION:I = 0x1

.field public static final OLA_AUTOPANORAMAPARAM_ECOLORCOMPENSATIONENABLE:I = 0x0

.field public static final OLA_AUTOPANORAMASTATUS_ECANCELED:I = 0x8

.field public static final OLA_AUTOPANORAMASTATUS_ECOMPLETESYNTHESIS:I = 0x5

.field public static final OLA_AUTOPANORAMASTATUS_ECREATED:I = 0x0

.field public static final OLA_AUTOPANORAMASTATUS_EERROR:I = 0x9

.field public static final OLA_AUTOPANORAMASTATUS_EERRORINSYNTHESIS:I = 0x4

.field public static final OLA_AUTOPANORAMASTATUS_EINITIALIZED:I = 0x1

.field public static final OLA_AUTOPANORAMASTATUS_EINPROCESSING:I = 0x2

.field public static final OLA_AUTOPANORAMASTATUS_EINSYNTHESIS:I = 0x3

.field public static final OLA_AUTOPANORAMASTATUS_EREQCANCEL:I = 0x6

.field public static final OLA_AUTOPANORAMASTATUS_EREQSTOPPROCESSING:I = 0x7

.field public static final OLA_AUTOPANORAMASTATUS_NONE:I = -0x1


# instance fields
.field public crossOffset:I

.field public direction:I

.field public displacement:I

.field public progressMax:I

.field public progressNow:I

.field public progressSynthesis:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->clear()V

    .line 44
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->status:I

    .line 48
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->direction:I

    .line 49
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->progressMax:I

    .line 50
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->progressNow:I

    .line 51
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->progressSynthesis:I

    .line 52
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->crossOffset:I

    .line 53
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->displacement:I

    .line 54
    return-void
.end method
