.class Lcom/android/settings_ex/deviceinfo/UsbSettings$2$10;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1373
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$10;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$10;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$10;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1800(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)V

    .line 1377
    return-void
.end method
