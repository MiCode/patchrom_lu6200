.class Lcom/lge/camera/command/ShowSubMenu$2;
.super Ljava/lang/Object;
.source "ShowSubMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/command/ShowSubMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/ShowSubMenu;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/ShowSubMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 212
    iget-object v3, p0, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v3, v3, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v3, v3, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v3, v3, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget v4, v4, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 216
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setValueIndex(I)V

    .line 220
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getSubMenuCount()I

    move-result v2

    .local v2, size:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 221
    iget-object v3, p0, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v3, v3, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v3, v5}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 222
    iget-object v3, p0, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v3, v3, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v3, v5}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v3, p1

    .line 224
    check-cast v3, Lcom/lge/camera/components/RotateImageButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    .line 225
    iget-object v3, p0, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v3, v3, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v4, Lcom/lge/camera/command/ShowSubMenu$2$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/lge/camera/command/ShowSubMenu$2$1;-><init>(Lcom/lge/camera/command/ShowSubMenu$2;Lcom/lge/camera/setting/ListPreference;Landroid/view/View;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
