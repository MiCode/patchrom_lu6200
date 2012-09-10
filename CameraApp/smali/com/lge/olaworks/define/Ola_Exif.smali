.class public Lcom/lge/olaworks/define/Ola_Exif;
.super Ljava/lang/Object;
.source "Ola_Exif.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/olaworks/define/Ola_Exif$ThumbNailSize;,
        Lcom/lge/olaworks/define/Ola_Exif$Tag;,
        Lcom/lge/olaworks/define/Ola_Exif$Format;,
        Lcom/lge/olaworks/define/Ola_Exif$Section;,
        Lcom/lge/olaworks/define/Ola_Exif$ResolutionUnit;,
        Lcom/lge/olaworks/define/Ola_Exif$Positioning;,
        Lcom/lge/olaworks/define/Ola_Exif$Compression;
    }
.end annotation


# static fields
.field public static final GPS_VER:I = 0x20200000

.field public static final INTEROP_INDEX_STR:Ljava/lang/String; = "R98"

.field public static final INTEROP_VER:I = 0x30313030

.field public static final MAKE_STR:Ljava/lang/String; = "LG Electronics"

.field public static final MAP_DATUM:Ljava/lang/String; = "WGS-84"

.field public static final MODEL_STR:Ljava/lang/String; = null

.field public static final NONE:I = 0x0

.field public static final X_RESOL_DPI:I = 0x48

.field public static final Y_RESOL_DPI:I = 0x48


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/lge/olaworks/define/Ola_Exif;->MODEL_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method
