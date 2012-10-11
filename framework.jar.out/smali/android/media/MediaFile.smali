.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;,
        Landroid/media/MediaFile$AVTypeList;
    }
.end annotation


# static fields
.field private static AVTypeCount:I = 0x0

.field public static final FILE_TYPE_3GPA:I = 0xb

.field public static final FILE_TYPE_3GPP:I = 0x18

.field public static final FILE_TYPE_3GPP2:I = 0x19

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AC3:I = 0xc

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_ASF:I = 0x1b

.field public static final FILE_TYPE_AVI:I = 0x1e

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x29

.field public static final FILE_TYPE_DASH:I = 0x30

.field public static final FILE_TYPE_DCF:I = 0x35

.field public static final FILE_TYPE_DCI:I = 0x2bc

.field public static final FILE_TYPE_DIVX:I = 0x20

.field public static final FILE_TYPE_DM:I = 0x34

.field public static final FILE_TYPE_DMB:I = 0x258

.field public static final FILE_TYPE_EVRC:I = 0x1f5

.field public static final FILE_TYPE_FL:I = 0x33

.field public static final FILE_TYPE_FLAC:I = 0xa

.field public static final FILE_TYPE_FLV:I = 0xcd

.field public static final FILE_TYPE_GIF:I = 0x27

.field public static final FILE_TYPE_HTML:I = 0x65

.field public static final FILE_TYPE_HTTPLIVE:I = 0x2f

.field public static final FILE_TYPE_IMY:I = 0x15

.field public static final FILE_TYPE_ISMA:I = 0x11

.field public static final FILE_TYPE_ISMV:I = 0x22

.field public static final FILE_TYPE_JPEG:I = 0x26

.field public static final FILE_TYPE_K3G:I = 0xca

.field public static final FILE_TYPE_M3U:I = 0x2c

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4B:I = 0xf

.field public static final FILE_TYPE_M4V:I = 0x17

.field public static final FILE_TYPE_MID:I = 0x13

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1c

.field public static final FILE_TYPE_MOV:I = 0xce

.field public static final FILE_TYPE_MP2:I = 0x1f6

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1d

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x16

.field public static final FILE_TYPE_MS_EXCEL:I = 0x69

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x6a

.field public static final FILE_TYPE_MS_WORD:I = 0x68

.field public static final FILE_TYPE_O4A:I = 0x38

.field public static final FILE_TYPE_O4I:I = 0x39

.field public static final FILE_TYPE_O4V:I = 0x37

.field public static final FILE_TYPE_ODF:I = 0x36

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_OGM:I = 0xcf

.field public static final FILE_TYPE_OGV:I = 0xc9

.field public static final FILE_TYPE_PCM:I = 0x12

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PLS:I = 0x2d

.field public static final FILE_TYPE_PNG:I = 0x28

.field public static final FILE_TYPE_PYA:I = 0x10

.field public static final FILE_TYPE_PYV:I = 0x21

.field public static final FILE_TYPE_QCELP:I = 0x1f4

.field public static final FILE_TYPE_QCP:I = 0xd

.field public static final FILE_TYPE_SKM:I = 0xcb

.field public static final FILE_TYPE_SMF:I = 0x14

.field public static final FILE_TYPE_TEXT:I = 0x64

.field public static final FILE_TYPE_TP:I = 0xcc

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x2a

.field public static final FILE_TYPE_WEBM:I = 0x1f

.field public static final FILE_TYPE_WEBMA:I = 0xe

.field public static final FILE_TYPE_WEBP:I = 0x2b

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x1a

.field public static final FILE_TYPE_WPL:I = 0x2e

.field public static final FILE_TYPE_XML:I = 0x67

.field public static final FILE_TYPE_ZIP:I = 0x6b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_AUDIO_FILE_TYPE_LGE:I = 0x1f4

.field private static final FIRST_DRM_FILE_TYPE:I = 0x33

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x26

