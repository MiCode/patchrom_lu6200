.class final Landroid/opengl/EGLReal3DProfile$1;
.super Ljava/lang/Object;
.source "EGLReal3DProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/EGLReal3DProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/opengl/EGLReal3DProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/opengl/EGLReal3DProfile;
    .locals 3
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    .line 52
    new-instance v0, Landroid/opengl/EGLReal3DProfile;

    invoke-direct {v0}, Landroid/opengl/EGLReal3DProfile;-><init>()V

    .line 53
    .local v0, p:Landroid/opengl/EGLReal3DProfile;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, v0, Landroid/opengl/EGLReal3DProfile;->mIsEnable:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/opengl/EGLReal3DProfile;->mQuality:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/opengl/EGLReal3DProfile;->mType:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/opengl/EGLReal3DProfile;->mRefDepth:F

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/opengl/EGLReal3DProfile;->mDepthScale:F

    .line 58
    return-object v0

    .line 53
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/opengl/EGLReal3DProfile$1;->createFromParcel(Landroid/os/Parcel;)Landroid/opengl/EGLReal3DProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/opengl/EGLReal3DProfile;
    .locals 1
    .parameter "size"

    .prologue
    .line 61
    new-array v0, p1, [Landroid/opengl/EGLReal3DProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/opengl/EGLReal3DProfile$1;->newArray(I)[Landroid/opengl/EGLReal3DProfile;

    move-result-object v0

    return-object v0
.end method
