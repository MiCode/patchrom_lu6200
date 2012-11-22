.class Lcom/android/settings_ex/TetherSettings$7;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TetherSettings;->CreateWarningDialogForDCM()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$7;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$7;->this$0:Lcom/android/settings_ex/TetherSettings;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings_ex/TetherSettings;->mCheckTethering:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/TetherSettings;->access$1502(Lcom/android/settings_ex/TetherSettings;Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$7;->this$0:Lcom/android/settings_ex/TetherSettings;

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$7;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mPreferenceTmp:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->access$1600(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings$7;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mObjectTmp:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/settings_ex/TetherSettings;->access$1700(Lcom/android/settings_ex/TetherSettings;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/TetherSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1284
    return-void
.end method