.field private static final FIRST_IMAGE_FILE_TYPE_LGE:I = 0x2bc

.field private static final FIRST_MIDI_FILE_TYPE:I = 0x13

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x2c

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x16

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final FIRST_VIDEO_FILE_TYPE_LGE:I = 0x258

.field private static final LAST_AUDIO_FILE_TYPE:I = 0x12

.field private static final LAST_AUDIO_FILE_TYPE_LGE:I = 0x1f6

.field private static final LAST_DRM_FILE_TYPE:I = 0x39

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x2b

.field private static final LAST_IMAGE_FILE_TYPE_LGE:I = 0x2bc

.field private static final LAST_MIDI_FILE_TYPE:I = 0x15

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x30

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x22

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xcf

.field private static final LAST_VIDEO_FILE_TYPE_LGE:I = 0x258

.field private static build_id:Ljava/lang/String;

.field private static error:I

.field private static sAVTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaFile$AVTypeList;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_TYPE_APE:I = 0x3e9

.field private static final FIRST_FFMPEG_AUDIO_FILE_TYPE:I = 0x3e9

.field private static final LAST_FFMPEG_AUDIO_FILE_TYPE:I = 0x3e9


.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static socinfo:[C

.field private static socinfo_fd:Ljava/io/FileReader;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x16

    const/16 v7, 0x300b

    const/16 v6, 0x18

    const v5, 0xb984

    const/16 v4, 0x13

    .line 162
    const/4 v0, 0x0

    sput v0, Landroid/media/MediaFile;->AVTypeCount:I

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    .line 180
    const/16 v0, 0x14

    new-array v0, v0, [C

    sput-object v0, Landroid/media/MediaFile;->socinfo:[C

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 302
    const-string v0, "MP3"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    const/16 v3, 0x3009

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 303
    const-string v0, "M4A"

    const/4 v1, 0x2

    const-string v2, "audio/mp4"

    invoke-static {v0, v1, v2, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 304
    const-string v0, "WAV"

    const/4 v1, 0x3

    const-string v2, "audio/x-wav"

    const/16 v3, 0x3008

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 306
    const-string v0, "WAV"

    const/16 v1, 0x12

    const-string v2, "audio/wav"

    const/16 v3, 0x3008

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 307
    const-string v0, "AMR"

    const/4 v1, 0x4

    const-string v2, "audio/amr"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    const-string v0, "AWB"

    const/4 v1, 0x5

    const-string v2, "audio/amr-wb"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DIVX"

    const/16 v1, 0x20

    const-string v2, "video/divx"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V


    const-string v0, "WMA"

    const/4 v1, 0x6

    const-string v2, "audio/x-ms-wma"

    const v3, 0xb901

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 313
    :cond_0
    const-string v0, "QCP"

    const/16 v1, 0xd

    const-string v2, "audio/qcp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    const-string v0, "OGG"

    const/4 v1, 0x7

    const-string v2, "application/ogg"

    const v3, 0xb902

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 315
    const-string v0, "OGA"

    const/4 v1, 0x7

    const-string v2, "application/ogg"

    const v3, 0xb902

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 316
    const-string v0, "WEBM"

    const/16 v1, 0xe

    const-string v2, "audio/webm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 317
    const-string v0, "AAC"

    const/16 v1, 0x8

    const-string v2, "audio/aac"

    const v3, 0xb903

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 318
    const-string v0, "AAC"

    const/16 v1, 0x8

    const-string v2, "audio/aac-adts"

    const v3, 0xb903

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 320
    const-string v0, "M4B"

    const/16 v1, 0xf

    const-string v2, "audio/mp4"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    const-string v0, "ISMA"

    const/16 v1, 0x11

    const-string v2, "audio/mp4"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    const-string v0, "PYA"

    const/16 v1, 0x10

    const-string v2, "audio/vnd.ms-playready.media.pya"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 324
    const-string v0, "MKA"

    const/16 v1, 0x9

    const-string v2, "audio/x-matroska"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    const-string v0, "3GPP"

    const/16 v1, 0xb

    const-string v2, "audio/3gpp"

    invoke-static {v0, v1, v2, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 326
    const-string v0, "3GA"

    const/16 v1, 0xb

    const-string v2, "audio/3gpp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    const-string v0, "MID"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    const-string v0, "MIDI"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    const-string v0, "XMF"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 330
    const-string v0, "RTTTL"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 331
    const-string v0, "SMF"

    const/16 v1, 0x14

    const-string v2, "audio/sp-midi"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 332
    const-string v0, "IMY"

    const/16 v1, 0x15

    const-string v2, "audio/imelody"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    const-string v0, "RTX"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    const-string v0, "OTA"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 335
    const-string v0, "MXMF"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 337
    const-string v0, "QCP"

    const/16 v1, 0x1f4

    const-string v2, "audio/qcelp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    const-string v0, "EVRC"

    const/16 v1, 0x1f5

    const-string v2, "audio/evrc"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    const-string v0, "MP2"

    const/16 v1, 0x1f5

    const-string v2, "audio/mpeg"

    const v3, 0xb983

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "SKM"

    const/16 v1, 0xcb

    const-string v2, "video/skm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "K3G"

    const/16 v1, 0xca

    const-string v2, "video/k3g"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V


    const-string v0, "APE"

    const/16 v1, 0x3e9

    const-string v2, "audio/x-monkeys-audio"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V



    const-string v0, "MPEG"

    const-string v1, "video/mpeg"

    invoke-static {v0, v8, v1, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "MPG"

    const-string v1, "video/mpeg"

    invoke-static {v0, v8, v1, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "MP4"

    const-string v1, "video/mp4"

    const v2, 0xb982

    invoke-static {v0, v8, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "M4V"

    const/16 v1, 0x17

    const-string v2, "video/mp4"

    invoke-static {v0, v1, v2, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "ISMV"

    const/16 v1, 0x22

    const-string v2, "video/mp4"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "PYV"

    const/16 v1, 0x21

    const-string v2, "video/vnd.ms-playready.media.pyv"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "3GP"

    const-string v1, "video/3gpp"

    invoke-static {v0, v6, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "3GPP"

    const-string v1, "video/3gpp"

    invoke-static {v0, v6, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "3G2"

    const/16 v1, 0x19

    const-string v2, "video/3gpp2"

    invoke-static {v0, v1, v2, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "3GPP2"

    const/16 v1, 0x19

    const-string v2, "video/3gpp2"

    invoke-static {v0, v1, v2, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "MKV"

    const/16 v1, 0x1c

    const-string v2, "video/x-matroska"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WEBM"

    const/16 v1, 0x1f

    const-string v2, "video/webm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "TS"

    const/16 v1, 0x1d

    const-string v2, "video/mp2ts"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MPG"

    const/16 v1, 0x1d

    const-string v2, "video/mp2ts"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M2TS"

    const/16 v1, 0x1d

    const-string v2, "video/mpeg"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OGV"

    const/16 v1, 0xc9

    const-string v2, "video/ogg"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "TP"

    const/16 v1, 0xcc

    const-string v2, "video/mpeg"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AVI"

    const/16 v1, 0x1e

    const-string v2, "video/avi"

    const/16 v3, 0x300a

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "DIVX"

    const/16 v1, 0x20

    const-string v2, "video/divx"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "FLV"

    const/16 v1, 0xcd

    const-string v2, "video/flv"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MOV"

    const/16 v1, 0xce

    const-string v2, "video/mov"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OGM"

    const/16 v1, 0xcf

    const-string v2, "video/ogm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "F4V"

    const/16 v1, 0xcd

    const-string v2, "video/flv"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "SKM"

    const-string v1, "video/skm"

    invoke-static {v0, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "K3G"

    const-string v1, "video/k3g"

    invoke-static {v0, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WMV"

    const/16 v1, 0x1a

    const-string v2, "video/x-ms-wmv"

    const v3, 0xb981

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "ASF"

    const/16 v1, 0x1b

    const-string v2, "video/x-ms-asf"

    const/16 v3, 0x300c

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    :cond_1
    const-string v0, "DMB"

    const/16 v1, 0x258

    const-string v2, "video/dmb"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "JPG"

    const/16 v1, 0x26

    const-string v2, "image/jpeg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "JPEG"

    const/16 v1, 0x26

    const-string v2, "image/jpeg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "GIF"

    const/16 v1, 0x27

    const-string v2, "image/gif"

    const/16 v3, 0x3807

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "PNG"

    const/16 v1, 0x28

    const-string v2, "image/png"

    const/16 v3, 0x380b

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "BMP"

    const/16 v1, 0x29

    const-string v2, "image/x-ms-bmp"

    const/16 v3, 0x3804

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "WBMP"

    const/16 v1, 0x2a

    const-string v2, "image/vnd.wap.wbmp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WEBP"

    const/16 v1, 0x2b

    const-string v2, "image/webp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DCI"

    const/16 v1, 0x2bc

    const-string v2, "image/dci"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M3U"

    const/16 v1, 0x2c

    const-string v2, "audio/x-mpegurl"

    const v3, 0xba11

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 400
    const-string v0, "M3U"

    const/16 v1, 0x2c

    const-string v2, "application/x-mpegurl"

    const v3, 0xba11

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 401
    const-string v0, "PLS"

    const/16 v1, 0x2d

    const-string v2, "audio/x-scpls"

    const v3, 0xba14

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 402
    const-string v0, "WPL"

    const/16 v1, 0x2e

    const-string v2, "application/vnd.ms-wpl"

    const v3, 0xba10

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 403
    const-string v0, "M3U8"

    const/16 v1, 0x2f

    const-string v2, "application/vnd.apple.mpegurl"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 404
    const-string v0, "M3U8"

    const/16 v1, 0x2f

    const-string v2, "audio/mpegurl"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 405
    const-string v0, "M3U8"

    const/16 v1, 0x2f

    const-string v2, "audio/x-mpegurl"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 406
    const-string v0, "MPD"

    const/16 v1, 0x30

    const-string v2, "application/dash+xml"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 408
    const-string v0, "FL"

    const/16 v1, 0x33

    const-string v2, "application/x-android-drm-fl"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 410
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v0, :cond_2

    .line 411
    const-string v0, "DM"

    const/16 v1, 0x34

    const-string v2, "application/vnd.oma.drm.message"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 412
    const-string v0, "DCF"

    const/16 v1, 0x35

    const-string v2, "application/vnd.oma.drm.content"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 414
    const-string v0, "ODF"

    const/16 v1, 0x36

    const-string v2, "application/vnd.oma.drm.dcf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    const-string v0, "O4A"

    const/16 v1, 0x38

    const-string v2, "application/vnd.oma.drm.dcf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    const-string v0, "O4V"

    const/16 v1, 0x37

    const-string v2, "application/vnd.oma.drm.dcf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 417
    const-string v0, "O4I"

    const/16 v1, 0x39

    const-string v2, "application/vnd.oma.drm.dcf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 421
    :cond_2
    const-string v0, "TXT"

    const/16 v1, 0x64

    const-string/jumbo v2, "text/plain"

    const/16 v3, 0x3004

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 422
    const-string v0, "HTM"

    const/16 v1, 0x65

    const-string/jumbo v2, "text/html"

    const/16 v3, 0x3005

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 423
    const-string v0, "HTML"

    const/16 v1, 0x65

    const-string/jumbo v2, "text/html"

    const/16 v3, 0x3005

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 424
    const-string v0, "PDF"

    const/16 v1, 0x66

    const-string v2, "application/pdf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 425
    const-string v0, "DOC"

    const/16 v1, 0x68

    const-string v2, "application/msword"

    const v3, 0xba83

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 426
    const-string v0, "XLS"

    const/16 v1, 0x69

    const-string v2, "application/vnd.ms-excel"

    const v3, 0xba85

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 427
    const-string v0, "PPT"

    const/16 v1, 0x6a

    const-string v2, "application/mspowerpoint"

    const v3, 0xba86

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 428
    const-string v0, "FLAC"

    const/16 v1, 0xa

    const-string v2, "audio/flac"

    const v3, 0xb906

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 429
    const-string v0, "ZIP"

    const/16 v1, 0x6b

    const-string v2, "application/zip"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 430
    const-string v0, "MPG"

    const/16 v1, 0xc8

    const-string/jumbo v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 431
    const-string v0, "MPEG"

    const/16 v1, 0xc8

    const-string/jumbo v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 432
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 193
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 218
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {p1}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    sget-object v0, Landroid/media/MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    sget v1, Landroid/media/MediaFile;->AVTypeCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/media/MediaFile;->AVTypeCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/MediaFile$AVTypeList;

    invoke-direct {v2, p1, p2, p0}, Landroid/media/MediaFile$AVTypeList;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_1
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "mtpFormatCode"

    .prologue
    .line 228
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 229
    sget-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {p1}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    sget-object v0, Landroid/media/MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    sget v1, Landroid/media/MediaFile;->AVTypeCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/media/MediaFile;->AVTypeCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/MediaFile$AVTypeList;

    invoke-direct {v2, p1, p2, p0}, Landroid/media/MediaFile$AVTypeList;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_1
    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 570
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 571
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 572
    add-int/lit8 v1, v1, 0x1

    .line 573
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 574
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 578
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 579
    .local v0, lastDot:I
    if-lez v0, :cond_1

    .line 580
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 582
    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 3
    .parameter "path"

    .prologue
    .line 476
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 477
    .local v0, lastDot:I
    if-gez v0, :cond_0

    .line 478
    const/4 v1, 0x0

    .line 479
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFile$MediaFileType;

    goto :goto_0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 586
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 587
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getFileTypeFromDrm(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 13
    .parameter "path"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 484
    sget-boolean v8, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-nez v8, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-object v7

    .line 487
    :cond_1
    invoke-static {v10, p0, v7}, Lcom/lge/lgdrm/DrmManager;->isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 491
    const-string v8, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 492
    .local v4, lastDot:I
    if-ltz v4, :cond_0

    .line 495
    sget-object v8, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaFile$MediaFileType;

    .line 496
    .local v5, mediaType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v5, :cond_0

    .line 499
    iget v8, v5, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v9, 0x34

    if-lt v8, v9, :cond_0

    iget v8, v5, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v9, 0x39

    if-gt v8, v9, :cond_0

    .line 502
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    .line 508
    :try_start_0
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContent;->getContentType(Ljava/lang/String;)I

    move-result v1

    .line 510
    .local v1, contentType:I
    const/4 v8, 0x2

    invoke-static {p0, v8}, Lcom/lge/lgdrm/DrmContent;->getContentInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, extension:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eq v1, v12, :cond_2

    if-eq v1, v10, :cond_2

    if-ne v1, v11, :cond_0

    .line 520
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 522
    sget-object v8, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaFile$MediaFileType;

    .line 523
    .local v6, orgMediaType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v6, :cond_0

    .line 528
    if-ne v1, v12, :cond_3

    .line 529
    new-instance v8, Landroid/media/MediaFile$MediaFileType;

    iget v9, v6, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iget-object v10, v5, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    move-object v7, v8

    goto :goto_0

    .line 531
    :cond_3
    if-ne v1, v10, :cond_4

    iget v8, v6, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 532
    new-instance v8, Landroid/media/MediaFile$MediaFileType;

    iget v9, v6, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iget-object v10, v5, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    move-object v7, v8

    goto :goto_0

    .line 533
    :cond_4
    if-ne v1, v11, :cond_5

    iget v8, v6, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 534
    new-instance v8, Landroid/media/MediaFile$MediaFileType;

    iget v9, v6, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iget-object v10, v5, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    move-object v7, v8

    goto/16 :goto_0

    .line 539
    :cond_5
    sget-object v8, Landroid/media/MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 540
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 542
    .local v0, avType:Landroid/media/MediaFile$AVTypeList;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 543
    sget-object v8, Landroid/media/MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #avType:Landroid/media/MediaFile$AVTypeList;
    check-cast v0, Landroid/media/MediaFile$AVTypeList;

    .line 544
    .restart local v0       #avType:Landroid/media/MediaFile$AVTypeList;
    iget-object v8, v0, Landroid/media/MediaFile$AVTypeList;->extension:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 545
    if-ne v1, v10, :cond_7

    iget v8, v0, Landroid/media/MediaFile$AVTypeList;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 546
    new-instance v8, Landroid/media/MediaFile$MediaFileType;

    iget v9, v0, Landroid/media/MediaFile$AVTypeList;->fileType:I

    iget-object v10, v5, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    move-object v7, v8

    goto/16 :goto_0

    .line 547
    :cond_7
    if-ne v1, v11, :cond_6

    iget v8, v0, Landroid/media/MediaFile$AVTypeList;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 548
    new-instance v8, Landroid/media/MediaFile$MediaFileType;

    iget v9, v0, Landroid/media/MediaFile$AVTypeList;->fileType:I

    iget-object v10, v5, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    goto/16 :goto_0

    .line 553
    .end local v0           #avType:Landroid/media/MediaFile$AVTypeList;
    .end local v1           #contentType:I
    .end local v2           #extension:Ljava/lang/String;
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v6           #orgMediaType:Landroid/media/MediaFile$MediaFileType;
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 596
    if-eqz p1, :cond_0

    .line 597
    sget-object v3, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 598
    .local v2, value:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 599
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 610
    .end local v2           #value:Ljava/lang/Integer;
    :goto_0
    return v3

    .line 602
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 603
    .local v1, lastDot:I
    if-lez v1, :cond_1

    .line 604
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, extension:Ljava/lang/String;
    sget-object v3, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 606
    .restart local v2       #value:Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 607
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 610
    .end local v0           #extension:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/Integer;
    :cond_1
    const/16 v3, 0x3000

    goto :goto_0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 591
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 592
    .local v0, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 2
    .parameter "formatCode"

    .prologue
    .line 614
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isAudioFileType(I)Z
    .locals 3
    .parameter "fileType"

    .prologue
    const/16 v2, 0x3e9

    const/4 v0, 0x1

    .line 435
    if-lt p0, v0, :cond_0

    const/16 v1, 0x12

    if-le p0, v1, :cond_2

    :cond_0
    const/16 v1, 0x13

    if-lt p0, v1, :cond_1

    const/16 v1, 0x15

    if-le p0, v1, :cond_2

    :cond_1
    const/16 v1, 0x1f4

    if-lt p0, v1, :cond_3

    const/16 v1, 0x1f6

    if-gt p0, v1, :cond_4

    goto :goto_0
    
    :cond_4
    if-lt p0, v2, :cond_3

    if-gt p0, v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 471
    const/16 v0, 0x33

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageFileType(I)Z
    .locals 2
    .parameter "fileType"

    .prologue
    const/16 v1, 0x2bc

    .line 457
    const/16 v0, 0x26

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2b

    if-le p0, v0, :cond_1

    :cond_0
    if-lt p0, v1, :cond_2

    if-gt p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 562
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 563
    .local v0, fileType:I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 466
    const/16 v0, 0x2c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x30

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 2
    .parameter "fileType"

    .prologue
    const/16 v1, 0x258

    .line 446
    const/16 v0, 0x16

    if-lt p0, v0, :cond_0

    const/16 v0, 0x22

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_1

    const/16 v0, 0xcf

    if-le p0, v0, :cond_2

    :cond_1
    if-lt p0, v1, :cond_3

    if-gt p0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWMAEnabled()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 240
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v2

    .line 242
    .local v2, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/devices/system/soc/soc0/build_id"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    sput-object v7, Landroid/media/MediaFile;->socinfo_fd:Ljava/io/FileReader;

    .line 243
    sget-object v7, Landroid/media/MediaFile;->socinfo_fd:Ljava/io/FileReader;

    sget-object v8, Landroid/media/MediaFile;->socinfo:[C

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    sput v7, Landroid/media/MediaFile;->error:I

    .line 244
    sget v7, Landroid/media/MediaFile;->error:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 245
    const-string v7, "MediaFile"

    const-string v8, "error in reading from build_id file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    sget-object v7, Landroid/media/MediaFile;->socinfo_fd:Ljava/io/FileReader;

    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    new-instance v7, Ljava/lang/String;

    sget-object v8, Landroid/media/MediaFile;->socinfo:[C

    const/16 v9, 0x11

    invoke-direct {v7, v8, v9, v6}, Ljava/lang/String;-><init>([CII)V

    sput-object v7, Landroid/media/MediaFile;->build_id:Ljava/lang/String;

    .line 251
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 252
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 253
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 254
    .local v1, decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v7, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v1, v7, :cond_4

    .line 255
    const-string/jumbo v7, "msm7630_surf"

    const-string/jumbo v8, "ro.board.platform"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 256
    sget-object v7, Landroid/media/MediaFile;->build_id:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 267
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_1
    :goto_2
    return v5

    .line 247
    .end local v0           #count:I
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 248
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "MediaFile"

    const-string v8, "Exception in FileReader"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v1       #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    .restart local v4       #i:I
    :cond_2
    move v5, v6

    .line 260
    goto :goto_2

    :cond_3
    move v5, v6

    .line 263
    goto :goto_2

    .line 252
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private static isWMVEnabled()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 271
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v2

    .line 273
    .local v2, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/devices/system/soc/soc0/build_id"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    sput-object v7, Landroid/media/MediaFile;->socinfo_fd:Ljava/io/FileReader;

    .line 274
    sget-object v7, Landroid/media/MediaFile;->socinfo_fd:Ljava/io/FileReader;

    sget-object v8, Landroid/media/MediaFile;->socinfo:[C

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    sput v7, Landroid/media/MediaFile;->error:I

    .line 275
    sget v7, Landroid/media/MediaFile;->error:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 276
    const-string v7, "MediaFile"

    const-string v8, "error in reading from build_id file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    sget-object v7, Landroid/media/MediaFile;->socinfo_fd:Ljava/io/FileReader;

    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    new-instance v7, Ljava/lang/String;

    sget-object v8, Landroid/media/MediaFile;->socinfo:[C

    const/16 v9, 0x11

    invoke-direct {v7, v8, v9, v6}, Ljava/lang/String;-><init>([CII)V

    sput-object v7, Landroid/media/MediaFile;->build_id:Ljava/lang/String;

    .line 282
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 283
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 284
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 285
    .local v1, decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v7, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v1, v7, :cond_4

    .line 286
    const-string/jumbo v7, "msm7630_surf"

    const-string/jumbo v8, "ro.board.platform"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 287
    sget-object v7, Landroid/media/MediaFile;->build_id:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 298
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_1
    :goto_2
    return v5

    .line 278
    .end local v0           #count:I
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 279
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "MediaFile"

    const-string v8, "Exception in FileReader"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v1       #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    .restart local v4       #i:I
    :cond_2
    move v5, v6

    .line 291
    goto :goto_2

    :cond_3
    move v5, v6

    .line 294
    goto :goto_2

    .line 283
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
