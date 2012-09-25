.class public Lcom/android/settings_ex/GestureTilt;
.super Landroid/app/Activity;
.source "GestureTilt.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field count:I

.field divide:I

.field end:F

.field private icon:Landroid/widget/ImageView;

.field private mAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/view/View;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSm:Landroid/hardware/SensorManager;

.field private mTextView:Landroid/widget/TextView;

.field private move:Z

.field private myVib:Landroid/os/Vibrator;

.field private navigation0:Landroid/widget/ImageView;

.field private navigation1:Landroid/widget/ImageView;

.field private navigation2:Landroid/widget/ImageView;

.field private page:I

.field start:F

.field value:I

.field private vf:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput v2, p0, Lcom/android/settings_ex/GestureTilt;->start:F

    .line 49
    iput v2, p0, Lcom/android/settings_ex/GestureTilt;->end:F

    .line 50
    iput v1, p0, Lcom/android/settings_ex/GestureTilt;->value:I

    .line 51
    iput v3, p0, Lcom/android/settings_ex/GestureTilt;->count:I

    .line 52
    iput v3, p0, Lcom/android/settings_ex/GestureTilt;->divide:I

    .line 53
    iput v1, p0, Lcom/android/settings_ex/GestureTilt;->page:I

    .line 54
    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    .line 55
    iput-boolean v1, p0, Lcom/android/settings_ex/GestureTilt;->move:Z

    .line 59
    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->navigation0:Landroid/widget/ImageView;

    .line 60
    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->navigation1:Landroid/widget/ImageView;

    .line 61
    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->navigation2:Landroid/widget/ImageView;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/android/settings_ex/GestureTilt$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/GestureTilt$1;-><init>(Lcom/android/settings_ex/GestureTilt;)V

    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/GestureTilt;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/GestureTilt;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/GestureTilt;)Landroid/os/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/GestureTilt;->myVib:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/GestureTilt;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/settings_ex/GestureTilt;->move:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/GestureTilt;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/GestureTilt;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 137
    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureTilt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    .line 140
    invoke-direct {p0}, Lcom/android/settings_ex/GestureTilt;->setDefaultSettings()V

    .line 142
    return-void
.end method

.method private next()V
    .locals 6

    .prologue
    const v5, 0x7f050005

    const/high16 v3, 0x7f05

    const/16 v4, 0xa

    .line 154
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    .line 155
    .local v1, childId:I
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    .line 157
    .local v0, childCount:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/GestureTilt;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 161
    iget v2, p0, Lcom/android/settings_ex/GestureTilt;->value:I

    packed-switch v2, :pswitch_data_0

    .line 188
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 189
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 190
    iput v4, p0, Lcom/android/settings_ex/GestureTilt;->divide:I

    .line 197
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 198
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/GestureTilt;->setAnimationView(I)V

    .line 199
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/GestureTilt;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    :cond_0
    return-void

    .line 163
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f050004

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 164
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f050009

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 165
    const/16 v2, 0xe

    iput v2, p0, Lcom/android/settings_ex/GestureTilt;->divide:I

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f050002

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 169
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f050007

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 170
    const/16 v2, 0xc

    iput v2, p0, Lcom/android/settings_ex/GestureTilt;->divide:I

    goto :goto_0

    .line 173
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 174
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 175
    iput v4, p0, Lcom/android/settings_ex/GestureTilt;->divide:I

    goto :goto_0

    .line 178
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f050003

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 179
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f050008

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 180
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/settings_ex/GestureTilt;->divide:I

    goto/16 :goto_0

    .line 183
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f050001

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 184
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f050006

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 185
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/settings_ex/GestureTilt;->divide:I

    goto/16 :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private previous()V
    .locals 6

    .prologue
    const v5, 0x7f05000f

    const v3, 0x7f05000a

    const/16 v4, 0xa

    .line 205
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    .line 206
    .local v1, childId:I
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    .line 208
    .local v0, childCount:I
    if-eqz v1, :cond_0

    .line 209
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/GestureTilt;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 212
    iget v2, p0, Lcom/android/settings_ex/GestureTilt;->value:I

    packed-switch v2, :pswitch_data_0

    .line 239
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 240
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 241
    iput v4, p0, Lcom/android/settings_ex/GestureTilt;->divide:I

    .line 250
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 251
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/GestureTilt;->setAnimationView(I)V

    .line 252
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/GestureTilt;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    :cond_0
    return-void

    .line 214
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f05000e

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 215
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f050013

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 216
    const/16 v2, 0xe

    iput v2, p0, Lcom/android/settings_ex/GestureTilt;->divide:I

    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f05000c

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 220
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f050011

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 221
    const/16 v2, 0xc

    iput v2, p0, Lcom/android/settings_ex/GestureTilt;->divide:I

    goto :goto_0

    .line 224
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 225
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 226
    iput v4, p0, Lcom/android/settings_ex/GestureTilt;->divide:I

    goto :goto_0

    .line 229
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f05000d

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 230
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f050012

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 231
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/settings_ex/GestureTilt;->divide:I

    goto/16 :goto_0

    .line 234
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f05000b

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 235
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->vf:Landroid/widget/ViewFlipper;

    const v3, 0x7f050010

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 236
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/settings_ex/GestureTilt;->divide:I

    goto/16 :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setAnimationView(II)V
    .locals 1
    .parameter "id"
    .parameter "drawable"

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/GestureTilt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->mImageView:Landroid/view/View;

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/GestureTilt;->mImageView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/GestureTilt;->mImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 276
    return-void
.end method

