.class final Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SecurityIO"
.end annotation


# instance fields
.field public request:Ljava/lang/Object;

.field public response:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "argument1"
    .parameter "argument2"

    .prologue
    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;->request:Ljava/lang/Object;

    .line 129
    iput-object p2, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;->response:Ljava/lang/Object;

    .line 130
    return-void
.end method
