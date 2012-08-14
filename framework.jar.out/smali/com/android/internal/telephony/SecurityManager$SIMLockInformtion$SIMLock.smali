.class public Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SIMLock"
.end annotation


# instance fields
.field public attemptsLeft:B

.field public flag:I

.field public retry_count_max:B

.field final synthetic this$1:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->this$1:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
