.class Lcom/android/settings_ex/GestureHelp$2;
.super Ljava/lang/Object;
.source "GestureHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/GestureHelp;->setButtonListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/GestureHelp;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/GestureHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings_ex/GestureHelp$2;->this$0:Lcom/android/settings_ex/GestureHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp$2;->this$0:Lcom/android/settings_ex/GestureHelp;

    #getter for: Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;
    invoke-static {v2}, Lcom/android/settings_ex/GestureHelp;->access$100(Lcom/android/settings_ex/GestureHelp;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    .line 259
    .local v1, childId:I
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp$2;->this$0:Lcom/android/settings_ex/GestureHelp;

    #getter for: Lcom/android/settings_ex/GestureHelp;->vf:Landroid/widget/ViewFlipper;
    invoke-static {v2}, Lcom/android/settings_ex/GestureHelp;->access$100(Lcom/android/settings_ex/GestureHelp;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    .line 260
    .local v0, childCount:I
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp$2;->this$0:Lcom/android/settings_ex/GestureHelp;

    #getter for: Lcom/android/settings_ex/GestureHelp;->PAGE_COUNT:I
    invoke-static {v2}, Lcom/android/settings_ex/GestureHelp;->access$200(Lcom/android/settings_ex/GestureHelp;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp$2;->this$0:Lcom/android/settings_ex/GestureHelp;

    invoke-virtual {v2}, Lcom/android/settings_ex/GestureHelp;->finish()V

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/GestureHelp$2;->this$0:Lcom/android/settings_ex/GestureHelp;

    #calls: Lcom/android/settings_ex/GestureHelp;->next()V
    invoke-static {v2}, Lcom/android/settings_ex/GestureHelp;->access$300(Lcom/android/settings_ex/GestureHelp;)V

    .line 264
    return-void
.end method
