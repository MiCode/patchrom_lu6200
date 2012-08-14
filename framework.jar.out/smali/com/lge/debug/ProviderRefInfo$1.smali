.class final Lcom/lge/debug/ProviderRefInfo$1;
.super Ljava/lang/Object;
.source "ProviderRefInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/debug/ProviderRefInfo;
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
        "Lcom/lge/debug/ProviderRefInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/debug/ProviderRefInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 55
    new-instance v0, Lcom/lge/debug/ProviderRefInfo;

    invoke-direct {v0, p1}, Lcom/lge/debug/ProviderRefInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/lge/debug/ProviderRefInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/debug/ProviderRefInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/debug/ProviderRefInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 59
    new-array v0, p1, [Lcom/lge/debug/ProviderRefInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/lge/debug/ProviderRefInfo$1;->newArray(I)[Lcom/lge/debug/ProviderRefInfo;

    move-result-object v0

    return-object v0
.end method
