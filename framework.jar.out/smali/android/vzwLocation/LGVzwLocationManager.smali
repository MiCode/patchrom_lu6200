.class public final Landroid/vzwLocation/LGVzwLocationManager;
.super Ljava/lang/Object;
.source "LGVzwLocationManager.java"


# static fields
.field private static final LG_VZW_LOCATION_IMPL_CLASS:Ljava/lang/String; = "com.lge.vzwLocation.LGVzwLocation"

.field private static final TAG:Ljava/lang/String; = "LGVzwLoc"

.field private static final sLGVzwLoc:Landroid/vzwLocation/ILGVzwLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    :try_start_0
    const-string v2, "com.lge.vzwLocation.LGVzwLocation"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 20
    .local v1, lgVzwLocClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/vzwLocation/ILGVzwLocation;

    sput-object v2, Landroid/vzwLocation/LGVzwLocationManager;->sLGVzwLoc:Landroid/vzwLocation/ILGVzwLocation;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 28
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.lge.vzwLocation.LGVzwLocation could not be loaded"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 23
    .end local v0           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 24
    .local v0, ex:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.lge.vzwLocation.LGVzwLocation could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 25
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 26
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.lge.vzwLocation.LGVzwLocation could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVzwLocationManager()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    const-string v0, "LGVzwLoc"

    const-string v1, "LGVzwLocMngr:createVzwLocationManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v0, Landroid/vzwLocation/LGVzwLocationManager;->sLGVzwLoc:Landroid/vzwLocation/ILGVzwLocation;

    invoke-interface {v0}, Landroid/vzwLocation/ILGVzwLocation;->createVzwLocationManager()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
