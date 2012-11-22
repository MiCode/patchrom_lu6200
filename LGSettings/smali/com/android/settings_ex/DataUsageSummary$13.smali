.class Lcom/android/settings_ex/DataUsageSummary$13;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$13;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 2

    .prologue
    const-string v0, "DataUsage"

    const-string v1, "onInspectRangeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$13;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$2300(Lcom/android/settings_ex/DataUsageSummary;)V

    return-void
.end method

.method public onLimitChanged()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$13;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$13;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$800(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v1

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1600(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 1427
    return-void
.end method

.method public onWarningChanged()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$13;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$13;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$800(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v1

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$2900(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 1422
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    #calls: Lcom/android/settings_ex/DataUsageSummary;->getPopupdisable()Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$3000()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setPopupdisable(Z)V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$3100(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$13;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    :cond_0
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    #calls: Lcom/android/settings_ex/DataUsageSummary;->getPopupdisable()Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$3000()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setPopupdisable(Z)V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$3100(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$13;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    :cond_0
    return-void
.end method
