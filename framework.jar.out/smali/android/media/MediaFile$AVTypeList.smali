.class Landroid/media/MediaFile$AVTypeList;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AVTypeList"
.end annotation


# instance fields
.field extension:Ljava/lang/String;

.field fileType:I

.field mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "extension"

    .prologue
    .line 169
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput p1, p0, Landroid/media/MediaFile$AVTypeList;->fileType:I

    .line 171
    iput-object p2, p0, Landroid/media/MediaFile$AVTypeList;->mimeType:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Landroid/media/MediaFile$AVTypeList;->extension:Ljava/lang/String;

    .line 173
    return-void
.end method
