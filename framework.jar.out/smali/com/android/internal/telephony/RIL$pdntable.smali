.class Lcom/android/internal/telephony/RIL$pdntable;
.super Ljava/lang/Object;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "pdntable"
.end annotation


# instance fields
.field public apn:Ljava/lang/String;

.field public apnLength:I

.field public authType:I

.field public enable:I

.field public inactivityTime:I

.field public ipType:I

.field public password:Ljava/lang/String;

.field public pdnId:I

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;

.field public username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 682
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$pdntable;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput v0, p0, Lcom/android/internal/telephony/RIL$pdntable;->pdnId:I

    .line 684
    iput v0, p0, Lcom/android/internal/telephony/RIL$pdntable;->apnLength:I

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$pdntable;->apn:Ljava/lang/String;

    return-void
.end method
