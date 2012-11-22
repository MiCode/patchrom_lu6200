.class Lcom/android/settings_ex/powersave/PowerSave$1;
.super Ljava/lang/Thread;
.source "PowerSave.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/powersave/PowerSave;->doPowerSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersave/PowerSave;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/powersave/PowerSave;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/powersave/PowerSave$1;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave$1;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    #calls: Lcom/android/settings_ex/powersave/PowerSave;->applyPowerSaveWifi()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSave;->access$000(Lcom/android/settings_ex/powersave/PowerSave;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave$1;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    #calls: Lcom/android/settings_ex/powersave/PowerSave;->applyPowerSaveSync()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSave;->access$100(Lcom/android/settings_ex/powersave/PowerSave;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave$1;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    #calls: Lcom/android/settings_ex/powersave/PowerSave;->applyPowerSaveBrightness()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSave;->access$200(Lcom/android/settings_ex/powersave/PowerSave;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave$1;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    #calls: Lcom/android/settings_ex/powersave/PowerSave;->applyPowerSaveTouch()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSave;->access$300(Lcom/android/settings_ex/powersave/PowerSave;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave$1;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    #calls: Lcom/android/settings_ex/powersave/PowerSave;->applyPowerSaveCpu()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSave;->access$400(Lcom/android/settings_ex/powersave/PowerSave;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave$1;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    #calls: Lcom/android/settings_ex/powersave/PowerSave;->applyPowerSaveScreenTimeout()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSave;->access$500(Lcom/android/settings_ex/powersave/PowerSave;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave$1;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    #calls: Lcom/android/settings_ex/powersave/PowerSave;->applyPowerSaveFrontLed()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSave;->access$600(Lcom/android/settings_ex/powersave/PowerSave;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave$1;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSave;->updateActivationPowerControl()V

    return-void
.end method
