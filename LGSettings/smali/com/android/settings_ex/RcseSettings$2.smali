.class Lcom/android/settings_ex/RcseSettings$2;
.super Ljava/lang/Object;
.source "RcseSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RcseSettings;->rcs_e_service_dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RcseSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RcseSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/settings_ex/RcseSettings$2;->this$0:Lcom/android/settings_ex/RcseSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/RcseSettings$2;->this$0:Lcom/android/settings_ex/RcseSettings;

    #getter for: Lcom/android/settings_ex/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/RcseSettings;->access$000(Lcom/android/settings_ex/RcseSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    return-void
.end method
