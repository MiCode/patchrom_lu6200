.class Lcom/android/server/MountService$UnmountCallBack;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountCallBack"
.end annotation


# instance fields
.field final force:Z

.field final path:Ljava/lang/String;

.field final removeEncryption:Z

.field retries:I

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V
    .locals 1
    .parameter
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 393
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    .line 394
    iput-object p2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 395
    iput-boolean p3, p0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    .line 396
    iput-boolean p4, p0, Lcom/android/server/MountService$UnmountCallBack;->removeEncryption:Z

    .line 397
    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 4

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v1, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/server/MountService$UnmountCallBack;->removeEncryption:Z

    #calls: Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I

    .line 402
    return-void
.end method
