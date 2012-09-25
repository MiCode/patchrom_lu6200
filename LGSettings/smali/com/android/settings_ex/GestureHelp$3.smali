.class Lcom/android/settings_ex/GestureHelp$3;
.super Ljava/lang/Object;
.source "GestureHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/GestureHelp;->setButtonListener()V
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
    .line 266
    iput-object p1, p0, Lcom/android/settings_ex/GestureHelp$3;->this$0:Lcom/android/settings_ex/GestureHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/GestureHelp$3;->this$0:Lcom/android/settings_ex/GestureHelp;

    #calls: Lcom/android/settings_ex/GestureHelp;->previous()V
    invoke-static {v0}, Lcom/android/settings_ex/GestureHelp;->access$400(Lcom/android/settings_ex/GestureHelp;)V

    .line 270
    return-void
.end method
