.class Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference$1;
.super Ljava/lang/Object;
.source "LgBtUiHiddenSettingsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->onCheckBoxClicked()V

    .line 50
    return-void
.end method
