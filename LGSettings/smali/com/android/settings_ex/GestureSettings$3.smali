.class Lcom/android/settings_ex/GestureSettings$3;
.super Ljava/lang/Object;
.source "GestureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/GestureSettings;->openCustomDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/GestureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/GestureSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/GestureSettings$3;->this$0:Lcom/android/settings_ex/GestureSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings$3;->this$0:Lcom/android/settings_ex/GestureSettings;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings_ex/GestureSettings;->testing:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/GestureSettings;->access$202(Lcom/android/settings_ex/GestureSettings;Z)Z

    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings$3;->this$0:Lcom/android/settings_ex/GestureSettings;

    iget-object v2, p0, Lcom/android/settings_ex/GestureSettings$3;->this$0:Lcom/android/settings_ex/GestureSettings;

    #getter for: Lcom/android/settings_ex/GestureSettings;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/settings_ex/GestureSettings;->access$100(Lcom/android/settings_ex/GestureSettings;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    #setter for: Lcom/android/settings_ex/GestureSettings;->test_value:I
    invoke-static {v1, v2}, Lcom/android/settings_ex/GestureSettings;->access$302(Lcom/android/settings_ex/GestureSettings;I)I

    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings$3;->this$0:Lcom/android/settings_ex/GestureSettings;

    iget-object v2, p0, Lcom/android/settings_ex/GestureSettings$3;->this$0:Lcom/android/settings_ex/GestureSettings;

    #getter for: Lcom/android/settings_ex/GestureSettings;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings_ex/GestureSettings;->access$000(Lcom/android/settings_ex/GestureSettings;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    #setter for: Lcom/android/settings_ex/GestureSettings;->test_use_default:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/GestureSettings;->access$402(Lcom/android/settings_ex/GestureSettings;Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings_ex"

    const-string v2, "com.android.settings_ex.GestureTilt"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "value"

    iget-object v2, p0, Lcom/android/settings_ex/GestureSettings$3;->this$0:Lcom/android/settings_ex/GestureSettings;

    #getter for: Lcom/android/settings_ex/GestureSettings;->test_value:I
    invoke-static {v2}, Lcom/android/settings_ex/GestureSettings;->access$300(Lcom/android/settings_ex/GestureSettings;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/GestureSettings$3;->this$0:Lcom/android/settings_ex/GestureSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/GestureSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
