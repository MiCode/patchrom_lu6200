.class Lcom/lge/camera/PostviewActivity$8;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity;->startResolvedActivity(ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewActivity;

.field final synthetic val$menuType:I

.field final synthetic val$resolvedIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity;ILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1954
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$8;->this$0:Lcom/lge/camera/PostviewActivity;

    iput p2, p0, Lcom/lge/camera/PostviewActivity$8;->val$menuType:I

    iput-object p3, p0, Lcom/lge/camera/PostviewActivity$8;->val$resolvedIntent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1956
    iget v1, p0, Lcom/lge/camera/PostviewActivity$8;->val$menuType:I

    if-nez v1, :cond_0

    const/4 v0, 0x2

    .line 1957
    .local v0, requestCode:I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$8;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$8;->val$resolvedIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/lge/camera/PostviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1958
    return-void

    .line 1956
    .end local v0           #requestCode:I
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method
