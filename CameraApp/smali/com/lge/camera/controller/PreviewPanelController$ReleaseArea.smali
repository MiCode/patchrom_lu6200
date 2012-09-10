.class Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewPanelController;
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

.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;


# direct methods
.method public constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;IIII)V
    .locals 0
    .parameter
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p2, p0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mLeft:I

    .line 95
    iput p3, p0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mTop:I

    .line 96
    iput p4, p0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mRight:I

    .line 97
    iput p5, p0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mBottom:I

    .line 98
    return-void
.end method
