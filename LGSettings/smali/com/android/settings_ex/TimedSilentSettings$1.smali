.class Lcom/android/settings_ex/TimedSilentSettings$1;
.super Ljava/lang/Object;
.source "TimedSilentSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TimedSilentSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TimedSilentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TimedSilentSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/TimedSilentSettings$1;->this$0:Lcom/android/settings_ex/TimedSilentSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings$1;->this$0:Lcom/android/settings_ex/TimedSilentSettings;

    #calls: Lcom/android/settings_ex/TimedSilentSettings;->OnSilentGroupClick()V
    invoke-static {v0}, Lcom/android/settings_ex/TimedSilentSettings;->access$000(Lcom/android/settings_ex/TimedSilentSettings;)V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings$1;->this$0:Lcom/android/settings_ex/TimedSilentSettings;

    #calls: Lcom/android/settings_ex/TimedSilentSettings;->setlayoutVisible(Z)V
    invoke-static {v0, p2}, Lcom/android/settings_ex/TimedSilentSettings;->access$100(Lcom/android/settings_ex/TimedSilentSettings;Z)V

    return-void
.end method
