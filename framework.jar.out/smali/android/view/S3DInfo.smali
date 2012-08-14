.class public Landroid/view/S3DInfo;
.super Ljava/lang/Object;
.source "S3DInfo.java"


# instance fields
.field public disableAutoDetection:Z

.field public order:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Landroid/view/S3DInfo;->disableAutoDetection:Z

    .line 14
    iput v0, p0, Landroid/view/S3DInfo;->type:I

    .line 15
    iput v0, p0, Landroid/view/S3DInfo;->order:I

    .line 22
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 1
    .parameter "disableAutoDetection"
    .parameter "type"
    .parameter "order"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Landroid/view/S3DInfo;->disableAutoDetection:Z

    .line 14
    iput v0, p0, Landroid/view/S3DInfo;->type:I

    .line 15
    iput v0, p0, Landroid/view/S3DInfo;->order:I

    .line 29
    iput-boolean p1, p0, Landroid/view/S3DInfo;->disableAutoDetection:Z

    .line 30
    iput p2, p0, Landroid/view/S3DInfo;->type:I

    .line 31
    iput p3, p0, Landroid/view/S3DInfo;->order:I

    .line 32
    return-void
.end method
