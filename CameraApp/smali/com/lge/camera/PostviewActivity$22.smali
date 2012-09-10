.class Lcom/lge/camera/PostviewActivity$22;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity;->createDeletePopup(I)V
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
    .line 2427
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$22;->this$0:Lcom/lge/camera/PostviewActivity;

    iput p2, p0, Lcom/lge/camera/PostviewActivity$22;->val$dialogId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2429
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$22;->this$0:Lcom/lge/camera/PostviewActivity;

    iget v1, p0, Lcom/lge/camera/PostviewActivity$22;->val$dialogId:I

    #calls: Lcom/lge/camera/PostviewActivity;->OnPositiveButtonClick(ILandroid/content/DialogInterface;I)V
    invoke-static {v0, v1, p1, p2}, Lcom/lge/camera/PostviewActivity;->access$2100(Lcom/lge/camera/PostviewActivity;ILandroid/content/DialogInterface;I)V

    .line 2430
    return-void
.end method
