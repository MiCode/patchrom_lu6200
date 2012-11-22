.class Lcom/android/settings_ex/powersave/PowerSave$2;
.super Ljava/lang/Thread;
.source "PowerSave.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/powersave/PowerSave;->doRestore()V
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
    iput-object p1, p0, Lcom/android/settings_ex/powersave/PowerSave$2;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "PowerSave"

    const-string v1, "Start restore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave$2;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    #calls: Lcom/android/settings_ex/powersave/PowerSave;->doSync()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSave;->access$700(Lcom/android/settings_ex/powersave/PowerSave;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave$2;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    #calls: Lcom/android/settings_ex/powersave/PowerSave;->doBrightness()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSave;->access$800(Lcom/android/settings_ex/powersave/PowerSave;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave$2;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    #calls: Lcom/android/settings_ex/powersave/PowerSave;->doTouch()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSave;->access$900(Lcom/android/settings_ex/powersave/PowerSave;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave$2;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    #calls: Lcom/android/settings_ex/powersave/PowerSave;->doScreenTimeout()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSave;->access$1000(Lcom/android/settings_ex/powersave/PowerSave;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave$2;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    #calls: Lcom/android/settings_ex/powersave/PowerSave;->doFrontLed()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSave;->access$1100(Lcom/android/settings_ex/powersave/PowerSave;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSave$2;->this$0:Lcom/android/settings_ex/powersave/PowerSave;

    #calls: Lcom/android/settings_ex/powersave/PowerSave;->doCpu()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSave;->access$1200(Lcom/android/settings_ex/powersave/PowerSave;)V

    return-void
.end method
