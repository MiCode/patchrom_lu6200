.class Lcom/lge/camera/PostviewActivity$24;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity;->createSharedListPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewActivity;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2474
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$24;->this$0:Lcom/lge/camera/PostviewActivity;

    iput p2, p0, Lcom/lge/camera/PostviewActivity$24;->val$dialogId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    .line 2477
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity$24;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->menuListShare:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/PostviewActivity;->access$2300(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2478
    .local v1, menuItem:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity$24;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->menuListExtendInfo:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/PostviewActivity;->access$2400(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2479
    .local v0, menuExtendItem:Ljava/lang/String;
    iget v3, p0, Lcom/lge/camera/PostviewActivity$24;->val$dialogId:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    .line 2480
    .local v2, menuType:I
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity$24;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v3, v2, v1, v0}, Lcom/lge/camera/PostviewActivity;->startPostviewMenuItems(ILjava/lang/String;Ljava/lang/String;)V

    .line 2481
    return-void

    .line 2479
    .end local v2           #menuType:I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
