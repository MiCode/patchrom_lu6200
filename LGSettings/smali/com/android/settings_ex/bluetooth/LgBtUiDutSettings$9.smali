.class Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$9;
.super Ljava/lang/Object;
.source "LgBtUiDutSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->BtUiDisplayToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$9;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$9;->val$message:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$9;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$9;->val$message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 362
    return-void
.end method
