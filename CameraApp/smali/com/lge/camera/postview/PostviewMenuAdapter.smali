.class public Lcom/lge/camera/postview/PostviewMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PostviewMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final resId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "textViewResId"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, extendItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, images:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mDataList:Ljava/util/List;

    .line 27
    iput-object p4, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mExtendList:Ljava/util/List;

    .line 28
    iput p2, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->resId:I

    .line 29
    iput-object p5, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mImages:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 35
    move-object v2, p2

    .line 37
    .local v2, itemView:Landroid/view/View;
    if-nez v2, :cond_0

    .line 38
    iget-object v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 39
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->resId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 41
    new-instance v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;

    invoke-direct {v0, p0}, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;-><init>(Lcom/lge/camera/postview/PostviewMenuAdapter;)V

    .line 42
    .local v0, holder:Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;
    const v3, 0x7f09004d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->mImage:Landroid/widget/ImageView;

    .line 43
    const v3, 0x7f09004e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuName:Landroid/widget/TextView;

    .line 44
    const v3, 0x7f09004f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuExtendName:Landroid/widget/TextView;

    .line 46
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->mImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mImages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object v4, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mExtendList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 54
    iget-object v4, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuExtendName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mExtendList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v3, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuExtendName:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :goto_1
    return-object v2

    .line 48
    .end local v0           #holder:Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;

    .restart local v0       #holder:Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;
    goto :goto_0

    .line 58
    :cond_1
    iget-object v3, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuExtendName:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
