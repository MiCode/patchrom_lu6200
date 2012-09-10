.class public Lcom/lge/camera/setting/SettingMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingMenuAdapter.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static final CHILD_MENU:I = 0x1

.field public static final COLOR_BACKNORMAL:I = 0x5

.field public static final COLOR_BACKSELECT:I = 0x4

.field public static final COLOR_DISABLE:I = 0x3

.field public static final COLOR_NORMAL:I = 0x2

.field public static final COLOR_SELECT:I = 0x1

.field public static final PARENT_MENU:I


# instance fields
.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private isShowChild:Z

.field private isShowSelectedCheck:Z

.field private menus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lge/camera/setting/SettingMenu;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;)V
    .locals 1
    .parameter "context"
    .parameter "menus"

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/camera/setting/SettingMenuAdapter;-><init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;I)V
    .locals 2
    .parameter "context"
    .parameter "menus"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->isShowChild:Z

    .line 39
    iput-boolean v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->isShowSelectedCheck:Z

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->context:Ljava/lang/ref/WeakReference;

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->menus:Ljava/lang/ref/WeakReference;

    .line 49
    invoke-virtual {p2, p0}, Lcom/lge/camera/setting/SettingMenu;->addObserver(Ljava/util/Observer;)V

    .line 50
    iput p3, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    .line 51
    return-void
.end method

