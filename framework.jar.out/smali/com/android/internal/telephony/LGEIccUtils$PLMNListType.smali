.class public Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;
.super Ljava/lang/Object;
.source "LGEIccUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGEIccUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PLMNListType"
.end annotation


# instance fields
.field public act:[B

.field public includepcs:Z

.field public mcc:I

.field public mnc:I

.field final synthetic this$0:Lcom/android/internal/telephony/LGEIccUtils;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGEIccUtils;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->this$0:Lcom/android/internal/telephony/LGEIccUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->act:[B

    return-void
.end method
