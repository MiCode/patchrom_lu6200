.class Landroid/widget/OverScroller$SplineOverScroller$FrameRate;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller$SplineOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameRate"
.end annotation


# instance fields
.field public frameCount:I

.field final synthetic this$0:Landroid/widget/OverScroller$SplineOverScroller;

.field public timePassed:J


# direct methods
.method public constructor <init>(Landroid/widget/OverScroller$SplineOverScroller;)V
    .locals 2
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->this$0:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 695
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameCount:I

    .line 696
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->timePassed:J

    .line 697
    return-void
.end method


# virtual methods
.method public getTimeDiff()F
    .locals 2

    .prologue
    .line 705
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->timePassed:J

    long-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameCount:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 700
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameCount:I

    .line 701
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->timePassed:J

    .line 702
    return-void
.end method
