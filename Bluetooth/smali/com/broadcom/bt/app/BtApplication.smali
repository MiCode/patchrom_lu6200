.class public Lcom/broadcom/bt/app/BtApplication;
.super Landroid/app/Application;
.source "BtApplication.java"


# instance fields
.field mOppApplication:Lcom/broadcom/bt/app/opp/OppApplication;

.field mPbapApplication:Lcom/broadcom/bt/app/pbap/PbapApplication;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 29
    new-instance v0, Lcom/broadcom/bt/app/opp/OppApplication;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/OppApplication;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/BtApplication;->mOppApplication:Lcom/broadcom/bt/app/opp/OppApplication;

    .line 30
    new-instance v0, Lcom/broadcom/bt/app/pbap/PbapApplication;

    invoke-direct {v0}, Lcom/broadcom/bt/app/pbap/PbapApplication;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/BtApplication;->mPbapApplication:Lcom/broadcom/bt/app/pbap/PbapApplication;

    .line 32
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/broadcom/bt/app/BtApplication;->mOppApplication:Lcom/broadcom/bt/app/opp/OppApplication;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/app/opp/OppApplication;->onCreate(Landroid/content/Context;)V

    .line 36
    iget-object v0, p0, Lcom/broadcom/bt/app/BtApplication;->mPbapApplication:Lcom/broadcom/bt/app/pbap/PbapApplication;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/app/pbap/PbapApplication;->onCreate(Landroid/content/Context;)V

    .line 37
    return-void
.end method
