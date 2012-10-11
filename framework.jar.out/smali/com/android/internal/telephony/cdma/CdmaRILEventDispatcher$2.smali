.class Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$2;
.super Ljava/lang/Object;
.source "CdmaRILEventDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->showPopUp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x0

    .line 647
    const-string v0, "CdmaRILEventDispatcher"

    const-string/jumbo v1, "showPopUp / onClick "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$1002(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    #setter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEEMMReject:Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$602(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Z)Z

    move-result v4

    #setter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEAuthError:Z
    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$502(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Z)Z

    move-result v3

    #setter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTHDRNetworkError:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$402(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Z)Z

    move-result v2

    #setter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnauthenticated:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$302(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Z)Z

    move-result v1

    #setter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnregister:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$202(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Z)Z

    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    #setter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mRejectNum:I
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$702(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;I)I

    .line 652
    return-void
.end method
