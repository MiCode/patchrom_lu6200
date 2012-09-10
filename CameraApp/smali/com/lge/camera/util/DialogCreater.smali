.class public Lcom/lge/camera/util/DialogCreater;
.super Ljava/lang/Object;
.source "DialogCreater.java"


# static fields
.field public static final DIALOG_ID_CAMERA_DRIVER_NEED_RESET:I = 0x13

.field public static final DIALOG_ID_CANNOT_CONNECT_CAMERA:I = 0x12

.field public static final DIALOG_ID_DELETE_CONFIRM:I = 0x3

.field public static final DIALOG_ID_DELETE_CONFIRM_MULTI:I = 0x8

.field public static final DIALOG_ID_DELETE_CONFIRM_VIDEO:I = 0x9

.field public static final DIALOG_ID_DELETE_DONE:I = 0x4

.field public static final DIALOG_ID_ENABLE_GALLERY:I = 0x20

.field public static final DIALOG_ID_EULA_POPUP:I = 0x17

.field public static final DIALOG_ID_EXTERNAL_ADD_STORAGE_FULL:I = 0xb

.field public static final DIALOG_ID_EXTERNAL_NOTIFICATION:I = 0xd

.field public static final DIALOG_ID_EXTERNAL_STORAGE_FULL:I = 0x1

.field public static final DIALOG_ID_GEO_TAG:I = 0xa

.field public static final DIALOG_ID_HELP_BEAUTY_SHOT:I = 0x1c

.field public static final DIALOG_ID_HELP_CONTINUOUS_SHOT:I = 0x1b

.field public static final DIALOG_ID_HELP_HDR:I = 0x18

.field public static final DIALOG_ID_HELP_LIVE_EFFECT:I = 0x1e

.field public static final DIALOG_ID_HELP_OTHER:I = 0x1f

.field public static final DIALOG_ID_HELP_PANORAMA:I = 0x19

.field public static final DIALOG_ID_HELP_TIMEMACHINE:I = 0x1a

.field public static final DIALOG_ID_HELP_VOICE_PHOTO:I = 0x1d

.field public static final DIALOG_ID_INITIALIZE_CONFIG:I = 0x6

.field public static final DIALOG_ID_INTERNAL_NOTIFICATION:I = 0xc

.field public static final DIALOG_ID_NO_DELETE_SELECT:I = 0xf

.field public static final DIALOG_ID_NO_EXTERNAL:I = 0x0

.field public static final DIALOG_ID_NO_EXTERNAL_STORAGE:I = 0x7

.field public static final DIALOG_ID_PROGRESS:I = 0x16

.field public static final DIALOG_ID_RENAME:I = 0x5

.field public static final DIALOG_ID_SELECT_VIDEO_LENGTH:I = 0x10

.field public static final DIALOG_ID_SETAS_LIST:I = 0x15

.field public static final DIALOG_ID_SHARE_LIST:I = 0x14

.field public static final DIALOG_ID_STORAGE_CONNECTED_PC:I = 0x11

.field public static final DIALOG_ID_STORAGE_FULL:I = 0xe

.field public static final DIALOG_ID_STORAGE_FULL_SAVE:I = 0x2

.field public static final DIALOG_ID_TEST:I = 0x63


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 55
    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "listener1"

    .prologue
    const/4 v3, 0x0

    .line 61
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "listener1"
    .parameter "listener2"

    .prologue
    const/4 v4, 0x0

    .line 68
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "listener1"
    .parameter "listener2"
    .parameter "listener3"

    .prologue
    .line 76
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Object;)Landroid/app/Dialog;
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "listener1"
    .parameter "listener2"
    .parameter "listener3"
    .parameter "arg1"

    .prologue
    const v3, 0x7f0b0069

    const/4 v2, 0x0

    const v6, 0x1010355

    const v5, 0x7f0b002a

    const v4, 0x7f0b0020

    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    sparse-switch p1, :sswitch_data_0

    .line 234
    .end local p5
    :goto_0
    return-object v2

    .line 91
    .restart local p5
    :sswitch_0
    const v2, 0x7f0b006a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b006d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    .end local p5
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 100
    .restart local p5
    :sswitch_1
    const v2, 0x7f0b006a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b005f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 109
    :sswitch_2
    const v2, 0x7f0b006a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b006d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 118
    :sswitch_3
    const v2, 0x7f0b006b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 123
    :sswitch_4
    if-eqz p0, :cond_0

    .line 124
    const v2, 0x7f0b0127

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0262

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 133
    :sswitch_5
    const v2, 0x7f0b0127

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0258

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 141
    :sswitch_6
    if-eqz p0, :cond_0

    .line 142
    const v2, 0x7f0b0127

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0263

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 151
    :sswitch_7
    const v2, 0x7f0b012b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 156
    :sswitch_8
    const v2, 0x7f0b0126

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    check-cast p5, Landroid/view/View;

    .end local p5
    invoke-virtual {v2, p5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 164
    .restart local p5
    :sswitch_9
    const v2, 0x7f0b0022

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    check-cast p5, Landroid/view/View;

    .end local p5
    invoke-virtual {v2, p5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0029

    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 172
    .restart local p5
    :sswitch_a
    const v2, 0x7f0b0036

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 177
    :sswitch_b
    const v2, 0x7f0b0264

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0265

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b01d1

    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 193
    :sswitch_c
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 194
    .local v1, et:Landroid/widget/EditText;
    const-string v2, "Pick a color"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b002b

    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b002c

    invoke-virtual {v2, v3, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 201
    .end local v1           #et:Landroid/widget/EditText;
    :sswitch_d
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    check-cast p5, Landroid/view/View;

    .end local p5
    invoke-virtual {v2, p5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 209
    .restart local p5
    :sswitch_e
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    check-cast p5, Landroid/view/View;

    .end local p5
    invoke-virtual {v2, p5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 217
    .restart local p5
    :sswitch_f
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 224
    :sswitch_10
    const v2, 0x7f0b0269

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0267

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 88
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0x7 -> :sswitch_a
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_b
        0xb -> :sswitch_2
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_0
        0xf -> :sswitch_f
        0x20 -> :sswitch_10
        0x63 -> :sswitch_c
    .end sparse-switch
.end method
