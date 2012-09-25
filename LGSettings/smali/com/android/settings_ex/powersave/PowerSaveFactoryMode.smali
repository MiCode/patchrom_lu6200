.class public Lcom/android/settings_ex/powersave/PowerSaveFactoryMode;
.super Ljava/lang/Object;
.source "PowerSaveFactoryMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFactoryMode()Z
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    .line 12
    .local v0, factoryTest:Z
    const-string v2, "ro.factorytest"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    .local v1, factoryTestStr:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 17
    :cond_1
    return v0
.end method
