.class Lcom/android/settings_ex/VibrateTypeListPreference$3;
.super Ljava/lang/Object;
.source "VibrateTypeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/VibrateTypeListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/VibrateTypeListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/VibrateTypeListPreference;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/VibrateTypeListPreference$3;->this$0:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-string v0, "VibrateTypeListPreference"

    const-string v1, "PositiveButton OnClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypeListPreference$3;->this$0:Lcom/android/settings_ex/VibrateTypeListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->onDialogClosed(Z)V

    return-void
.end method
