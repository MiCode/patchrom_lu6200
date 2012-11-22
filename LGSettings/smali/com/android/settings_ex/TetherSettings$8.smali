.class Lcom/android/settings_ex/TetherSettings$8;
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
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$8;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$8;->this$0:Lcom/android/settings_ex/TetherSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/TetherSettings;->mCheckTethering:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/TetherSettings;->access$1502(Lcom/android/settings_ex/TetherSettings;Z)Z

    .line 1288
    return-void
.end method
