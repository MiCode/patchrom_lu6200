.class Lcom/android/settings_ex/Display$1;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/Display;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/Display;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/Display$1;->this$0:Lcom/android/settings_ex/Display;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "av"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/Display$1;->this$0:Lcom/android/settings_ex/Display;

    #getter for: Lcom/android/settings_ex/Display;->mCurConfig:Landroid/content/res/Configuration;
    invoke-static {v0}, Lcom/android/settings_ex/Display;->access$000(Lcom/android/settings_ex/Display;)Landroid/content/res/Configuration;

    move-result-object v0

    const/high16 v1, 0x3f40

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/Display$1;->this$0:Lcom/android/settings_ex/Display;

    #calls: Lcom/android/settings_ex/Display;->updateFontScale()V
    invoke-static {v0}, Lcom/android/settings_ex/Display;->access$100(Lcom/android/settings_ex/Display;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/Display$1;->this$0:Lcom/android/settings_ex/Display;

    #getter for: Lcom/android/settings_ex/Display;->mCurConfig:Landroid/content/res/Configuration;
    invoke-static {v0}, Lcom/android/settings_ex/Display;->access$000(Lcom/android/settings_ex/Display;)Landroid/content/res/Configuration;

    move-result-object v0

    const/high16 v1, 0x3fa0

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/Display$1;->this$0:Lcom/android/settings_ex/Display;

    #getter for: Lcom/android/settings_ex/Display;->mCurConfig:Landroid/content/res/Configuration;
    invoke-static {v0}, Lcom/android/settings_ex/Display;->access$000(Lcom/android/settings_ex/Display;)Landroid/content/res/Configuration;

    move-result-object v0

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "av"

    .prologue
    .line 130
    return-void
.end method
