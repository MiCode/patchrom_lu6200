.class public Lcom/lge/camera/components/CameraHelpTable;
.super Landroid/widget/TableLayout;
.source "CameraHelpTable.java"


# instance fields
.field mChildList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TableRow;",
            ">;"
        }
    .end annotation
.end field

.field mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraHelpTable;->mChildList:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method private createTable()V
    .locals 5

    .prologue
    .line 29
    iget-object v3, p0, Lcom/lge/camera/components/CameraHelpTable;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    invoke-virtual {v3}, Lcom/lge/camera/adapter/HelpItemAdapter;->getCount()I

    move-result v1

    .line 37
    .local v1, mCount:I
    const/4 v2, 0x0

    .local v2, position:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 38
    iget-object v3, p0, Lcom/lge/camera/components/CameraHelpTable;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 39
    .local v0, child:Landroid/widget/TableRow;
    if-nez v0, :cond_1

    .line 46
    .end local v0           #child:Landroid/widget/TableRow;
    :cond_0
    return-void

    .line 43
    .restart local v0       #child:Landroid/widget/TableRow;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/components/CameraHelpTable;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p0, v0, v2}, Lcom/lge/camera/components/CameraHelpTable;->addView(Landroid/view/View;I)V

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFocusedView(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/camera/components/CameraHelpTable;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public setAdapter(Lcom/lge/camera/adapter/HelpItemAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lge/camera/components/CameraHelpTable;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    .line 24
    iget-object v0, p0, Lcom/lge/camera/components/CameraHelpTable;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 25
    invoke-direct {p0}, Lcom/lge/camera/components/CameraHelpTable;->createTable()V

    .line 26
    return-void
.end method
