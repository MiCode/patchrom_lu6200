.class public Lcom/lge/camera/postview/ThumbnailGalleryItem;
.super Landroid/widget/RelativeLayout;
.source "ThumbnailGalleryItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private mCheckbox:Landroid/widget/ImageView;

.field private mChecked:Z

.field private mIndex:I

.field private mThumbnail:Lcom/lge/camera/components/RotateImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;IIZILjava/lang/String;)V
    .locals 6
    .parameter "contex"
    .parameter "number"
    .parameter "thumb"
    .parameter "width"
    .parameter "height"
    .parameter "hasCheckbox"
    .parameter "orientation"
    .parameter "shotMode"

    .prologue
    const/4 v5, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-boolean v5, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mChecked:Z

    .line 36
    const-string v2, "THUMB_%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, tagKey:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setTag(Ljava/lang/Object;)V

    .line 38
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created ThumbnailGalleryItem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with tag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-direct {v2, p1}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    .line 41
    iget-object v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    if-nez v2, :cond_1

    .line 42
    const-string v2, "CameraApp"

    const-string v3, " mThumbnail is null."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const v2, 0x7f0a0004

    invoke-static {p1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 48
    .local v1, thumb_padding:I
    iget-object v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, p3}, Lcom/lge/camera/components/RotateImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    const v3, 0x7f02015b

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 50
    iget-object v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    new-instance v3, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v3, p4, p5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/lge/camera/components/RotateImageButton;->setPadding(IIII)V

    .line 52
    iget-object v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateImageButton;->setFocusable(Z)V

    .line 73
    invoke-virtual {p0, v5}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setClipChildren(Z)V

    .line 74
    invoke-virtual {p0, v5}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setClipToPadding(Z)V

    .line 76
    iput p2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mIndex:I

    .line 77
    iget-object v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {p0, v2}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->addView(Landroid/view/View;)V

    .line 79
    if-eqz p6, :cond_0

    .line 80
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    .line 82
    iget-object v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    if-nez v2, :cond_2

    .line 83
    const-string v2, "CameraApp"

    const-string v3, " mCheckbox is null."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 90
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->addView(Landroid/view/View;)V

    .line 92
    iget-object v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mChecked:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mChecked:Z

    .line 25
    return-void
.end method


# virtual methods
.method public getCheckboxVisibility()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 146
    :cond_0
    return v0
.end method

.method public getChecked()Z
    .locals 3

    .prologue
    .line 113
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thumbnail item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", checked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-boolean v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mChecked:Z

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mIndex:I

    return v0
.end method

.method public getThumbnailView()Lcom/lge/camera/components/RotateImageButton;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    return-object v0
.end method

.method public setCheck(Z)V
    .locals 2
    .parameter "check"

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->getCheckboxVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 100
    iput-boolean p1, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mChecked:Z

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 110
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->getCheckboxVisibility()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 106
    iput-boolean p1, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mChecked:Z

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    const v1, 0x7f02015c

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setThumbSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 154
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThumbnailGalleryItem : width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 156
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    iget-object v1, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-void
.end method

.method public showCheckbox(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 127
    :cond_0
    if-eqz p1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-boolean v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setCheck(Z)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iput-boolean v2, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mChecked:Z

    .line 134
    iget-object v0, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    const-string v1, "CameraApp"

    const-string v2, "ThumbnailGalleryItem unbind()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 170
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 172
    iget-object v1, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mThumbnail:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 178
    iget-object v1, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 179
    iget-object v1, p0, Lcom/lge/camera/postview/ThumbnailGalleryItem;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method
