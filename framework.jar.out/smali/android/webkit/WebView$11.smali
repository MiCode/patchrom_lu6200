.class Landroid/webkit/WebView$11;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->showLGSelectActionPopupWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 10204
    iput-object p1, p0, Landroid/webkit/WebView$11;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 10206
    iget-object v0, p0, Landroid/webkit/WebView$11;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLGSelectActionPopupWindow:Landroid/webkit/LGSelectActionPopupWindow;
    invoke-static {v0}, Landroid/webkit/WebView;->access$11700(Landroid/webkit/WebView;)Landroid/webkit/LGSelectActionPopupWindow;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebView$11;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/LGSelectActionPopupWindow;->show(Landroid/view/View;)V

    .line 10207
    return-void
.end method
