.class Lcom/android/settings_ex/MasterClearConfirm$1$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/MasterClearConfirm$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/MasterClearConfirm$1;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MasterClearConfirm$1;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings_ex/MasterClearConfirm$1$1;->this$1:Lcom/android/settings_ex/MasterClearConfirm$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 122
    return-void
.end method
