.class public Lcom/android/settings_ex/VibrateVolumePreference$VolumeStore;
.super Ljava/lang/Object;
.source "VibrateVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/VibrateVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeStore"
.end annotation


# instance fields
.field public originalVolume:I

.field public volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 244
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$VolumeStore;->volume:I

    .line 246
    iput v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$VolumeStore;->originalVolume:I

    return-void
.end method
