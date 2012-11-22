.class Lcom/android/settings_ex/TetherSettings$3;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TetherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TetherSettings;

.field final synthetic val$cm:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TetherSettings;Landroid/net/ConnectivityManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$3;->this$0:Lcom/android/settings_ex/TetherSettings;

    iput-object p2, p0, Lcom/android/settings_ex/TetherSettings$3;->val$cm:Landroid/net/ConnectivityManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$3;->val$cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$3;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->access$100(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$3;->this$0:Lcom/android/settings_ex/TetherSettings;

    #calls: Lcom/android/settings_ex/TetherSettings;->updateState()V
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->access$200(Lcom/android/settings_ex/TetherSettings;)V

    return-void
.end method
