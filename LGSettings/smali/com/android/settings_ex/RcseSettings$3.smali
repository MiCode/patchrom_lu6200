.class Lcom/android/settings_ex/RcseSettings$3;
.super Ljava/lang/Object;
.source "RcseSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    iput-object p1, p0, Lcom/android/settings_ex/RcseSettings$3;->this$0:Lcom/android/settings_ex/RcseSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 198
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    packed-switch p2, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 203
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/RcseSettings$3;->this$0:Lcom/android/settings_ex/RcseSettings;

    #getter for: Lcom/android/settings_ex/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/RcseSettings;->access$000(Lcom/android/settings_ex/RcseSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
