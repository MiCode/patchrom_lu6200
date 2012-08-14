.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$11;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 3873
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$11;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 3876
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 3877
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1302(Z)Z

    .line 3879
    :cond_0
    return v1
.end method
