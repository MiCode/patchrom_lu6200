.class public Lcom/broadcom/bt/service/map/FolderInfo;
.super Ljava/lang/Object;
.source "FolderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/map/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final mModeReadOnly:J = 0x1L


# instance fields
.field public mCreatedDateTimeMS:Ljava/lang/String;

.field public mFolderName:Ljava/lang/String;

.field public mFolderSizeBytes:J

.field public mMode:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/broadcom/bt/service/map/FolderInfo$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/FolderInfo$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/map/FolderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    .line 30
    iput-wide v1, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    .line 32
    iput-wide v1, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    const-wide/16 v1, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    .line 30
    iput-wide v1, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    .line 32
    iput-wide v1, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;J)V
    .locals 3
    .parameter "folderName"
    .parameter "folderSizeBytes"
    .parameter "createdDateTimeMS"
    .parameter "mode"

    .prologue
    const-wide/16 v1, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    .line 30
    iput-wide v1, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    .line 32
    iput-wide v1, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    .line 45
    iput-object p1, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    .line 46
    iput-wide p2, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    .line 47
    iput-object p4, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    .line 48
    iput-wide p5, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-wide v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget-object v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-wide v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    return-void
.end method
