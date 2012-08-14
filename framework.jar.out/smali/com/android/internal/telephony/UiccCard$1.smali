.class Lcom/android/internal/telephony/UiccCard$1;
.super Ljava/lang/Object;
.source "UiccCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/UiccCard;->onIccSwap(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCard$1;->this$0:Lcom/android/internal/telephony/UiccCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 199
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard$1;->this$0:Lcom/android/internal/telephony/UiccCard;

    iget-object v1, v1, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard$1;->this$0:Lcom/android/internal/telephony/UiccCard;

    iget-object v2, v2, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard$1;->this$0:Lcom/android/internal/telephony/UiccCard;

    const-string v2, "Reboot due to SIM swap"

    #calls: Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/UiccCard;->access$000(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard$1;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 208
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SIM is added."

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0
.end method
