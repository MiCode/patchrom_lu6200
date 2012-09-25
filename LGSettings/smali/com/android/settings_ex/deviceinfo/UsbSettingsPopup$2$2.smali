.class Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$2;
.super Ljava/lang/Object;
.source "UsbSettingsPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$2;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$2;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    const-string v1, "charge_only"

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$702(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$2;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$2;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$700(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$2;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$2;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$700(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$002(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$2;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    const/4 v1, 0x0

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->connectUsbTether(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$800(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;Z)V

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$2;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->finish()V

    .line 241
    return-void
.end method
