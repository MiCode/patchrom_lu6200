.class Lcom/android/settings_ex/widget/ChartDataUsageView$3;
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
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/settings_ex/widget/ChartSweepView;Z)V
    .locals 2
    .parameter "sweep"
    .parameter "sweepDone"

    .prologue
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #calls: Lcom/android/settings_ex/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/settings_ex/widget/ChartSweepView;)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$500(Lcom/android/settings_ex/widget/ChartDataUsageView;Lcom/android/settings_ex/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #calls: Lcom/android/settings_ex/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$100(Lcom/android/settings_ex/widget/ChartDataUsageView;)V

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$600(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$400(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$400(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$700(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$400(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$400(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    const/4 v1, 0x0

    #calls: Lcom/android/settings_ex/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/settings_ex/widget/ChartSweepView;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$200(Lcom/android/settings_ex/widget/ChartDataUsageView;Lcom/android/settings_ex/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public requestEdit(Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 1
    .parameter "sweep"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$600(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$400(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$400(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$700(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$400(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    #getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$400(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    goto :goto_0
.end method
