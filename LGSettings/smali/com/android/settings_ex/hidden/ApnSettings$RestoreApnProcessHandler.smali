.class Lcom/android/settings_ex/hidden/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/hidden/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings_ex/hidden/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/hidden/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "looper"
    .parameter "restoreApnUiHandler"

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/settings_ex/hidden/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings_ex/hidden/ApnSettings;

    .line 584
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 585
    iput-object p3, p0, Lcom/android/settings_ex/hidden/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 586
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 590
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 598
    :goto_0
    return-void

    .line 592
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/hidden/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings_ex/hidden/ApnSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/hidden/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 593
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/settings_ex/hidden/ApnSettings;->access$500()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 594
    iget-object v1, p0, Lcom/android/settings_ex/hidden/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
