.class Lcom/lge/camera/PostviewActivity$20;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2185
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 2187
    const-string v7, "CameraApp"

    const-string v8, "mThumbnailButtonListener clicked."

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v7}, Lcom/lge/camera/PostviewActivity;->checkPauseAndAutoReview()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2243
    :goto_0
    return-void

    .line 2192
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 2194
    :pswitch_0
    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v7}, Lcom/lge/camera/PostviewActivity;->getPostviewMenuState()I

    move-result v7

    if-eq v7, v10, :cond_4

    .line 2195
    const-string v7, "CameraApp"

    const-string v8, "goto gallery"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v7}, Lcom/lge/camera/PostviewActivity;->getIsMultiSelectMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2198
    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v7, v9}, Lcom/lge/camera/PostviewActivity;->displayCheckbox(Z)V

    .line 2199
    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v7, v9}, Lcom/lge/camera/PostviewActivity;->setMenuDim(Z)V

    .line 2201
    :cond_1
    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v7, v10}, Lcom/lge/camera/PostviewActivity;->setPostviewMenuState(I)V

    .line 2202
    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lge/camera/PostviewActivity;->access$1100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2203
    .local v2, imageListSize:I
    const/4 v6, 0x0

    .line 2204
    .local v6, upToDateUri:Landroid/net/Uri;
    const/4 v7, 0x1

    if-le v2, v7, :cond_2

    .line 2205
    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lge/camera/PostviewActivity;->access$1100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lge/camera/PostviewActivity;->access$1100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #upToDateUri:Landroid/net/Uri;
    check-cast v6, Landroid/net/Uri;

    .line 2210
    .restart local v6       #upToDateUri:Landroid/net/Uri;
    :goto_1
    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v7}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2211
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 2215
    .local v3, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v7, "com.android.gallery3d"

    const/16 v8, 0x80

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2222
    const/4 v4, 0x0

    .line 2224
    .local v4, intent:Landroid/content/Intent;
    iget-boolean v7, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v7, :cond_3

    .line 2225
    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v7, v9}, Lcom/lge/camera/PostviewActivity;->setPostviewMenuState(I)V

    .line 2226
    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lcom/lge/camera/PostviewActivity;->showDialog(I)V

    goto :goto_0

    .line 2207
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lge/camera/PostviewActivity;->access$1100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #upToDateUri:Landroid/net/Uri;
    check-cast v6, Landroid/net/Uri;

    .restart local v6       #upToDateUri:Landroid/net/Uri;
    goto :goto_1

    .line 2216
    .restart local v3       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v5       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 2217
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "CameraApp"

    const-string v8, "Gallery is not founded:"

    invoke-static {v7, v8, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2218
    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v7, v9}, Lcom/lge/camera/PostviewActivity;->setPostviewMenuState(I)V

    goto/16 :goto_0

    .line 2228
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_3
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v7, "com.android.camera.action.REVIEW"

    invoke-direct {v4, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2229
    .restart local v4       #intent:Landroid/content/Intent;
    const/high16 v7, 0x400

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2231
    :try_start_1
    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v7, v4}, Lcom/lge/camera/PostviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2232
    :catch_1
    move-exception v1

    .line 2233
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    iget-object v7, p0, Lcom/lge/camera/PostviewActivity$20;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v7, v9}, Lcom/lge/camera/PostviewActivity;->setPostviewMenuState(I)V

    .line 2234
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "review fail! uri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2238
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #imageListSize:I
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #upToDateUri:Landroid/net/Uri;
    :cond_4
    const-string v7, "CameraApp"

    const-string v8, "Gallery is launching already."

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2192
    nop

    :pswitch_data_0
    .packed-switch 0x7f09004b
        :pswitch_0
    .end packed-switch
.end method
