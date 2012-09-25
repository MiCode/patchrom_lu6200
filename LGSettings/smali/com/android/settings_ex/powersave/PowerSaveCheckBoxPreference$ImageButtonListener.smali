.class Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;
.super Ljava/lang/Object;
.source "PowerSaveCheckBoxPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;->this$0:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;-><init>(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;->this$0:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    const/4 v1, 0x0

    #calls: Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->showDialog(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->access$100(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;Landroid/os/Bundle;)V

    .line 35
    return-void
.end method
