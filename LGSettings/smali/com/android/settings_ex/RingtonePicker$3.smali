.class Lcom/android/settings_ex/RingtonePicker$3;
.super Ljava/lang/Object;
.source "RingtonePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RingtonePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RingtonePicker;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RingtonePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const v11, 0x7f0809f0

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 406
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    iget-object v3, v5, Lcom/android/settings_ex/RingtonePicker;->position_uri:Landroid/net/Uri;

    .line 410
    .local v3, uri:Landroid/net/Uri;
    sget-boolean v5, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #getter for: Lcom/android/settings_ex/RingtonePicker;->mDrmRingtone:Z
    invoke-static {v5}, Lcom/android/settings_ex/RingtonePicker;->access$200(Lcom/android/settings_ex/RingtonePicker;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 412
    iget-object v4, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-virtual {v5, v11}, Lcom/android/settings_ex/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 416
    iget-object v4, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/RingtonePicker;->setResult(I)V

    .line 515
    :goto_0
    return-void

    .line 419
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 421
    .local v2, resultIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #getter for: Lcom/android/settings_ex/RingtonePicker;->mClickedPos:I
    invoke-static {v5}, Lcom/android/settings_ex/RingtonePicker;->access$300(Lcom/android/settings_ex/RingtonePicker;)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #getter for: Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtonePos:I
    invoke-static {v6}, Lcom/android/settings_ex/RingtonePicker;->access$400(Lcom/android/settings_ex/RingtonePicker;)I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 424
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #getter for: Lcom/android/settings_ex/RingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/settings_ex/RingtonePicker;->access$500(Lcom/android/settings_ex/RingtonePicker;)Landroid/net/Uri;

    move-result-object v3

    .line 457
    :cond_1
    :goto_1
    if-eqz v3, :cond_4

    .line 459
    const-string v5, "content://settings/system/ringtone"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 460
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    iget v5, v5, Lcom/android/settings_ex/RingtonePicker;->internal_ringtone_position:I

    if-ne v5, v9, :cond_7

    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    iget v5, v5, Lcom/android/settings_ex/RingtonePicker;->external_ringtone_position:I

    if-ne v5, v9, :cond_7

    .line 461
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-virtual {v5}, Lcom/android/settings_ex/RingtonePicker;->getDefaultPhoneRingtone()Landroid/net/Uri;

    move-result-object v3

    .line 469
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    iget v5, v5, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-ne v5, v8, :cond_8

    .line 470
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-virtual {v5}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ringtone"

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 513
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-virtual {v4}, Lcom/android/settings_ex/RingtonePicker;->finish()V

    goto :goto_0

    .line 425
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #getter for: Lcom/android/settings_ex/RingtonePicker;->mClickedPos:I
    invoke-static {v5}, Lcom/android/settings_ex/RingtonePicker;->access$300(Lcom/android/settings_ex/RingtonePicker;)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #getter for: Lcom/android/settings_ex/RingtonePicker;->mSilentPos:I
    invoke-static {v6}, Lcom/android/settings_ex/RingtonePicker;->access$600(Lcom/android/settings_ex/RingtonePicker;)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 427
    const/4 v3, 0x0

    goto :goto_1

    .line 429
    :cond_6
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    iget-object v3, v5, Lcom/android/settings_ex/RingtonePicker;->position_uri:Landroid/net/Uri;

    .line 432
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/settings_ex/RingtonePicker;->GetFilePath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/settings_ex/RingtonePicker;->access$700(Lcom/android/settings_ex/RingtonePicker;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 435
    const-string v5, "RingToneTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onClick] uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #calls: Lcom/android/settings_ex/RingtonePicker;->checkDRM(Ljava/lang/String;)I
    invoke-static {v5, v1}, Lcom/android/settings_ex/RingtonePicker;->access$800(Lcom/android/settings_ex/RingtonePicker;Ljava/lang/String;)I

    move-result v0

    .line 438
    .local v0, nStatus:I
    if-ne v0, v8, :cond_1

    .line 439
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #setter for: Lcom/android/settings_ex/RingtonePicker;->mDrmRingtone:Z
    invoke-static {v5, v10}, Lcom/android/settings_ex/RingtonePicker;->access$202(Lcom/android/settings_ex/RingtonePicker;Z)Z

    .line 440
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    iget-object v6, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-virtual {v6, v11}, Lcom/android/settings_ex/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 445
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #getter for: Lcom/android/settings_ex/RingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/settings_ex/RingtonePicker;->access$500(Lcom/android/settings_ex/RingtonePicker;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_1

    .line 464
    .end local v0           #nStatus:I
    .end local v1           #path:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #calls: Lcom/android/settings_ex/RingtonePicker;->getURI()Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/settings_ex/RingtonePicker;->access$900(Lcom/android/settings_ex/RingtonePicker;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_2

    .line 476
    :cond_8
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    iget v5, v5, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 477
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-virtual {v5}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_sound"

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_9
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 483
    :cond_a
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    iget v5, v5, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_c

    .line 484
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-virtual {v5}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "alarm_alert"

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_b
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 490
    :cond_c
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    iget v5, v5, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_e

    .line 491
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-virtual {v5}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ringtone_sim2"

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_d
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 497
    :cond_e
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    iget v5, v5, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_10

    .line 498
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-virtual {v5}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_sound_sim2"

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_f
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 504
    :cond_10
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    iget v5, v5, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v6, 0x20

    if-ne v5, v6, :cond_4

    .line 505
    iget-object v5, p0, Lcom/android/settings_ex/RingtonePicker$3;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-virtual {v5}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ringtone_videocall"

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_11
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3
.end method
