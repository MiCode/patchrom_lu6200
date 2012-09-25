.class Lcom/android/settings_ex/data/SelectSIMDialog$1;
.super Ljava/lang/Object;
.source "SelectSIMDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/data/SelectSIMDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/data/SelectSIMDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/data/SelectSIMDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings_ex/data/SelectSIMDialog$1;->this$0:Lcom/android/settings_ex/data/SelectSIMDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/data/SelectSIMDialog$1;->this$0:Lcom/android/settings_ex/data/SelectSIMDialog;

    #setter for: Lcom/android/settings_ex/data/SelectSIMDialog;->mClickedPos:I
    invoke-static {v0, p2}, Lcom/android/settings_ex/data/SelectSIMDialog;->access$002(Lcom/android/settings_ex/data/SelectSIMDialog;I)I

    .line 91
    return-void
.end method
