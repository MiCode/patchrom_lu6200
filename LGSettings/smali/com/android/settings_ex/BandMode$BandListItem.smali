.class Lcom/android/settings_ex/BandMode$BandListItem;
.super Ljava/lang/Object;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/BandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BandListItem"
.end annotation


# instance fields
.field private mBandMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "bm"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/BandMode$BandListItem;->mBandMode:I

    iput p1, p0, Lcom/android/settings_ex/BandMode$BandListItem;->mBandMode:I

    return-void
.end method


# virtual methods
.method public getBand()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/settings_ex/BandMode$BandListItem;->mBandMode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/settings_ex/BandMode;->access$300()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/BandMode$BandListItem;->mBandMode:I

    aget-object v0, v0, v1

    return-object v0
.end method
