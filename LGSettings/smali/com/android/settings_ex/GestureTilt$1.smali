.class Lcom/android/settings_ex/GestureTilt$1;
.super Ljava/lang/Object;
.source "GestureTilt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/GestureTilt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/GestureTilt;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/GestureTilt;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/GestureTilt$1;->this$0:Lcom/android/settings_ex/GestureTilt;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/GestureTilt$1;->this$0:Lcom/android/settings_ex/GestureTilt;

    iget-object v1, p0, Lcom/android/settings_ex/GestureTilt$1;->this$0:Lcom/android/settings_ex/GestureTilt;

    #getter for: Lcom/android/settings_ex/GestureTilt;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/android/settings_ex/GestureTilt;->access$000(Lcom/android/settings_ex/GestureTilt;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/GestureTilt;->startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 69
    return-void
.end method
