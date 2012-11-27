.class Lcom/lge/settings/compatmode/CompatibilityMode$1;
.super Landroid/content/BroadcastReceiver;
.source "CompatibilityMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/settings/compatmode/CompatibilityMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/settings/compatmode/CompatibilityMode;


# direct methods
.method constructor <init>(Lcom/lge/settings/compatmode/CompatibilityMode;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/lge/settings/compatmode/CompatibilityMode$1;->this$0:Lcom/lge/settings/compatmode/CompatibilityMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lge/settings/compatmode/CompatibilityMode$1;->this$0:Lcom/lge/settings/compatmode/CompatibilityMode;

    #calls: Lcom/lge/settings/compatmode/CompatibilityMode;->makingList()V
    invoke-static {v0}, Lcom/lge/settings/compatmode/CompatibilityMode;->access$100(Lcom/lge/settings/compatmode/CompatibilityMode;)V

    .line 257
    return-void
.end method
