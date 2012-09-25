.class Lcom/broadcom/bt/app/opp/OppActivity$3;
.super Ljava/lang/Object;
.source "OppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/OppActivity;->setGroupContactPushDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/OppActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/OppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/OppActivity$3;->this$0:Lcom/broadcom/bt/app/opp/OppActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/OppActivity$3;->this$0:Lcom/broadcom/bt/app/opp/OppActivity;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/OppActivity;->finish()V

    .line 128
    return-void
.end method
