.class public Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;
.super Ljava/lang/Object;
.source "PostviewMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/postview/PostviewMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostviewMenuViewHolder"
.end annotation


# instance fields
.field mImage:Landroid/widget/ImageView;

.field menuExtendName:Landroid/widget/TextView;

.field menuName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lge/camera/postview/PostviewMenuAdapter;


# direct methods
.method public constructor <init>(Lcom/lge/camera/postview/PostviewMenuAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->this$0:Lcom/lge/camera/postview/PostviewMenuAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
