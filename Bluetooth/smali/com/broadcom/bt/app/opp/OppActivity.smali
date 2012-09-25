.class public Lcom/broadcom/bt/app/opp/OppActivity;
.super Landroid/app/Activity;
.source "OppActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/opp/OppActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/OppActivity;->setGroupContactPushDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/opp/OppActivity;Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/OppActivity;->startGroupContactPush_WithGroupUri(Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;)V

    return-void
.end method

.method private setGroupContactPushDialog()V
    .locals 4

    .prologue
    .line 121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0500b6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 123
    const v1, 0x7f040001

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    const/high16 v1, 0x104

    new-instance v2, Lcom/broadcom/bt/app/opp/OppActivity$3;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/app/opp/OppActivity$3;-><init>(Lcom/broadcom/bt/app/opp/OppActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    const v1, 0x104000a

    new-instance v2, Lcom/broadcom/bt/app/opp/OppActivity$4;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/app/opp/OppActivity$4;-><init>(Lcom/broadcom/bt/app/opp/OppActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 157
    return-void
.end method

.method private startGroupContactPush_WithGroupUri(Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;)V
    .locals 3
    .parameter

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    const-class v1, Lcom/broadcom/bt/app/opp/OppLauncherActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "android.intent.extra.STREAM"

    invoke-interface {p1}, Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;->getGroupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 172
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/OppActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/OppActivity;->setResult(I)V

    .line 177
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppActivity;->finish()V

    .line 178
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v1, "OppActivity"

    const-string v2, "Error starting contact push with group uri"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x4

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/OppActivity;->requestWindowFeature(I)Z

    .line 60
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 63
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.broadcom.bt.app.opp.action.OPP_LAUNCH_APPLICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/OppActivity;->showDialog(I)V

    .line 67
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 71
    packed-switch p1, :pswitch_data_0

    .line 114
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 73
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0500b4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 75
    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 77
    new-instance v1, Lcom/broadcom/bt/app/opp/OppActivity$1;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/opp/OppActivity$1;-><init>(Lcom/broadcom/bt/app/opp/OppActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    const/high16 v1, 0x7f04

    new-instance v2, Lcom/broadcom/bt/app/opp/OppActivity$2;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/app/opp/OppActivity$2;-><init>(Lcom/broadcom/bt/app/opp/OppActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
