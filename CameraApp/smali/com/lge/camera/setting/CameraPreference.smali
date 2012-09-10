.class public abstract Lcom/lge/camera/setting/CameraPreference;
.super Ljava/lang/Object;
.source "CameraPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSharedPreferenceName:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/lge/camera/setting/CameraPreference;->mContext:Landroid/content/Context;

    .line 16
    sget-object v1, Lcom/lge/camera/R$styleable;->CameraPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 18
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferenceName:Ljava/lang/String;

    .line 19
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    return-void
.end method


# virtual methods
.method public getSharedPreferenceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferenceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/lge/camera/setting/CameraPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferenceName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public abstract reloadValue()V
.end method

.method public setSharedPreferenceName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferenceName:Ljava/lang/String;

    .line 24
    return-void
.end method