.method private setDefaultSettings()V
    .locals 2

    .prologue
    .line 144
    const v1, 0x7f0b00b3

    .line 145
    .local v1, id:I
    const v0, 0x7f02007e

    .line 149
    .local v0, drawable:I
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/GestureTilt;->setAnimationView(II)V

    .line 150
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 316
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f040053

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureTilt;->setContentView(I)V

    .line 77
    const v0, 0x7f080722

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureTilt;->setTitle(I)V

    .line 78
    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureTilt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->navigation0:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureTilt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->navigation1:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureTilt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->navigation2:Landroid/widget/ImageView;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/GestureTilt;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "value"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/GestureTilt;->value:I

    .line 83
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureTilt;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->mSm:Landroid/hardware/SensorManager;

    .line 84
    const v0, 0x7f0b00c6

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureTilt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->mTextView:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureTilt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->icon:Landroid/widget/ImageView;

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/GestureTilt;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    .line 87
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureTilt;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings_ex/GestureTilt;->myVib:Landroid/os/Vibrator;

    .line 88
    invoke-direct {p0}, Lcom/android/settings_ex/GestureTilt;->initView()V

    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/GestureTilt;->icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings_ex/GestureTilt$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/GestureTilt$2;-><init>(Lcom/android/settings_ex/GestureTilt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/GestureTilt;->move:Z

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/GestureTilt;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/GestureTilt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080701

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/GestureTilt;->mSm:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/GestureTilt;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GestureTilt;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 133
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/GestureTilt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/GestureTilt;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/GestureTilt;->mSm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings_ex/GestureTilt;->mSm:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 124
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x0

    const/16 v6, -0x14

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, panningX:I
    iget v1, p0, Lcom/android/settings_ex/GestureTilt;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/GestureTilt;->count:I

    .line 323
    const-string v1, "JJJJJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/settings_ex/GestureTilt;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v1, p0, Lcom/android/settings_ex/GestureTilt;->count:I

    iget v2, p0, Lcom/android/settings_ex/GestureTilt;->divide:I

    if-ge v1, v2, :cond_0

    .line 359
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    float-to-int v0, v1

    .line 328
    iget-boolean v1, p0, Lcom/android/settings_ex/GestureTilt;->move:Z

    if-eqz v1, :cond_1

    .line 329
    if-ge v0, v6, :cond_2

    iget v1, p0, Lcom/android/settings_ex/GestureTilt;->page:I

    if-nez v1, :cond_2

    .line 330
    invoke-direct {p0}, Lcom/android/settings_ex/GestureTilt;->next()V

    .line 331
    iput v4, p0, Lcom/android/settings_ex/GestureTilt;->page:I

    .line 333
    const-string v1, "JJJJJ"

    const-string v2, "next"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_1
    :goto_1
    iput v7, p0, Lcom/android/settings_ex/GestureTilt;->count:I

    goto :goto_0

    .line 335
    :cond_2
    if-ge v0, v6, :cond_3

    iget v1, p0, Lcom/android/settings_ex/GestureTilt;->page:I

    if-ne v1, v4, :cond_3

    .line 336
    invoke-direct {p0}, Lcom/android/settings_ex/GestureTilt;->next()V

    .line 337
    iput v5, p0, Lcom/android/settings_ex/GestureTilt;->page:I

    .line 339
    const-string v1, "JJJJJ"

    const-string v2, "next"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 342
    :cond_3
    if-le v0, v8, :cond_4

    iget v1, p0, Lcom/android/settings_ex/GestureTilt;->page:I

    if-ne v1, v5, :cond_4

    .line 343
    invoke-direct {p0}, Lcom/android/settings_ex/GestureTilt;->previous()V

    .line 344
    iput v4, p0, Lcom/android/settings_ex/GestureTilt;->page:I

    .line 346
    const-string v1, "JJJJJ"

    const-string v2, "previous"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 349
    :cond_4
    if-le v0, v8, :cond_1

    iget v1, p0, Lcom/android/settings_ex/GestureTilt;->page:I

    if-ne v1, v4, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/android/settings_ex/GestureTilt;->previous()V

    .line 351
    iput v7, p0, Lcom/android/settings_ex/GestureTilt;->page:I

    .line 353
    const-string v1, "JJJJJ"

    const-string v2, "previous"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method setAnimationView(I)V
    .locals 5
    .parameter "viewId"

    .prologue
    const v4, 0x7f020072

    const v3, 0x7f020073

    .line 281
    packed-switch p1, :pswitch_data_0

    .line 304
    const v1, 0x7f0b00b3

    .line 305
    .local v1, id:I
    const v0, 0x7f02007e

    .line 306
    .local v0, drawable:I
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->navigation0:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->navigation1:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->navigation2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/GestureTilt;->setAnimationView(II)V

    .line 311
    return-void

    .line 283
    .end local v0           #drawable:I
    .end local v1           #id:I
    :pswitch_0
    const v1, 0x7f0b00b3

    .line 284
    .restart local v1       #id:I
    const v0, 0x7f02007e

    .line 285
    .restart local v0       #drawable:I
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->navigation0:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->navigation1:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->navigation2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 290
    .end local v0           #drawable:I
    .end local v1           #id:I
    :pswitch_1
    const v1, 0x7f0b00c4

    .line 291
    .restart local v1       #id:I
    const v0, 0x7f02007c

    .line 292
    .restart local v0       #drawable:I
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->navigation0:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->navigation1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->navigation2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 297
    .end local v0           #drawable:I
    .end local v1           #id:I
    :pswitch_2
    const v1, 0x7f0b00c5

    .line 298
    .restart local v1       #id:I
    const v0, 0x7f02007d

    .line 299
    .restart local v0       #drawable:I
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->navigation0:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->navigation1:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    iget-object v2, p0, Lcom/android/settings_ex/GestureTilt;->navigation2:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 259
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    .line 262
    :cond_0
    return-void
.end method

.method protected stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 265
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 268
    :cond_0
    return-void
.end method
