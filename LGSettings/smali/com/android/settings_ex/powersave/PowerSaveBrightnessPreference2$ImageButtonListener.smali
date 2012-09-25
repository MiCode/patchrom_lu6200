.class Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2$ImageButtonListener;
.super Ljava/lang/Object;
.source "PowerSaveBrightnessPreference2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2$ImageButtonListener;->this$0:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2$ImageButtonListener;-><init>(Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2$ImageButtonListener;->this$0:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->initPreview()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->access$100(Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;)V

    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2$ImageButtonListener;->this$0:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    const/4 v1, 0x0

    #calls: Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->showDialog(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->access$200(Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;Landroid/os/Bundle;)V

    .line 35
    return-void
.end method
