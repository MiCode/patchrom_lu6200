.class Lcom/android/settings_ex/widget/ChartDataUsageView$2;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/ChartDataUsageView;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/settings_ex/widget/ChartSweepView;Z)V
    .locals 1
    .parameter "sweep"
    .parameter "sweepDone"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #calls: Lcom/android/settings_ex/widget/ChartDataUsageView;->updatePrimaryRange()V
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$300(Lcom/android/settings_ex/widget/ChartDataUsageView;)V

    .line 309
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$400(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$400(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;->onInspectRangeChanged()V

    .line 312
    :cond_0
    return-void
.end method

.method public requestEdit(Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 0
    .parameter "sweep"

    .prologue
    .line 317
    return-void
.end method
