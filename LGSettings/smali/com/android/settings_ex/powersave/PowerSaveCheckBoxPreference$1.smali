.class Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$1;
.super Ljava/lang/Object;
.source "PowerSaveCheckBoxPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->onCheckBoxClicked()V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mTreeClickListener:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->access$200(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;)Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;

    invoke-interface {v0, v1}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;->onTreeClick(Landroid/preference/Preference;)V

    .line 63
    return-void
.end method
