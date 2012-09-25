.class Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;

.field final synthetic val$cycleDayPicker:Landroid/widget/NumberPicker;

.field final synthetic val$editor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/android/settings_ex/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings_ex/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1875
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;

    iput-object p2, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iput-object p4, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1878
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 1880
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1882
    .local v0, cycleDay:I
    if-eqz v0, :cond_0

    .line 1883
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;I)V

    .line 1884
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v2, 0x1

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1400(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 1886
    :cond_0
    return-void
.end method
