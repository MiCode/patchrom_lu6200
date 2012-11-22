.class public Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTriggerInP2P;
.super Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;
.source "LGNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BeamTriggerInP2P"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTriggerInP2P;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-direct {p0, p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V

    return-void
.end method


# virtual methods
.method trigger(Z)Z
    .locals 4
    .parameter "bOn"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;->trigger(Z)Z

    move-result v0

    .local v0, bRet:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTriggerInP2P;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$100(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080202

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 227
    :cond_0
    return v0
.end method
