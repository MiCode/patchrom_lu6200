.class Lcom/android/settings_ex/DataUsageSummary$9;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1232
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1233
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary$AppUsageItem;

    .local v0, app:Lcom/android/settings_ex/DataUsageSummary$AppUsageItem;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$2100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/UidDetailProvider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary$AppUsageItem;->uids:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/settings_ex/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings_ex/net/UidDetail;

    move-result-object v2

    .local v2, detail:Lcom/android/settings_ex/net/UidDetail;
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary$AppUsageItem;->uids:[I

    iget-object v5, v2, Lcom/android/settings_ex/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/settings_ex/DataUsageSummary;[ILjava/lang/CharSequence;)V

    .end local v2           #detail:Lcom/android/settings_ex/net/UidDetail;
    :cond_0
    return-void
.end method
