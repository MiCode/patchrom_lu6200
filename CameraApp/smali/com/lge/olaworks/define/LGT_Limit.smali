.class public Lcom/lge/olaworks/define/LGT_Limit;
.super Ljava/lang/Object;
.source "LGT_Limit.java"


# static fields
.field public static FdFilename:[Ljava/lang/String; = null

.field public static final IMAGE_SIZE_CONTACT_HEIGHT:I = 0x5f

.field public static final IMAGE_SIZE_CONTACT_WIDTH:I = 0x5f

.field public static final IMAGE_SIZE_WALLPAPER_HEIGHT:I = 0x320

.field public static final IMAGE_SIZE_WALLPAPER_WIDTH:I = 0x3c0

.field public static final ISP_AUTOMODE:Ljava/lang/String; = "automode"

.field public static final ISP_AUTOMODE_AUTO:Ljava/lang/String; = "auto"

.field public static final ISP_AUTOMODE_GETMODE:Ljava/lang/String; = "autoscene"

.field public static final ISP_AUTOMODE_PROGRAM:Ljava/lang/String; = "program"

.field public static final ISP_BRIGHTNESS:Ljava/lang/String; = "luma-adaptation"

.field public static final ISP_COLOUR_EFFECT:Ljava/lang/String; = "effect"

.field public static final ISP_DEFAULT_BRIGHTNESS_LEVEL:I = 0x4

.field public static final ISP_DEFAULT_MACRO_LEVEL:I = 0x0

.field public static final ISP_DEFAULT_ZOOM_LEVEL:I = 0x0

.field public static final ISP_FOCUS:Ljava/lang/String; = "autofocus"

.field public static final ISP_ISO:Ljava/lang/String; = "iso"

.field public static final ISP_MANUAL_FOCUS:Ljava/lang/String; = "mf-step"

.field public static final ISP_MAX_BRIGHTNESS_LEVEL:I = 0x9

.field public static final ISP_MAX_MACRO_LEVEL:I = 0x9

.field public static final ISP_MAX_ZOOM_LEVEL:I = 0xa

.field public static final ISP_ORIENTATION:Ljava/lang/String; = "jpeg-orientation"

.field public static final ISP_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final ISP_ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final ISP_WHITE_BALANCE:Ljava/lang/String; = "whitebalance"

.field public static final ISP_ZOOM:Ljava/lang/String; = "zoom"

.field public static final MAX_CONTINUOUS_PIC:I = 0x6

.field public static final MAX_FACE_NUM:I = 0x5

.field public static final MAX_PIXEL_COUNT:I = 0x200000

.field public static final OLA_BLINK_DATA_SIZE_BYTE:I = 0xc

.field public static final OLA_BLINK_DATA_SIZE_SHORT:I = 0x6

.field public static final OLA_CONTINOUS_FILE_1:Ljava/lang/String; = "/data/media/ola-cont-1.jpg"

.field public static final OLA_CONTINOUS_FILE_2:Ljava/lang/String; = "/data/media/ola-cont-2.jpg"

.field public static final OLA_CONTINOUS_FILE_3:Ljava/lang/String; = "/data/media/ola-cont-3.jpg"

.field public static final OLA_CONTINOUS_FILE_4:Ljava/lang/String; = "/data/media/ola-cont-4.jpg"

.field public static final OLA_CONTINOUS_FILE_5:Ljava/lang/String; = "/data/media/ola-cont-5.jpg"

.field public static final OLA_CONTINOUS_FILE_6:Ljava/lang/String; = "/data/media/ola-cont-6.jpg"

.field public static final OLA_DATA_HEADER_SIZE_BYTE:I = 0x8

.field public static final OLA_DATA_HEADER_SIZE_SHORT:I = 0x4

.field public static final OLA_ENGINE_FILE:Ljava/lang/String; = "/data/data/com.lge.camera/ola-fifo"

.field public static final OLA_FACE_DATA_SIZE_BYTE:I = 0x8

.field public static final OLA_FACE_DATA_SIZE_SHORT:I = 0x4

.field public static final OLA_FACE_THUMB_1:Ljava/lang/String; = "/data/media/ola-fd-1.jpg"

.field public static final OLA_FACE_THUMB_2:Ljava/lang/String; = "/data/media/ola-fd-2.jpg"

.field public static final OLA_FACE_THUMB_3:Ljava/lang/String; = "/data/media/ola-fd-3.jpg"

.field public static final OLA_FACE_THUMB_4:Ljava/lang/String; = "/data/media/ola-fd-4.jpg"

.field public static final OLA_FACE_THUMB_5:Ljava/lang/String; = "/data/media/ola-fd-5.jpg"

.field public static final OLA_FD_DATA_FILENAME:Ljava/lang/String; = "/data/media/ola-fd.dat"

.field public static final OLA_FIFO_DATA_MAX_SIZE_BYTE:I = 0x50

.field public static final OLA_FIFO_DATA_MAX_SIZE_SHORT:I = 0x28

.field public static final OLA_PANORAMA_FILENAME:Ljava/lang/String; = "/data/media/ola-panorama.jpg"

.field public static final OLA_SMILE_DATA_SIZE_BYTE:I = 0xc

.field public static final OLA_SMILE_DATA_SIZE_SHORT:I = 0x6

.field public static final OLA_SNOW_DATA_FILENAME:Ljava/lang/String; = "/data/media/ola-snow.dat"

.field public static final PREVIEW_ISP_SIZE_HEIGHT:I = 0x1e0

.field public static final PREVIEW_ISP_SIZE_WIDTH:I = 0x280

.field public static final PREVIEW_SIZE_HEIGHT:I = 0x1e0

.field public static final PREVIEW_SIZE_WIDTH:I = 0x280


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/data/media/ola-fd-1.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/data/media/ola-fd-2.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/data/media/ola-fd-3.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/data/media/ola-fd-4.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/data/media/ola-fd-5.jpg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/olaworks/define/LGT_Limit;->FdFilename:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
