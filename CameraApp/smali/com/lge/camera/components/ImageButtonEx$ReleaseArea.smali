.class Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
.super Ljava/lang/Object;
.source "ImageButtonEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/ImageButtonEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReleaseArea"
.end annotation


# instance fields
.field public mBottom:I

.field public mLeft:I

.field public mRight:I

.field public mTop:I

.field final synthetic this$0:Lcom/lge/camera/components/ImageButtonEx;


# direct methods
.method public constructor <init>(Lcom/lge/camera/components/ImageButtonEx;IIII)V
    .locals 0
    .parameter
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->this$0:Lcom/lge/camera/components/ImageButtonEx;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p2, p0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mLeft:I

    .line 36
    iput p3, p0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mTop:I

    .line 37
    iput p4, p0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mRight:I

    .line 38
    iput p5, p0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mBottom:I

    .line 39
    return-void
.end method
