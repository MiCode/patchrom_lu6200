.class public Lcom/lge/camera/module/ModuleFactory;
.super Ljava/lang/Object;
.source "ModuleFactory.java"


# instance fields
.field mCurrentModule:Lcom/lge/camera/module/Module;

.field mCurrentModuleName:Ljava/lang/String;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/camera/module/Module;",
            ">;"
        }
    .end annotation
.end field

.field mMediator:Lcom/lge/camera/Mediator;

.field mWorkerPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/lge/camera/Mediator;)V
    .locals 2
    .parameter "packageName"
    .parameter "mediator"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/module/ModuleFactory;->mHashMap:Ljava/util/HashMap;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/module/ModuleFactory;->mWorkerPackageName:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/lge/camera/module/ModuleFactory;->mMediator:Lcom/lge/camera/Mediator;

    .line 18
    iput-object v1, p0, Lcom/lge/camera/module/ModuleFactory;->mCurrentModule:Lcom/lge/camera/module/Module;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/module/ModuleFactory;->mCurrentModuleName:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/lge/camera/module/ModuleFactory;->mWorkerPackageName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/lge/camera/module/ModuleFactory;->mMediator:Lcom/lge/camera/Mediator;

    .line 30
    return-void
.end method


# virtual methods
.method public getCurrentModule()Lcom/lge/camera/module/Module;
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, module:Lcom/lge/camera/module/Module;
    iget-object v1, p0, Lcom/lge/camera/module/ModuleFactory;->mHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/lge/camera/module/ModuleFactory;->mCurrentModuleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/lge/camera/module/ModuleFactory;->mHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/lge/camera/module/ModuleFactory;->mCurrentModuleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/module/Module;

    iput-object v1, p0, Lcom/lge/camera/module/ModuleFactory;->mCurrentModule:Lcom/lge/camera/module/Module;

    .line 43
    iget-object v0, p0, Lcom/lge/camera/module/ModuleFactory;->mCurrentModule:Lcom/lge/camera/module/Module;

    .line 45
    :cond_0
    return-object v0
.end method

.method public getCurrentModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/camera/module/ModuleFactory;->mCurrentModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Lcom/lge/camera/module/Module;
    .locals 8
    .parameter "name"

    .prologue
    .line 53
    iget-object v5, p0, Lcom/lge/camera/module/ModuleFactory;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    iget-object v5, p0, Lcom/lge/camera/module/ModuleFactory;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/module/Module;

    .line 69
    :goto_0
    return-object v5

    .line 57
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/lge/camera/module/ModuleFactory;->mWorkerPackageName:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, classFullName:Ljava/lang/StringBuffer;
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/lge/camera/Mediator;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 62
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lge/camera/module/ModuleFactory;->mMediator:Lcom/lge/camera/Mediator;

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/module/Module;

    .line 63
    .local v4, module:Lcom/lge/camera/module/Module;
    iget-object v5, p0, Lcom/lge/camera/module/ModuleFactory;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0, p1}, Lcom/lge/camera/module/ModuleFactory;->setCurrentModule(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v4

    .line 65
    goto :goto_0

    .line 66
    .end local v0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #classFullName:Ljava/lang/StringBuffer;
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v4           #module:Lcom/lge/camera/module/Module;
    :catch_0
    move-exception v3

    .line 67
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCommand error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public setCurrentModule(Ljava/lang/String;)V
    .locals 1
    .parameter "module"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/module/ModuleFactory;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iput-object p1, p0, Lcom/lge/camera/module/ModuleFactory;->mCurrentModuleName:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/lge/camera/module/ModuleFactory;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/module/Module;

    iput-object v0, p0, Lcom/lge/camera/module/ModuleFactory;->mCurrentModule:Lcom/lge/camera/module/Module;

    .line 37
    :cond_0
    return-void
.end method
