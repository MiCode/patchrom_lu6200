.class public Lcom/lge/olaworks/define/Ola_Exif$Format;
.super Ljava/lang/Object;
.source "Ola_Exif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/olaworks/define/Ola_Exif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Format"
.end annotation


# static fields
.field public static final FMT_BYTE:I = 0x1

.field public static final FMT_DOUBLE:I = 0xc

.field public static final FMT_SBYTE:I = 0x6

.field public static final FMT_SINGLE:I = 0xb

.field public static final FMT_SLONG:I = 0x9

.field public static final FMT_SRATIONAL:I = 0xa

.field public static final FMT_SSHORT:I = 0x8

.field public static final FMT_STRING:I = 0x2

.field public static final FMT_ULONG:I = 0x4

.field public static final FMT_UNDEFINED:I = 0x7

.field public static final FMT_URATIONAL:I = 0x5

.field public static final FMT_USHORT:I = 0x3

.field public static final NUM_FORMATS:I = 0xc


# instance fields
.field final synthetic this$0:Lcom/lge/olaworks/define/Ola_Exif;


# direct methods
.method public constructor <init>(Lcom/lge/olaworks/define/Ola_Exif;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lge/olaworks/define/Ola_Exif$Format;->this$0:Lcom/lge/olaworks/define/Ola_Exif;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
