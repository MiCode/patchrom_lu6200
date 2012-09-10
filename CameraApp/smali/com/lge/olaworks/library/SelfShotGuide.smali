.class public Lcom/lge/olaworks/library/SelfShotGuide;
.super Lcom/lge/olaworks/library/BaseEngine;
.source "SelfShotGuide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/olaworks/library/SelfShotGuide$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private final CENTERED_MAX:I

.field private mCallback:Lcom/lge/olaworks/library/SelfShotGuide$Callback;

.field private mCenteredCount:I


# direct methods
.method public constructor <init>(Lcom/lge/olaworks/library/SelfShotGuide$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lge/olaworks/library/BaseEngine;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/olaworks/library/SelfShotGuide;->mCenteredCount:I

    .line 15
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/olaworks/library/SelfShotGuide;->CENTERED_MAX:I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/library/SelfShotGuide;->mCallback:Lcom/lge/olaworks/library/SelfShotGuide$Callback;

    .line 26
    iput-object p1, p0, Lcom/lge/olaworks/library/SelfShotGuide;->mCallback:Lcom/lge/olaworks/library/SelfShotGuide$Callback;

    .line 27
    return-void
.end method

.method private processCaptureTime(I)Z
    .locals 3
    .parameter "dist"

    .prologue
    const/4 v0, 0x0

    .line 142
    if-eqz p1, :cond_1

    .line 143
    iput v0, p0, Lcom/lge/olaworks/library/SelfShotGuide;->mCenteredCount:I

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    iget v1, p0, Lcom/lge/olaworks/library/SelfShotGuide;->mCenteredCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/olaworks/library/SelfShotGuide;->mCenteredCount:I

    .line 149
    iget v1, p0, Lcom/lge/olaworks/library/SelfShotGuide;->mCenteredCount:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 150
    iput v0, p0, Lcom/lge/olaworks/library/SelfShotGuide;->mCenteredCount:I

    .line 151
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public create()I
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/lge/olaworks/jni/OlaSelfShotGuideAppJNI;->create()I

    move-result v0

    .line 41
    .local v0, retVal:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 45
    .end local v0           #retVal:I
    .local v1, retVal:I
    :goto_0
    return v1

    .line 44
    .end local v1           #retVal:I
    .restart local v0       #retVal:I
    :cond_0
    invoke-static {}, Lcom/lge/olaworks/jni/OlaSelfShotGuideAppJNI;->initialize()I

    move-result v0

    move v1, v0

    .line 45
    .end local v0           #retVal:I
    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method public destroy()I
    .locals 2

    .prologue
    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/olaworks/library/SelfShotGuide;->mCallback:Lcom/lge/olaworks/library/SelfShotGuide$Callback;

    .line 58
    invoke-static {}, Lcom/lge/olaworks/jni/OlaSelfShotGuideAppJNI;->destroy()I

    move-result v0

    .line 59
    .local v0, retVal:I
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "CameraApp"

    return-object v0
.end method

.method public processImage(Landroid/graphics/Bitmap;I)I
    .locals 1
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 81
    const/4 v0, -0x2

    return v0
.end method

.method public processImage(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I
    .locals 1
    .parameter "rawContext"

    .prologue
    .line 74
    const/4 v0, -0x2

    return v0
.end method

.method public processPreview(Landroid/graphics/Bitmap;I)I
    .locals 3
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 126
    invoke-static {p1, p2}, Lcom/lge/olaworks/jni/OlaSelfShotGuideAppJNI;->processFrameBitmap(Landroid/graphics/Bitmap;I)I

    move-result v1

    .line 128
    .local v1, retVal:I
    iget-object v2, p0, Lcom/lge/olaworks/library/SelfShotGuide;->mCallback:Lcom/lge/olaworks/library/SelfShotGuide$Callback;

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/lge/olaworks/library/SelfShotGuide;->mCallback:Lcom/lge/olaworks/library/SelfShotGuide$Callback;

    invoke-interface {v2, v1}, Lcom/lge/olaworks/library/SelfShotGuide$Callback;->onAlarmDistance(I)V

    .line 131
    invoke-direct {p0, v1}, Lcom/lge/olaworks/library/SelfShotGuide;->processCaptureTime(I)Z

    move-result v0

    .line 132
    .local v0, cap:Z
    if-eqz v0, :cond_0

    .line 133
    iget-object v2, p0, Lcom/lge/olaworks/library/SelfShotGuide;->mCallback:Lcom/lge/olaworks/library/SelfShotGuide$Callback;

    invoke-interface {v2}, Lcom/lge/olaworks/library/SelfShotGuide$Callback;->onCapture()V

    .line 134
    invoke-static {}, Lcom/lge/olaworks/jni/OlaSelfShotGuideAppJNI;->initialize()I

    .line 138
    .end local v0           #cap:Z
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public processPreview(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I
    .locals 3
    .parameter "rawContext"

    .prologue
    .line 97
    invoke-static {p1}, Lcom/lge/olaworks/jni/OlaSelfShotGuideAppJNI;->processFrameRaw(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I

    move-result v1

    .line 99
    .local v1, retVal:I
    iget-object v2, p0, Lcom/lge/olaworks/library/SelfShotGuide;->mCallback:Lcom/lge/olaworks/library/SelfShotGuide$Callback;

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/lge/olaworks/library/SelfShotGuide;->mCallback:Lcom/lge/olaworks/library/SelfShotGuide$Callback;

    invoke-interface {v2, v1}, Lcom/lge/olaworks/library/SelfShotGuide$Callback;->onAlarmDistance(I)V

    .line 102
    invoke-direct {p0, v1}, Lcom/lge/olaworks/library/SelfShotGuide;->processCaptureTime(I)Z

    move-result v0

    .line 103
    .local v0, cap:Z
    if-eqz v0, :cond_0

    .line 104
    iget-object v2, p0, Lcom/lge/olaworks/library/SelfShotGuide;->mCallback:Lcom/lge/olaworks/library/SelfShotGuide$Callback;

    invoke-interface {v2}, Lcom/lge/olaworks/library/SelfShotGuide$Callback;->onCapture()V

    .line 105
    invoke-static {}, Lcom/lge/olaworks/jni/OlaSelfShotGuideAppJNI;->initialize()I

    .line 109
    .end local v0           #cap:Z
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
