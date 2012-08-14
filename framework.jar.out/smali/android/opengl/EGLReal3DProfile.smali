.class public final Landroid/opengl/EGLReal3DProfile;
.super Ljava/lang/Object;
.source "EGLReal3DProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/opengl/EGLReal3DProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDepthScale:F

.field public mIsEnable:Z

.field public mQuality:I

.field public mRefDepth:F

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Landroid/opengl/EGLReal3DProfile$1;

    invoke-direct {v0}, Landroid/opengl/EGLReal3DProfile$1;-><init>()V

    sput-object v0, Landroid/opengl/EGLReal3DProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, Landroid/opengl/EGLReal3DProfile;->mIsEnable:Z

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Landroid/opengl/EGLReal3DProfile;->mQuality:I

    .line 19
    iput v1, p0, Landroid/opengl/EGLReal3DProfile;->mType:I

    .line 20
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/opengl/EGLReal3DProfile;->mRefDepth:F

    .line 21
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/opengl/EGLReal3DProfile;->mDepthScale:F

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLReal3DProfile;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget-boolean v0, p1, Landroid/opengl/EGLReal3DProfile;->mIsEnable:Z

    iput-boolean v0, p0, Landroid/opengl/EGLReal3DProfile;->mIsEnable:Z

    .line 32
    iget v0, p1, Landroid/opengl/EGLReal3DProfile;->mQuality:I

    iput v0, p0, Landroid/opengl/EGLReal3DProfile;->mQuality:I

    .line 33
    iget v0, p1, Landroid/opengl/EGLReal3DProfile;->mType:I

    iput v0, p0, Landroid/opengl/EGLReal3DProfile;->mType:I

    .line 34
    iget v0, p1, Landroid/opengl/EGLReal3DProfile;->mRefDepth:F

    iput v0, p0, Landroid/opengl/EGLReal3DProfile;->mRefDepth:F

    .line 35
    iget v0, p1, Landroid/opengl/EGLReal3DProfile;->mDepthScale:F

    iput v0, p0, Landroid/opengl/EGLReal3DProfile;->mDepthScale:F

    .line 36
    return-void
.end method

.method public constructor <init>(ZIIFF)V
    .locals 0
    .parameter "isEnable"
    .parameter "quality"
    .parameter "type"
    .parameter "refDepth"
    .parameter "depthScale"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Landroid/opengl/EGLReal3DProfile;->mIsEnable:Z

    .line 25
    iput p2, p0, Landroid/opengl/EGLReal3DProfile;->mQuality:I

    .line 26
    iput p3, p0, Landroid/opengl/EGLReal3DProfile;->mType:I

    .line 27
    iput p4, p0, Landroid/opengl/EGLReal3DProfile;->mRefDepth:F

    .line 28
    iput p5, p0, Landroid/opengl/EGLReal3DProfile;->mDepthScale:F

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 43
    iget-boolean v0, p0, Landroid/opengl/EGLReal3DProfile;->mIsEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Landroid/opengl/EGLReal3DProfile;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Landroid/opengl/EGLReal3DProfile;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v0, p0, Landroid/opengl/EGLReal3DProfile;->mRefDepth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 47
    iget v0, p0, Landroid/opengl/EGLReal3DProfile;->mDepthScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 48
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
