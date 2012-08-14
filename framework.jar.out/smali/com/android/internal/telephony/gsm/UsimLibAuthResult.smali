.class public Lcom/android/internal/telephony/gsm/UsimLibAuthResult;
.super Ljava/lang/Object;
.source "UsimLibAuthResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimLibAuthResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_NOT_SET:I = -0x1

.field public static final STRING_NOT_SET:Ljava/lang/String; = ""


# instance fields
.field public authData:Ljava/lang/String;

.field public ret:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimLibAuthResult$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/UsimLibAuthResult$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/UsimLibAuthResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimLibAuthResult;->ret:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibAuthResult;->authData:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/UsimLibAuthResult;
    .locals 2
    .parameter "source"

    .prologue
    .line 34
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimLibAuthResult;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/UsimLibAuthResult;-><init>()V

    .line 35
    .local v0, p:Lcom/android/internal/telephony/gsm/UsimLibAuthResult;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimLibAuthResult;->ret:I

    .line 36
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/UsimLibAuthResult;->authData:Ljava/lang/String;

    .line 37
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "return: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimLibAuthResult;->ret:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "authData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibAuthResult;->authData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "dest"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimLibAuthResult;->ret:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibAuthResult;->authData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimLibAuthResult;->writeToParcel(Landroid/os/Parcel;)V

    .line 47
    return-void
.end method
