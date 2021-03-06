.class public Lcom/android/settings_ex/AppWidgetPickActivity;
.super Lcom/android/settings_ex/ActivityPicker;
.source "AppWidgetPickActivity.java"


# instance fields
.field private mAppWidgetId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/ActivityPicker;-><init>()V

    return-void
.end method


# virtual methods
.method protected getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;>;"
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AppWidgetPickActivity;->putInstalledAppWidgets(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AppWidgetPickActivity;->putCustomAppWidgets(Ljava/util/List;)V

    new-instance v1, Lcom/android/settings_ex/AppWidgetPickActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/AppWidgetPickActivity$1;-><init>(Lcom/android/settings_ex/AppWidgetPickActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/AppWidgetPickActivity;->getIntentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/settings_ex/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/AppWidgetPickActivity;->finish()V

    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v4, p0, Lcom/android/settings_ex/AppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    const/4 v2, -0x1

    .line 162
    .local v2, result:I
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    goto :goto_0

    .line 154
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    .restart local v2       #result:I
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/AppWidgetPickActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-super {p0, p1}, Lcom/android/settings_ex/ActivityPicker;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/settings_ex/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/AppWidgetPickActivity;->mAppWidgetId:I

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/AppWidgetPickActivity;->finish()V

    goto :goto_0
.end method

.method putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, appWidgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .local p2, customExtras:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    .local p3, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;>;"
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .local v2, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .local v4, label:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings_ex/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 183
    if-nez v1, :cond_2

    .line 184
    const-string v6, "AppWidgetPickActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t load icon drawable 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v3, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;

    invoke-direct {v3, p0, v4, v1}, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .local v3, item:Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;
    iget-object v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    .line 192
    iget-object v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->className:Ljava/lang/String;

    .line 194
    if-eqz p2, :cond_3

    .line 195
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    iput-object v6, v3, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->extras:Landroid/os/Bundle;

    :cond_3
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v3, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    const-string v7, "com.lge"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 201
    invoke-interface {p3, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 175
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method putCustomAppWidgets(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 85
    .local v4, extras:Landroid/os/Bundle;
    if-eqz v4, :cond_2

    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, customInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v0, 0x0

    .line 90
    .local v0, customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v7, "customInfo"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 92
    :cond_0
    const-string v7, "AppWidgetPickActivity"

    const-string v8, "EXTRA_CUSTOM_INFO not present."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/settings_ex/AppWidgetPickActivity;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .end local v0           #customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v2           #customInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_2
    return-void

    .restart local v0       #customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v2       #customInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 97
    .local v3, customInfoSize:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 98
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    .line 99
    .local v6, p:Landroid/os/Parcelable;
    if-eqz v6, :cond_4

    instance-of v7, v6, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v7, :cond_5

    .line 100
    :cond_4
    const/4 v2, 0x0

    .line 101
    const-string v7, "AppWidgetPickActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error using EXTRA_CUSTOM_INFO index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 106
    .end local v6           #p:Landroid/os/Parcelable;
    :cond_6
    const-string v7, "customExtras"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    if-nez v0, :cond_7

    .line 108
    const/4 v2, 0x0

    .line 109
    const-string v7, "AppWidgetPickActivity"

    const-string v8, "EXTRA_CUSTOM_INFO without EXTRA_CUSTOM_EXTRAS"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 114
    .local v1, customExtrasSize:I
    if-eq v3, v1, :cond_8

    .line 115
    const-string v7, "AppWidgetPickActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "list size mismatch: EXTRA_CUSTOM_INFO: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " EXTRA_CUSTOM_EXTRAS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_8
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_1

    .line 122
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    .line 123
    .restart local v6       #p:Landroid/os/Parcelable;
    if-eqz v6, :cond_9

    instance-of v7, v6, Landroid/os/Bundle;

    if-nez v7, :cond_a

    .line 124
    :cond_9
    const/4 v2, 0x0

    .line 125
    const/4 v0, 0x0

    .line 126
    const-string v7, "AppWidgetPickActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error using EXTRA_CUSTOM_EXTRAS index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 121
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method putInstalledAppWidgets(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;>;"
    iget-object v1, p0, Lcom/android/settings_ex/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .local v0, installed:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings_ex/AppWidgetPickActivity;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method setResultData(ILandroid/content/Intent;)V
    .locals 3
    .parameter "code"
    .parameter "intent"

    .prologue
    .line 244
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 245
    .local v0, result:Landroid/content/Intent;
    :goto_0
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/settings_ex/AppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/AppWidgetPickActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    .end local v0           #result:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method
