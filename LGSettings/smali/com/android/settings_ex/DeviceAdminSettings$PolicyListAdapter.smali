.class Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PolicyListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings_ex/DeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DeviceAdminSettings;)V
    .locals 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 151
    invoke-virtual {p1}, Lcom/android/settings_ex/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 153
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 10
    .parameter "view"
    .parameter "position"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 209
    .local v8, activity:Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;

    .line 210
    .local v9, vh:Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;
    iget-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DeviceAdminInfo;

    .line 211
    .local v3, item:Landroid/app/admin/DeviceAdminInfo;
    iget-object v0, v9, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v0, v9, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, v9, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v1, v1, Lcom/android/settings_ex/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 215
    :try_start_0
    iget-object v0, v9, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, v9, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, v9, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v6, v9, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v7, v9, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings_ex/MDMSettingsAdapter;->setAdminListEnableDisplayMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/app/admin/DeviceAdminInfo;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    .line 222
    :cond_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 168
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 187
    if-nez p2, :cond_0

    .line 188
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->bindView(Landroid/view/View;I)V

    .line 193
    return-object v0

    .line 190
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 177
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings_ex/MDMSettingsAdapter;->setAdminListEnableClickMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 197
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040046

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 198
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;-><init>()V

    .line 199
    .local v0, h:Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;
    const v2, 0x7f0b0039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 200
    const v2, 0x7f0b00a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    .line 201
    const v2, 0x7f0b00ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 202
    const v2, 0x7f0b00aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    .line 203
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    return-object v1
.end method
