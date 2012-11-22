.class public Lcom/android/settings_ex/bluetooth/BluetoothvCardOptionActivity;
.super Landroid/app/ListActivity;
.source "BluetoothvCardOptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/BluetoothvCardOptionActivity$vCardOption;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 96
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, vCardOptionItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/bluetooth/BluetoothvCardOptionActivity$vCardOption;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, mList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .local v6, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "option_name"

    const v3, 0x7f080af7

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothvCardOptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "option_description"

    const v3, 0x7f080afa

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothvCardOptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v7, item2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "option_name"

    const v3, 0x7f080af8

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothvCardOptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "option_description"

    const v3, 0x7f080afb

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothvCardOptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f04001c

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "option_name"

    aput-object v1, v4, v11

    const-string v1, "option_description"

    aput-object v1, v4, v10

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .local v0, sAdapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothvCardOptionActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothvCardOptionActivity;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .local v8, listView:Landroid/widget/ListView;
    invoke-virtual {v8, v11}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v8, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    const-string v1, "persist.service.btui.nested"

    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v8, v10, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {v8, v11, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 52
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    if-nez p3, :cond_0

    const-string v0, "persist.service.btui.nested"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothvCardOptionActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "persist.service.btui.nested"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