.method private getItemColor(I)I
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, -0x1

    .line 283
    packed-switch p1, :pswitch_data_0

    .line 291
    :goto_0
    :pswitch_0
    return v0

    .line 289
    :pswitch_1
    const v0, -0x777778

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getItemResource(I)I
    .locals 1
    .parameter "type"

    .prologue
    const v0, 0x7f02018a

    .line 296
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_0
    :pswitch_0
    return v0

    .line 298
    :pswitch_1
    const v0, 0x7f02018b

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getViewMenuItemDisable(Landroid/view/View;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 5
    .parameter "convertView"
    .parameter "tempContext"
    .parameter "tv"

    .prologue
    const/4 v4, 0x0

    .line 153
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemColor(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget v2, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    if-nez v2, :cond_2

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, leftMargin:I
    if-eqz p2, :cond_0

    .line 157
    const v2, 0x7f0a01c0

    invoke-static {p2, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 160
    :cond_0
    invoke-static {}, Lcom/lge/camera/setting/SettingMenuAdapter;->isArabLanguage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {p3, v0, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 165
    :goto_0
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemResource(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 173
    .end local v0           #leftMargin:I
    :goto_1
    return-void

    .line 163
    .restart local v0       #leftMargin:I
    :cond_1
    invoke-virtual {p3, v0, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 167
    .end local v0           #leftMargin:I
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f0a01c1

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 168
    .local v1, rightMargin:I
    invoke-static {}, Lcom/lge/camera/setting/SettingMenuAdapter;->isArabLanguage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    invoke-virtual {p3, v1, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 171
    :cond_3
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemResource(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private getViewMenuItemEnable(ILandroid/view/View;Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;Landroid/widget/TextView;)V
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "tempContext"
    .parameter "settingMenu"
    .parameter "tv"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 177
    iget v2, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    if-nez v2, :cond_3

    .line 178
    iget-boolean v2, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->isShowChild:Z

    if-eqz v2, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenuIndex()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 180
    invoke-direct {p0, v3}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemColor(I)I

    move-result v2

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    invoke-direct {p0, v6}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemResource(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 187
    :goto_0
    const/4 v0, 0x0

    .line 188
    .local v0, leftMargin:I
    if-eqz p3, :cond_0

    .line 189
    const v2, 0x7f0a01c0

    invoke-static {p3, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 192
    :cond_0
    invoke-static {}, Lcom/lge/camera/setting/SettingMenuAdapter;->isArabLanguage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    invoke-virtual {p5, v0, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 210
    .end local v0           #leftMargin:I
    :goto_1
    return-void

    .line 184
    :cond_1
    invoke-direct {p0, v5}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemColor(I)I

    move-result v2

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemResource(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 195
    .restart local v0       #leftMargin:I
    :cond_2
    invoke-virtual {p5, v0, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 198
    .end local v0           #leftMargin:I
    :cond_3
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v2

    iget v2, v2, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-ne v2, p1, :cond_5

    .line 199
    invoke-direct {p0, v3}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemColor(I)I

    move-result v2

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    :goto_2
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f0a01c1

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 205
    .local v1, rightMargin:I
    invoke-static {}, Lcom/lge/camera/setting/SettingMenuAdapter;->isArabLanguage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 206
    invoke-virtual {p5, v1, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 208
    :cond_4
    invoke-direct {p0, v6}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemResource(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 201
    .end local v1           #rightMargin:I
    :cond_5
    invoke-direct {p0, v5}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemColor(I)I

    move-result v2

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method public static isArabLanguage()Z
    .locals 2

    .prologue
    .line 267
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, currentLanguage:Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    :cond_0
    const/4 v1, 0x1

    .line 273
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCheckImage(ILandroid/view/View;Lcom/lge/camera/setting/SettingMenu;Lcom/lge/camera/setting/SettingMenuItem;)V
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "settingMenu"
    .parameter "menuItem"

    .prologue
    const/4 v2, 0x1

    .line 139
    iget v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    if-ne v1, v2, :cond_0

    .line 140
    const v1, 0x7f0900c8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 141
    .local v0, checkImage:Landroid/widget/ImageView;
    iget-boolean v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->isShowSelectedCheck:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p4, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    iget v1, v1, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-ne p1, v1, :cond_1

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    invoke-direct {p0, v2}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 149
    .end local v0           #checkImage:Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 146
    .restart local v0       #checkImage:Landroid/widget/ImageView;
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSettingImages(ILandroid/view/View;Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;Lcom/lge/camera/setting/SettingMenuItem;Landroid/widget/TextView;)V
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "tempContext"
    .parameter "settingMenu"
    .parameter "menuItem"
    .parameter "menuText"

    .prologue
    const v6, 0x7f0900c6

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 98
    iget v3, p5, Lcom/lge/camera/setting/SettingMenuItem;->iconResourceId:I

    if-eqz v3, :cond_6

    .line 99
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 100
    .local v0, icon:Landroid/widget/ImageView;
    iget v3, p5, Lcom/lge/camera/setting/SettingMenuItem;->iconResourceId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget v3, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    if-nez v3, :cond_5

    .line 102
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, leftMargin:I
    if-eqz p3, :cond_0

    .line 105
    const v3, 0x7f0a01c0

    invoke-static {p3, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 108
    :cond_0
    invoke-static {}, Lcom/lge/camera/setting/SettingMenuAdapter;->isArabLanguage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    invoke-virtual {p6, v1, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 114
    :goto_0
    iget-boolean v3, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->isShowChild:Z

    if-eqz v3, :cond_3

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenuIndex()I

    move-result v3

    if-ne v3, p1, :cond_3

    .line 116
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 135
    .end local v1           #leftMargin:I
    :cond_1
    :goto_1
    return-void

    .line 111
    .restart local v1       #leftMargin:I
    :cond_2
    invoke-virtual {p6, v1, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 118
    :cond_3
    iget-boolean v3, p5, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eqz v3, :cond_4

    .line 119
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 121
    :cond_4
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 125
    .end local v1           #leftMargin:I
    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const v4, 0x7f0a01c1

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 127
    .local v2, rightMargin:I
    invoke-static {}, Lcom/lge/camera/setting/SettingMenuAdapter;->isArabLanguage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    invoke-virtual {p6, v2, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 132
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v2           #rightMargin:I
    :cond_6
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 133
    .restart local v0       #icon:Landroid/widget/ImageView;
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->menus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 55
    .local v0, settingMenu:Lcom/lge/camera/setting/SettingMenu;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p0}, Lcom/lge/camera/setting/SettingMenu;->deleteObserver(Ljava/util/Observer;)V

    .line 58
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->menus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 214
    .local v0, settingMenu:Lcom/lge/camera/setting/SettingMenu;
    if-nez v0, :cond_0

    .line 215
    const-string v1, "CameraApp"

    const-string v2, "Cannot return menu counting because settingMenu is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v1, 0x0

    .line 223
    :goto_0
    return v1

    .line 219
    :cond_0
    iget v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    if-nez v1, :cond_1

    .line 220
    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getMenuCount()I

    move-result v1

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuItem;->getChildCount()I

    move-result v1

    goto :goto_0
.end method

.method public getItem(I)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 3
    .parameter "position"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->menus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 229
    .local v0, settingMenu:Lcom/lge/camera/setting/SettingMenu;
    if-nez v0, :cond_0

    .line 230
    const-string v1, "CameraApp"

    const-string v2, "Cannot return menu item because settingMenu is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x0

    .line 238
    :goto_0
    return-object v1

    .line 234
    :cond_0
    iget v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    if-nez v1, :cond_1

    .line 235
    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/camera/setting/SettingMenuItem;->getChild(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 243
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 69
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/setting/SettingMenuAdapter;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .line 70
    .local v6, tempContext:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/setting/SettingMenuAdapter;->menus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/camera/setting/SettingMenu;

    .line 72
    .local v7, settingMenu:Lcom/lge/camera/setting/SettingMenu;
    if-nez p2, :cond_0

    if-eqz v6, :cond_0

    .line 73
    const-string v3, "layout_inflater"

    invoke-virtual {v6, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 74
    .local v16, vi:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    if-nez v3, :cond_2

    .line 75
    const v3, 0x7f030020

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 80
    .end local v16           #vi:Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v14

    .line 82
    .local v14, menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    if-eqz v14, :cond_1

    if-eqz p2, :cond_1

    .line 83
    const v3, 0x7f0900c7

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 84
    .local v8, menuText:Landroid/widget/TextView;
    iget-boolean v3, v14, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eqz v3, :cond_3

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    .line 85
    invoke-direct/range {v3 .. v8}, Lcom/lge/camera/setting/SettingMenuAdapter;->getViewMenuItemEnable(ILandroid/view/View;Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;Landroid/widget/TextView;)V

    .line 89
    :goto_1
    iget-object v3, v14, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v7, v14}, Lcom/lge/camera/setting/SettingMenuAdapter;->setCheckImage(ILandroid/view/View;Lcom/lge/camera/setting/SettingMenu;Lcom/lge/camera/setting/SettingMenuItem;)V

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object v12, v6

    move-object v13, v7

    move-object v15, v8

    .line 91
    invoke-direct/range {v9 .. v15}, Lcom/lge/camera/setting/SettingMenuAdapter;->setSettingImages(ILandroid/view/View;Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;Lcom/lge/camera/setting/SettingMenuItem;Landroid/widget/TextView;)V

    .line 93
    .end local v8           #menuText:Landroid/widget/TextView;
    :cond_1
    return-object p2

    .line 77
    .end local v14           #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    .restart local v16       #vi:Landroid/view/LayoutInflater;
    :cond_2
    const v3, 0x7f03001f

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 87
    .end local v16           #vi:Landroid/view/LayoutInflater;
    .restart local v8       #menuText:Landroid/widget/TextView;
    .restart local v14       #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v8}, Lcom/lge/camera/setting/SettingMenuAdapter;->getViewMenuItemDisable(Landroid/view/View;Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    .line 260
    .local v0, ci:Lcom/lge/camera/setting/SettingMenuItem;
    if-nez v0, :cond_0

    .line 261
    const/4 v1, 0x0

    .line 263
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    goto :goto_0
.end method

.method public setShowChild(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->isShowChild:Z

    .line 62
    return-void
.end method

.method public setShowSelectedChild(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->isShowSelectedCheck:Z

    .line 66
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenuAdapter;->notifyDataSetChanged()V

    .line 254
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenuAdapter;->notifyDataSetChanged()V

    .line 249
    return-void
.end method
