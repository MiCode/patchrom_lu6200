.class Lcom/android/settings_ex/GestureHelp$1;
.super Ljava/lang/Object;
.source "GestureHelp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/GestureHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/GestureHelp;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/GestureHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings_ex/GestureHelp$1;->this$0:Lcom/android/settings_ex/GestureHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp$1;->this$0:Lcom/android/settings_ex/GestureHelp;

    iget-object v1, p0, Lcom/android/settings_ex/GestureHelp$1;->this$0:Lcom/android/settings_ex/GestureHelp;

    #getter for: Lcom/android/settings_ex/GestureHelp;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/android/settings_ex/GestureHelp;->access$000(Lcom/android/settings_ex/GestureHelp;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/GestureHelp;->startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 80
    return-void
.end method
