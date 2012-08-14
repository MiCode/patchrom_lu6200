.class public Lcom/android/internal/telephony/SecurityManager$PersonalizationCheck;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PersonalizationCheck"
.end annotation


# instance fields
.field SIMLockcheck:B

.field SIMLockstatus:B

.field final synthetic this$0:Lcom/android/internal/telephony/SecurityManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SecurityManager;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/SecurityManager$PersonalizationCheck;->this$0:Lcom/android/internal/telephony/SecurityManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
