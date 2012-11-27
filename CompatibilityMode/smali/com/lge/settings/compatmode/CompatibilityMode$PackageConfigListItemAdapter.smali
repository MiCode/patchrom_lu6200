.class final Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "CompatibilityMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/settings/compatmode/CompatibilityMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageConfigListItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/settings/compatmode/CompatibilityMode;


# direct methods
.method public constructor <init>(Lcom/lge/settings/compatmode/CompatibilityMode;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;->this$0:Lcom/lge/settings/compatmode/CompatibilityMode;

    .line 146
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 147
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;

    .line 152
    .local v0, cache:Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->packageName:Ljava/lang/String;

    .line 153
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->appName:Ljava/lang/String;

    .line 154
    iget-object v5, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->nameView:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const/4 v4, 0x0

    .line 157
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v5, p0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;->this$0:Lcom/lge/settings/compatmode/CompatibilityMode;

    invoke-virtual {v5}, Lcom/lge/settings/compatmode/CompatibilityMode;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 162
    :goto_0
    iget-object v5, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    const/4 v1, 0x0

    .line 166
    .local v1, compatMod:I
    :try_start_1
    iget-object v5, p0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;->this$0:Lcom/lge/settings/compatmode/CompatibilityMode;

    #getter for: Lcom/lge/settings/compatmode/CompatibilityMode;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v5}, Lcom/lge/settings/compatmode/CompatibilityMode;->access$000(Lcom/lge/settings/compatmode/CompatibilityMode;)Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 170
    :goto_1
    iget-object v5, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 172
    sparse-switch v1, :sswitch_data_0

    .line 186
    const-string v5, "CompatibilityMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ActivityManager.COMPAT_MODE?: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v5, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 190
    :goto_2
    return-void

    .line 158
    .end local v1           #compatMod:I
    :catch_0
    move-exception v3

    .line 160
    .local v3, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 167
    .end local v3           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #compatMod:I
    :catch_1
    move-exception v2

    .line 168
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 175
    .end local v2           #e:Landroid/os/RemoteException;
    :sswitch_0
    iget-object v5, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 179
    :sswitch_1
    iget-object v5, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x63 -> :sswitch_0
    .end sparse-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 194
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 195
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;

    invoke-direct {v0}, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;-><init>()V

    .line 196
    .local v0, cache:Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;
    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->iconView:Landroid/widget/ImageView;

    .line 197
    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->nameView:Landroid/widget/TextView;

    .line 198
    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;->checkBox:Landroid/widget/CheckBox;

    .line 199
    new-instance v2, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter$1;

    invoke-direct {v2, p0}, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter$1;-><init>(Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 231
    return-object v1
.end method
