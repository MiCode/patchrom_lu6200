.class public Lcom/lge/olaworks/define/Ola_Exif$Compression;
.super Ljava/lang/Object;
.source "Ola_Exif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/olaworks/define/Ola_Exif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Compression"
.end annotation


# static fields
.field public static final JPEG:I = 0x6

.field public static final UNCOMP:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/lge/olaworks/define/Ola_Exif;


# direct methods
.method public constructor <init>(Lcom/lge/olaworks/define/Ola_Exif;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/lge/olaworks/define/Ola_Exif$Compression;->this$0:Lcom/lge/olaworks/define/Ola_Exif;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
