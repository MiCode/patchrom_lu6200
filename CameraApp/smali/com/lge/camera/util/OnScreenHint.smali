.class public Lcom/lge/camera/util/OnScreenHint;
.super Ljava/lang/Object;
.source "OnScreenHint.java"


# static fields
.field static final BOTTOM_PADDING_RATE_OF_SCREEN:F = 0.2f

.field static final GRAVITY_LANDSCAPE:I = 0x51

.field static final GRAVITY_PORTRAIT:I = 0x15

.field static final GRAVITY_REVERSE_LANDSCAPE:I = 0x31

.field static final GRAVITY_REVERSE_PORTRAIT:I = 0x13

.field static final LOCAL_LOGV:Z = false

.field public static final ORIENTATION_LANDSCAPE:I = 0x0

.field public static final ORIENTATION_LANDSCAPE_OPPOSITE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_PORTRAIT_OPPOSITE:I = 0x3

.field static final TAG:Ljava/lang/String; = "CameraApp"

.field static mLastMessage:Ljava/lang/String;


# instance fields
.field final mContext:Landroid/content/Context;

.field mGravity:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mLcdSizeHeight:I

.field mLcdSizeWidth:I

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mShow:Ljava/lang/Runnable;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field private final mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, ""

    sput-object v0, Lcom/lge/camera/util/OnScreenHint;->mLastMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x2

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v1, 0x51

    iput v1, p0, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    .line 70
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 73
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mHandler:Landroid/os/Handler;

    .line 278
    new-instance v1, Lcom/lge/camera/util/OnScreenHint$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/util/OnScreenHint$1;-><init>(Lcom/lge/camera/util/OnScreenHint;)V

    iput-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mShow:Ljava/lang/Runnable;

    .line 284
    new-instance v1, Lcom/lge/camera/util/OnScreenHint$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/util/OnScreenHint$2;-><init>(Lcom/lge/camera/util/OnScreenHint;)V

    iput-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mHide:Ljava/lang/Runnable;

    .line 84
    iput-object p1, p0, Lcom/lge/camera/util/OnScreenHint;->mContext:Landroid/content/Context;

    .line 85
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mWM:Landroid/view/WindowManager;

    .line 87
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 88
    .local v0, outMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mWM:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 90
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeWidth:I

    .line 91
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeHeight:I

    .line 93
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x18

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 97
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 98
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x7f0c0007

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 99
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x3e8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 100
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "OnScreenHint"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/util/OnScreenHint;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/camera/util/OnScreenHint;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/util/OnScreenHint;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/camera/util/OnScreenHint;->handleHide()V

    return-void
.end method

.method public static changeOrientation(Landroid/content/Context;I)Lcom/lge/camera/util/OnScreenHint;
    .locals 2
    .parameter "context"
    .parameter "orientation"

    .prologue
    .line 198
    sget-object v1, Lcom/lge/camera/util/OnScreenHint;->mLastMessage:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/lge/camera/util/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    .line 199
    .local v0, hint:Lcom/lge/camera/util/OnScreenHint;
    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->show()V

    .line 200
    return-object v0
.end method

.method private declared-synchronized handleHide()V
    .locals 2

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 274
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_1
    monitor-exit p0

    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleShow()V
    .locals 5

    .prologue
    const v4, 0x3e4ccccd

    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mNextView:Landroid/view/View;

    if-eq v2, v3, :cond_3

    .line 224
    invoke-direct {p0}, Lcom/lge/camera/util/OnScreenHint;->handleHide()V

    .line 225
    iget-object v2, p0, Lcom/lge/camera/util/OnScreenHint;->mNextView:Landroid/view/View;

    iput-object v2, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    .line 226
    iget v1, p0, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    .line 227
    .local v1, gravity:I
    iget-object v2, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 228
    and-int/lit8 v2, v1, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 230
    iget-object v2, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 232
    :cond_0
    and-int/lit8 v2, v1, 0x70

    const/16 v3, 0x70

    if-ne v2, v3, :cond_1

    .line 234
    iget-object v2, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 237
    :cond_1
    iget v2, p0, Lcom/lge/camera/util/OnScreenHint;->mGravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v2, :sswitch_data_0

    .line 254
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lge/camera/util/OnScreenHint;->mVerticalMargin:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 255
    iget-object v2, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lge/camera/util/OnScreenHint;->mHorizontalMargin:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 256
    iget-object v2, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/lge/camera/util/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 259
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/util/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    .end local v1           #gravity:I
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 240
    .restart local v1       #gravity:I
    :sswitch_0
    :try_start_2
    iget-object v2, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 222
    .end local v1           #gravity:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 245
    .restart local v1       #gravity:I
    :sswitch_1
    :try_start_3
    iget-object v2, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "OnScreenHint display failed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x15 -> :sswitch_1
        0x31 -> :sswitch_0
        0x51 -> :sswitch_0
    .end sparse-switch
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/lge/camera/util/OnScreenHint;
    .locals 1
    .parameter "context"
    .parameter "text"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lge/camera/util/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/lge/camera/util/OnScreenHint;
    .locals 7
    .parameter "context"
    .parameter "text"
    .parameter "orientation"

    .prologue
    .line 157
    new-instance v1, Lcom/lge/camera/util/OnScreenHint;

    invoke-direct {v1, p0}, Lcom/lge/camera/util/OnScreenHint;-><init>(Landroid/content/Context;)V

    .line 159
    .local v1, result:Lcom/lge/camera/util/OnScreenHint;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 160
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v5, 0x7f030011

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 161
    .local v4, v:Landroid/view/View;
    const v5, 0x7f09007d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 162
    .local v3, tv:Landroid/widget/TextView;
    const v5, 0x7f09007f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 163
    .local v2, rl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/lge/camera/util/OnScreenHint;->mLastMessage:Ljava/lang/String;

    .line 164
    sget-object v5, Lcom/lge/camera/util/OnScreenHint;->mLastMessage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    packed-switch p2, :pswitch_data_0

    .line 183
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 184
    const/16 v5, 0x51

    iput v5, v1, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    .line 189
    :goto_0
    iput-object v4, v1, Lcom/lge/camera/util/OnScreenHint;->mNextView:Landroid/view/View;

    .line 191
    return-object v1

    .line 168
    :pswitch_0
    const/16 v5, 0x5a

    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 169
    const/16 v5, 0x15

    iput v5, v1, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    goto :goto_0

    .line 173
    :pswitch_1
    const/16 v5, 0xb4

    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 174
    const/16 v5, 0x31

    iput v5, v1, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    goto :goto_0

    .line 178
    :pswitch_2
    const/16 v5, 0x10e

    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 179
    const/16 v5, 0x13

    iput v5, v1, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method

.method public cancelImmediately()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/lge/camera/util/OnScreenHint;->handleHide()V

    .line 132
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 210
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mNextView:Landroid/view/View;

    const v2, 0x7f09007d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 214
    .local v0, tv:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 215
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setView must have been called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method public showImmediately()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setView must have been called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/util/OnScreenHint;->handleShow()V

    .line 125
    return-void
.end method
