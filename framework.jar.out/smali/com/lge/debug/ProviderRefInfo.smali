.class public Lcom/lge/debug/ProviderRefInfo;
.super Ljava/lang/Object;
.source "ProviderRefInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/debug/ProviderRefInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mClassName:Ljava/lang/String;

.field public mLineNumber:I

.field public mMethodName:Ljava/lang/String;

.field public mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/lge/debug/ProviderRefInfo$1;

    invoke-direct {v0}, Lcom/lge/debug/ProviderRefInfo$1;-><init>()V

    sput-object v0, Lcom/lge/debug/ProviderRefInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/lge/debug/ProviderRefInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "uri"
    .parameter "className"
    .parameter "methodName"
    .parameter "lineNumber"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/lge/debug/ProviderRefInfo;->mUri:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/lge/debug/ProviderRefInfo;->mClassName:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/lge/debug/ProviderRefInfo;->mMethodName:Ljava/lang/String;

    .line 23
    iput p4, p0, Lcom/lge/debug/ProviderRefInfo;->mLineNumber:I

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/debug/ProviderRefInfo;->mUri:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/debug/ProviderRefInfo;->mClassName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/debug/ProviderRefInfo;->mMethodName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/debug/ProviderRefInfo;->mLineNumber:I

    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/debug/ProviderRefInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/lge/debug/ProviderRefInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/lge/debug/ProviderRefInfo;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Lcom/lge/debug/ProviderRefInfo;->mLineNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void
.end method
