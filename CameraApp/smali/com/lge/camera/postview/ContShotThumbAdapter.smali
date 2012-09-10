.class public Lcom/lge/camera/postview/ContShotThumbAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContShotThumbAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field public THUMB_IMAGE_HEIGHT:I

.field public THUMB_IMAGE_WIDTH:I

.field private mContShotThumbAdapterContext:Landroid/content/Context;

.field private mHasCheckBox:Z

.field private mInMultiSelectMode:Z

.field private mSelectedIndex:I

.field private mSelectedIndexs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShotmode:Ljava/lang/String;

.field public mThumb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTumbnailVisible:Z

.field private thisOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    .line 31
    iput v1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->thisOrientation:I

    .line 32
    iput-object v2, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mContShotThumbAdapterContext:Landroid/content/Context;

    .line 33
    const-string v0, "shotmode_continuous"

    iput-object v0, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mShotmode:Ljava/lang/String;

    .line 135
    iput-boolean v1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mInMultiSelectMode:Z

    .line 136
    iput-object v2, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mSelectedIndexs:Ljava/util/ArrayList;

    .line 137
    iput v1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mSelectedIndex:I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mTumbnailVisible:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIZLjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "hasCheckBox"
    .parameter "orientation"
    .parameter "multiSelectMode"
    .parameter "shotMode"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lge/camera/postview/ContShotThumbAdapter;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mContShotThumbAdapterContext:Landroid/content/Context;

    .line 41
    iput-boolean p2, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mHasCheckBox:Z

    .line 42
    iput-boolean p4, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mInMultiSelectMode:Z

    .line 43
    iput p3, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->thisOrientation:I

    .line 44
    iput-object p5, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mShotmode:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->thisOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->thisOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 46
    :cond_0
    const v0, 0x7f0a01b2

    invoke-static {p1, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->THUMB_IMAGE_WIDTH:I

    .line 47
    const v0, 0x7f0a01b3

    invoke-static {p1, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->THUMB_IMAGE_HEIGHT:I

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_1
    const v0, 0x7f0a01b4

    invoke-static {p1, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->THUMB_IMAGE_WIDTH:I

    .line 50
    const v0, 0x7f0a01b5

    invoke-static {p1, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->THUMB_IMAGE_HEIGHT:I

    goto :goto_0
.end method

.method private makeImageView(III)Landroid/widget/ImageView;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "visible"

    .prologue
    .line 128
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mContShotThumbAdapterContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, imageView:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 132
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, -0x1

    .line 66
    .local v0, tempVal:I
    return v0
.end method

.method public getHasCheck()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mHasCheckBox:Z

    return v0
.end method

.method public getIsMultiSelectMode()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mInMultiSelectMode:Z

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 76
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mSelectedIndex:I

    return v0
.end method

.method public getSelectedIndexs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mSelectedIndexs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x4

    const/4 v11, 0x0

    const/4 v4, 0x1

    .line 80
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThumbAdapter getView(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/postview/ContShotThumbAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    if-eqz p2, :cond_0

    .line 123
    .end local p2
    :goto_0
    return-object p2

    .line 85
    .restart local p2
    :cond_0
    rem-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 86
    iget v1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->THUMB_IMAGE_HEIGHT:I

    invoke-direct {p0, v4, v1, v5}, Lcom/lge/camera/postview/ContShotThumbAdapter;->makeImageView(III)Landroid/widget/ImageView;

    move-result-object p2

    goto :goto_0

    .line 88
    :cond_1
    const/4 v10, 0x0

    .line 91
    .local v10, item:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v2, p1, 0x2

    if-gt v1, v2, :cond_2

    .line 92
    iget v1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->THUMB_IMAGE_WIDTH:I

    iget v2, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->THUMB_IMAGE_HEIGHT:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/camera/postview/ContShotThumbAdapter;->makeImageView(III)Landroid/widget/ImageView;

    move-result-object p2

    goto :goto_0

    .line 94
    :cond_2
    new-instance v0, Lcom/lge/camera/postview/ThumbnailGalleryItem;

    iget-object v1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mContShotThumbAdapterContext:Landroid/content/Context;

    div-int/lit8 v2, p1, 0x2

    iget-object v3, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    div-int/lit8 v4, p1, 0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->THUMB_IMAGE_WIDTH:I

    iget v5, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->THUMB_IMAGE_HEIGHT:I

    const/4 v6, 0x1

    iget v7, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->thisOrientation:I

    iget-object v8, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mShotmode:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/lge/camera/postview/ThumbnailGalleryItem;-><init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;IIZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    .end local v10           #item:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    .local v0, item:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/camera/postview/ContShotThumbAdapter;->getIsMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->showCheckbox(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/lge/camera/postview/ContShotThumbAdapter;->getSelectedIndexs()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/postview/ContShotThumbAdapter;->getSelectedIndexs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setCheck(Z)V

    .line 113
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mTumbnailVisible:Z

    if-eqz v1, :cond_5

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setVisibility(I)V

    .line 118
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setFocusable(Z)V

    move-object p2, v0

    .line 123
    goto :goto_0

    .line 108
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/postview/ContShotThumbAdapter;->getSelectedIndex()I

    move-result v1

    div-int/lit8 v2, p1, 0x2

    if-ne v1, v2, :cond_3

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setCheck(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 119
    :catch_0
    move-exception v9

    .line 120
    .local v9, e:Ljava/lang/Exception;
    :goto_3
    const-string v1, "CameraApp"

    const-string v2, "getView exception"

    invoke-static {v1, v2, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    iget v1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->THUMB_IMAGE_WIDTH:I

    iget v2, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->THUMB_IMAGE_HEIGHT:I

    invoke-direct {p0, v1, v2, v11}, Lcom/lge/camera/postview/ContShotThumbAdapter;->makeImageView(III)Landroid/widget/ImageView;

    move-result-object p2

    goto/16 :goto_0

    .line 116
    .end local v9           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v1, 0x4

    :try_start_2
    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 119
    .end local v0           #item:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    .restart local v10       #item:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    :catch_1
    move-exception v9

    move-object v0, v10

    .end local v10           #item:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    .restart local v0       #item:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    goto :goto_3
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 166
    const-string v0, "CameraApp"

    const-string v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 168
    return-void
.end method

.method public setIsMultiSelectMode(Z)V
    .locals 0
    .parameter "multiSelectMode"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mInMultiSelectMode:Z

    .line 145
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 0
    .parameter "selectedIndex"

    .prologue
    .line 151
    iput p1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mSelectedIndex:I

    .line 152
    return-void
.end method

.method public setSelectedIndexs(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, selectedIndexs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mSelectedIndexs:Ljava/util/ArrayList;

    .line 159
    return-void
.end method

.method public setThumbSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 55
    iput p1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->THUMB_IMAGE_WIDTH:I

    .line 56
    iput p2, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->THUMB_IMAGE_HEIGHT:I

    .line 57
    return-void
.end method

.method public setThumbnailVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mTumbnailVisible:Z

    .line 163
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mContShotThumbAdapterContext:Landroid/content/Context;

    .line 172
    return-void
.end method
