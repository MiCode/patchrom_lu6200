.class Lcom/lge/camera/PostviewActivity$12;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2045
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$12;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$12;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewActivity;->finish()V

    .line 2049
    return-void
.end method
