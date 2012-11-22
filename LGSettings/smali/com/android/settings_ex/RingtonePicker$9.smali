.class Lcom/android/settings_ex/RingtonePicker$9;
.super Landroid/os/storage/StorageEventListener;
.source "RingtonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RingtonePicker;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RingtonePicker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/RingtonePicker$9;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker$9;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-virtual {v0}, Lcom/android/settings_ex/RingtonePicker;->finish()V

    return-void
.end method
