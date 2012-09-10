.class public Lcom/lge/camera/components/ThumbnailController;
.super Ljava/lang/Object;
.source "ThumbnailController.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mButton:Landroid/widget/ImageView;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mResources:Landroid/content/res/Resources;

.field private mShouldAnimateThumb:Z

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbDefault:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resources"
    .parameter "button"
    .parameter "contentResolver"

    .prologue
    const v2, 0x7f02016c

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "CameraApp"

    iput-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->TAG:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    .line 61
    iput-object p3, p0, Lcom/lge/camera/components/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbDefault:Landroid/graphics/Bitmap;

    .line 63
    iput-object p2, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    return-void
.end method

.method private setupTransition(Landroid/graphics/Bitmap;Z)V
    .locals 11
    .parameter "source"
    .parameter "useTransition"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/lge/camera/components/ThumbnailController;->getThumbnailWidth()I

    move-result v2

    .line 132
    .local v2, miniThumbWidth:I
    invoke-virtual {p0}, Lcom/lge/camera/components/ThumbnailController;->getThumbnailHeight()I

    move-result v1

    .line 134
    .local v1, miniThumbHeight:I
    if-nez p1, :cond_0

    .line 135
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbDefault:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 136
    const-string v3, "CameraApp"

    const-string v4, "Set thumbnail empty"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_0
    if-eqz p2, :cond_2

    .line 146
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 147
    new-array v3, v10, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 148
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v9

    .line 149
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v8

    .line 150
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 151
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 152
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iput-boolean v8, p0, Lcom/lge/camera/components/ThumbnailController;->mShouldAnimateThumb:Z

    .line 160
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_2
    return-void

    .line 138
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "before Extract from bitmap"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {p1, v2, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 140
    const-string v3, "CameraApp"

    const-string v4, "after Extract from bitmap(%dx%d) to thumb(%dx%d)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v8

    aput-object v4, v3, v9

    .line 155
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v8

    .line 156
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 157
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 158
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    iput-boolean v8, p0, Lcom/lge/camera/components/ThumbnailController;->mShouldAnimateThumb:Z

    goto :goto_1

    .line 162
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    .line 163
    new-array v3, v10, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 165
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v9

    .line 166
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v9

    aput-object v4, v3, v8

    .line 167
    iput-boolean v9, p0, Lcom/lge/camera/components/ThumbnailController;->mShouldAnimateThumb:Z

    .line 168
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    const-string v1, "CameraApp"

    const-string v2, " memory free"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    :cond_0
    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 75
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbDefault:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    :cond_1
    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbDefault:Landroid/graphics/Bitmap;

    .line 80
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v0           #i:I
    :cond_2
    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 87
    return-void
.end method

.method public getThumbnailHeight()I
    .locals 4

    .prologue
    .line 125
    iget-object v2, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 126
    .local v1, param:Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 127
    .local v0, miniThumbHeight:I
    return v0
.end method

.method public getThumbnailWidth()I
    .locals 4

    .prologue
    .line 119
    iget-object v2, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 120
    .local v1, param:Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 121
    .local v0, miniThumbWidth:I
    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isUriValid()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 188
    :goto_0
    return v2

    .line 177
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mUri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 179
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 180
    const-string v3, "CameraApp"

    const-string v4, "Fail to open URI."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 185
    .local v0, ex:Ljava/io/IOException;
    const-string v3, "CameraApp"

    const-string v4, "IOException : "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 183
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setButton(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 91
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    const v1, 0x7f02016c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    return-void
.end method

.method public setData(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "uri"
    .parameter "original"
    .parameter "useTransition"

    .prologue
    .line 97
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 98
    :cond_0
    const/4 p1, 0x0

    .line 99
    const/4 p2, 0x0

    .line 102
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/components/ThumbnailController;->mUri:Landroid/net/Uri;

    .line 103
    invoke-direct {p0, p2, p3}, Lcom/lge/camera/components/ThumbnailController;->setupTransition(Landroid/graphics/Bitmap;Z)V

    .line 104
    return-void
.end method

.method public startTransition(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/lge/camera/components/ThumbnailController;->mShouldAnimateThumb:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/ThumbnailController;->mShouldAnimateThumb:Z

    .line 116
    :cond_0
    return-void
.end method
