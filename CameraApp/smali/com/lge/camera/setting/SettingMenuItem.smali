.class public Lcom/lge/camera/setting/SettingMenuItem;
.super Ljava/lang/Object;
.source "SettingMenuItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field public enable:Z

.field public iconResourceId:I

.field private mChildList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/setting/SettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCommand:Ljava/lang/String;

.field private mParameterValue:Ljava/lang/String;

.field private mSettingIndex:I

.field public name:Ljava/lang/String;

.field public selectedChildPosition:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "settingIndex"
    .parameter "name"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mCommand:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mParameterValue:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    .line 25
    iput p1, p0, Lcom/lge/camera/setting/SettingMenuItem;->mSettingIndex:I

    .line 26
    iput-object p2, p0, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public addChild(Lcom/lge/camera/setting/SettingMenuItem;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "child list NOT EMPTY!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getChild(I)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mParameterValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    return-object v0
.end method

.method public getSettingIndex()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mSettingIndex:I

    return v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lge/camera/setting/SettingMenuItem;->mCommand:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eq v0, p1, :cond_0

    .line 95
    iput-boolean p1, p0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    .line 96
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIconResource(I)V
    .locals 0
    .parameter "iconResourceId"

    .prologue
    .line 42
    iput p1, p0, Lcom/lge/camera/setting/SettingMenuItem;->iconResourceId:I

    .line 43
    return-void
.end method

.method public setParameterValue(Ljava/lang/String;)V
    .locals 0
    .parameter "parameterValue"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lge/camera/setting/SettingMenuItem;->mParameterValue:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setSelectedChildBySettingIndex(I)V
    .locals 3
    .parameter "settingIndex"

    .prologue
    .line 50
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 51
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 52
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenuItem;->getSettingIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 53
    iput v1, p0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 51
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public setSelectedChildPosition(I)V
    .locals 0
    .parameter "selectedChildPosition"

    .prologue
    .line 46
    iput p1, p0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 47
    return-void
.end method
