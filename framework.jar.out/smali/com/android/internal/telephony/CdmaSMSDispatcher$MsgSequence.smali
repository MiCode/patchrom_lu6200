.class public Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;
.super Ljava/lang/Object;
.source "CdmaSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CdmaSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgSequence"
.end annotation


# instance fields
.field public mEos:I

.field public mPdu:[B

.field final synthetic this$0:Lcom/android/internal/telephony/CdmaSMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CdmaSMSDispatcher;I[B)V
    .locals 1
    .parameter
    .parameter "eos"
    .parameter "pdu"

    .prologue
    .line 2457
    iput-object p1, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;->this$0:Lcom/android/internal/telephony/CdmaSMSDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2454
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;->mEos:I

    .line 2455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;->mPdu:[B

    .line 2458
    iput p2, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;->mEos:I

    .line 2459
    iput-object p3, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;->mPdu:[B

    .line 2460
    return-void
.end method
