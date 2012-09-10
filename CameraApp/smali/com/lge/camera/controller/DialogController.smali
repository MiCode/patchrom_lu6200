.class public Lcom/lge/camera/controller/DialogController;
.super Lcom/lge/camera/controller/Controller;
.source "DialogController.java"


# instance fields
.field private dialogId:I

.field private dialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mCurrentDialog:Landroid/app/Dialog;

.field private mRotateDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/camera/dialog/RotateDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/Mediator;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/DialogController;->mCurrentDialog:Landroid/app/Dialog;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    .line 258
    new-instance v0, Lcom/lge/camera/controller/DialogController$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/DialogController$3;-><init>(Lcom/lge/camera/controller/DialogController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/DialogController;->dialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 44
    return-void
.end method


# virtual methods
.method public dismissCurrentDialog()V
    .locals 6

    .prologue
    .line 277
    iget-object v1, p0, Lcom/lge/camera/controller/DialogController;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 279
    :try_start_0
    iget v1, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "CameraApp"

    const-string v2, "dialogId %d is not displaying!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCurrentDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mCurrentDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogID()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    return v0
.end method

.method public isRotateDialogVisible()Z
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v1, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "id"
    .parameter "args"

    .prologue
    const v8, 0x7f0b0020

    const v7, 0x1010355

    const/4 v6, 0x0

    .line 203
    const-string v4, "CameraApp"

    const-string v5, "onCreateDialog"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v2, 0x0

    .line 206
    .local v2, dialog:Landroid/app/Dialog;
    iget v4, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 207
    const/4 v4, 0x0

    .line 255
    :goto_0
    return-object v4

    .line 210
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 251
    :goto_1
    if-eqz v2, :cond_1

    .line 252
    iget-object v4, p0, Lcom/lge/camera/controller/DialogController;->dialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    move-object v4, v2

    .line 255
    goto :goto_0

    .line 212
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 213
    .local v3, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/lge/camera/controller/DialogController$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/DialogController$1;-><init>(Lcom/lge/camera/controller/DialogController;)V

    .line 219
    .local v1, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b01dd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b01de

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 228
    goto :goto_1

    .line 231
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #buttonListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v3           #res:Landroid/content/res/Resources;
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 232
    .restart local v3       #res:Landroid/content/res/Resources;
    new-instance v1, Lcom/lge/camera/controller/DialogController$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/DialogController$2;-><init>(Lcom/lge/camera/controller/DialogController;)V

    .line 238
    .restart local v1       #buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b01cd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b01ce

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 247
    goto :goto_1

    .line 210
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateHelpGuideDialog(I)V
    .locals 9
    .parameter "id"

    .prologue
    .line 156
    packed-switch p1, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 158
    :pswitch_0
    new-instance v2, Lcom/lge/camera/dialog/HelpHDRPopupRotatableDialog;

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v2, v7}, Lcom/lge/camera/dialog/HelpHDRPopupRotatableDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 159
    .local v2, hdrDialog:Lcom/lge/camera/dialog/HelpHDRPopupRotatableDialog;
    invoke-virtual {v2}, Lcom/lge/camera/dialog/HelpHDRPopupRotatableDialog;->create()V

    .line 160
    iget-object v7, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v8, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 163
    .end local v2           #hdrDialog:Lcom/lge/camera/dialog/HelpHDRPopupRotatableDialog;
    :pswitch_1
    new-instance v4, Lcom/lge/camera/dialog/HelpPanoramaPopupRotatableDialog;

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v4, v7}, Lcom/lge/camera/dialog/HelpPanoramaPopupRotatableDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 164
    .local v4, panoramaDialog:Lcom/lge/camera/dialog/HelpPanoramaPopupRotatableDialog;
    invoke-virtual {v4}, Lcom/lge/camera/dialog/HelpPanoramaPopupRotatableDialog;->create()V

    .line 165
    iget-object v7, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v8, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    .end local v4           #panoramaDialog:Lcom/lge/camera/dialog/HelpPanoramaPopupRotatableDialog;
    :pswitch_2
    new-instance v5, Lcom/lge/camera/dialog/HelpTimeMachinePopupRotatableDialog;

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v5, v7}, Lcom/lge/camera/dialog/HelpTimeMachinePopupRotatableDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 169
    .local v5, timeMachineDialog:Lcom/lge/camera/dialog/HelpTimeMachinePopupRotatableDialog;
    invoke-virtual {v5}, Lcom/lge/camera/dialog/HelpTimeMachinePopupRotatableDialog;->create()V

    .line 170
    iget-object v7, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v8, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    .end local v5           #timeMachineDialog:Lcom/lge/camera/dialog/HelpTimeMachinePopupRotatableDialog;
    :pswitch_3
    new-instance v1, Lcom/lge/camera/dialog/HelpContinuousPopupRotatableDialog;

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v1, v7}, Lcom/lge/camera/dialog/HelpContinuousPopupRotatableDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 174
    .local v1, continuousDialog:Lcom/lge/camera/dialog/HelpContinuousPopupRotatableDialog;
    invoke-virtual {v1}, Lcom/lge/camera/dialog/HelpContinuousPopupRotatableDialog;->create()V

    .line 175
    iget-object v7, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v8, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 178
    .end local v1           #continuousDialog:Lcom/lge/camera/dialog/HelpContinuousPopupRotatableDialog;
    :pswitch_4
    new-instance v0, Lcom/lge/camera/dialog/HelpBeautyShotPopupRotatableDialog;

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v0, v7}, Lcom/lge/camera/dialog/HelpBeautyShotPopupRotatableDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 179
    .local v0, beautyShotDialog:Lcom/lge/camera/dialog/HelpBeautyShotPopupRotatableDialog;
    invoke-virtual {v0}, Lcom/lge/camera/dialog/HelpBeautyShotPopupRotatableDialog;->create()V

    .line 180
    iget-object v7, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v8, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 183
    .end local v0           #beautyShotDialog:Lcom/lge/camera/dialog/HelpBeautyShotPopupRotatableDialog;
    :pswitch_5
    new-instance v6, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v6, v7}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 184
    .local v6, voicePhotoDialog:Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;
    invoke-virtual {v6}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->create()V

    .line 185
    iget-object v7, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v8, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 188
    .end local v6           #voicePhotoDialog:Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;
    :pswitch_6
    new-instance v3, Lcom/lge/camera/dialog/HelpLiveEffectPopupRotatableDialog;

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v3, v7}, Lcom/lge/camera/dialog/HelpLiveEffectPopupRotatableDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 189
    .local v3, liveEffectDialog:Lcom/lge/camera/dialog/HelpLiveEffectPopupRotatableDialog;
    invoke-virtual {v3}, Lcom/lge/camera/dialog/HelpLiveEffectPopupRotatableDialog;->create()V

    .line 190
    iget-object v7, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v8, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateRotateableDialog(I)V
    .locals 10
    .parameter "id"

    .prologue
    .line 110
    sparse-switch p1, :sswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 112
    :sswitch_0
    new-instance v3, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v3, v8}, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 113
    .local v3, icDialog:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;
    invoke-virtual {v3}, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->create()V

    .line 114
    iget-object v8, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v9, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    .end local v3           #icDialog:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;
    :sswitch_1
    new-instance v2, Lcom/lge/camera/dialog/GeoTagRotatableDialog;

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v2, v8}, Lcom/lge/camera/dialog/GeoTagRotatableDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 118
    .local v2, gtDialog:Lcom/lge/camera/dialog/GeoTagRotatableDialog;
    invoke-virtual {v2}, Lcom/lge/camera/dialog/GeoTagRotatableDialog;->create()V

    .line 119
    iget-object v8, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v9, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    .end local v2           #gtDialog:Lcom/lge/camera/dialog/GeoTagRotatableDialog;
    :sswitch_2
    new-instance v1, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v1, v8}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 123
    .local v1, epDialog:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;
    invoke-virtual {v1}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->create()V

    .line 124
    iget-object v8, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v9, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    .end local v1           #epDialog:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;
    :sswitch_3
    new-instance v4, Lcom/lge/camera/dialog/MassStorageRotatableDialog;

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v4, v8}, Lcom/lge/camera/dialog/MassStorageRotatableDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 128
    .local v4, massDialog:Lcom/lge/camera/dialog/MassStorageRotatableDialog;
    invoke-virtual {v4}, Lcom/lge/camera/dialog/MassStorageRotatableDialog;->create()V

    .line 129
    iget-object v8, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v9, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 132
    .end local v4           #massDialog:Lcom/lge/camera/dialog/MassStorageRotatableDialog;
    :sswitch_4
    new-instance v7, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v7, v8}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 133
    .local v7, videoLengthDialog:Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;
    invoke-virtual {v7}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;->create()V

    .line 134
    iget-object v8, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v9, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 137
    .end local v7           #videoLengthDialog:Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;
    :sswitch_5
    new-instance v6, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v6, v8}, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 138
    .local v6, storageDialog:Lcom/lge/camera/dialog/StoragePopupRotatableDialog;
    invoke-virtual {v6}, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->create()V

    .line 139
    iget-object v8, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v9, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 142
    .end local v6           #storageDialog:Lcom/lge/camera/dialog/StoragePopupRotatableDialog;
    :sswitch_6
    new-instance v5, Lcom/lge/camera/dialog/ProgressRotatableDialog;

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v5, v8}, Lcom/lge/camera/dialog/ProgressRotatableDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 143
    .local v5, prDialog:Lcom/lge/camera/dialog/ProgressRotatableDialog;
    invoke-virtual {v5}, Lcom/lge/camera/dialog/ProgressRotatableDialog;->create()V

    .line 144
    iget-object v8, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v9, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 147
    .end local v5           #prDialog:Lcom/lge/camera/dialog/ProgressRotatableDialog;
    :sswitch_7
    new-instance v0, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v0, v8}, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 148
    .local v0, disabledDialog:Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;
    invoke-virtual {v0}, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;->create()V

    .line 149
    iget-object v8, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v9, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 110
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_1
        0xe -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x16 -> :sswitch_6
        0x17 -> :sswitch_2
        0x20 -> :sswitch_7
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    .line 346
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 347
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->isRotateDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v1, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/DialogController;->mCurrentDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onDismissRotateDialog()V
    .locals 3

    .prologue
    .line 289
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v2, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/dialog/RotateDialog;

    .line 294
    .local v0, dialog:Lcom/lge/camera/dialog/RotateDialog;
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/lge/camera/dialog/RotateDialog;->onDismiss()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 321
    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->dismissCurrentDialog()V

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->onDismissRotateDialog()V

    .line 331
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 332
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 268
    if-nez p2, :cond_0

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    iput p1, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    .line 272
    iput-object p2, p0, Lcom/lge/camera/controller/DialogController;->mCurrentDialog:Landroid/app/Dialog;

    .line 273
    const-string v0, "CameraApp"

    const-string v1, "onPrepare"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 336
    const-string v0, "CameraApp"

    const-string v1, "onResume-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 338
    return-void
.end method

.method public setCurrentDialog(Landroid/app/Dialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lge/camera/controller/DialogController;->mCurrentDialog:Landroid/app/Dialog;

    .line 48
    return-void
.end method

.method public setDialogID(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 53
    iput p1, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    .line 54
    return-void
.end method

.method public showDialogPopup(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 60
    iput p1, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    .line 61
    packed-switch p1, :pswitch_data_0

    .line 102
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->showDialog(I)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 65
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/DialogController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/DialogController;->onCreateRotateableDialog(I)V

    .line 78
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.Rotate"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_3
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useHelpGuidePopup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/DialogController;->onCreateHelpGuideDialog(I)V

    .line 91
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.Rotate"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/DialogController;->onCreateHelpGuideDialog(I)V

    .line 95
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.Rotate"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public startRotation(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/lge/camera/controller/DialogController;->mRotateDialogs:Ljava/util/HashMap;

    iget v2, p0, Lcom/lge/camera/controller/DialogController;->dialogId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/dialog/RotateDialog;

    .line 197
    .local v0, dialog:Lcom/lge/camera/dialog/RotateDialog;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p1}, Lcom/lge/camera/dialog/RotateDialog;->startRotation(I)V

    .line 200
    :cond_0
    return-void
.end method
