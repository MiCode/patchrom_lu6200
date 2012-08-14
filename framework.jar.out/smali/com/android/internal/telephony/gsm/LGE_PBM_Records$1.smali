.class final Lcom/android/internal/telephony/gsm/LGE_PBM_Records$1;
.super Ljava/lang/Object;
.source "LGE_PBM_Records.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
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
        "Lcom/android/internal/telephony/gsm/LGE_PBM_Records;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    .locals 2
    .parameter "source"

    .prologue
    .line 28
    new-instance v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;-><init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/LGE_PBM_Records$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/LGE_PBM_Records$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    .locals 1
    .parameter "size"

    .prologue
    .line 32
    new-array v0, p1, [Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/LGE_PBM_Records$1;->newArray(I)[Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    move-result-object v0

    return-object v0
.end method
