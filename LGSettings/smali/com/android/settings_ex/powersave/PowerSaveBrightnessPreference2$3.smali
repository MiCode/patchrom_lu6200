.class Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2$3;
.super Ljava/lang/Object;
.source "PowerSaveBrightnessPreference2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2$3;->this$0:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2$3;->this$0:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->onClick(Landroid/content/DialogInterface;I)V

    .line 87
    return-void
.end method
