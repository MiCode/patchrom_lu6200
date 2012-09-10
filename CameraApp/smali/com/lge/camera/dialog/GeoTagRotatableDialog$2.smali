.class Lcom/lge/camera/dialog/GeoTagRotatableDialog$2;
.super Ljava/lang/Object;
.source "GeoTagRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/GeoTagRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/GeoTagRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/GeoTagRotatableDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lge/camera/dialog/GeoTagRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/GeoTagRotatableDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 49
    const-string v0, "CameraApp"

    const-string v1, "hb cancel button click...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/lge/camera/dialog/GeoTagRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/GeoTagRotatableDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/GeoTagRotatableDialog;->onDismiss()V

    .line 51
    return-void
.end method
