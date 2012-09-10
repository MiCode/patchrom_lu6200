.class Lcom/lge/camera/controller/DialogController$3;
.super Ljava/lang/Object;
.source "DialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/DialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/DialogController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/DialogController;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/lge/camera/controller/DialogController$3;->this$0:Lcom/lge/camera/controller/DialogController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 260
    const/16 v1, 0x54

    if-ne p2, v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    const/16 v1, 0x19

    if-eq p2, v1, :cond_0

    .line 262
    const/16 v1, 0x18

    if-eq p2, v1, :cond_0

    .line 263
    const/4 v0, 0x0

    goto :goto_0
.end method
