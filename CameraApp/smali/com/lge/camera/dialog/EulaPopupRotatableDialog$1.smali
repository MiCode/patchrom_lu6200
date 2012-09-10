.class Lcom/lge/camera/dialog/EulaPopupRotatableDialog$1;
.super Ljava/lang/Object;
.source "EulaPopupRotatableDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 45
    if-eqz p2, :cond_0

    .line 46
    iget-object v0, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->mDoNotShowAgain:Z

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->mDoNotShowAgain:Z

    goto :goto_0
.end method
