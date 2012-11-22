.class Lcom/android/settings_ex/DisplaySettings$2;
.super Landroid/os/Handler;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 149
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    #calls: Lcom/android/settings_ex/DisplaySettings;->callDisplayFont()V
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$100(Lcom/android/settings_ex/DisplaySettings;)V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_0
    .end packed-switch
.end method
