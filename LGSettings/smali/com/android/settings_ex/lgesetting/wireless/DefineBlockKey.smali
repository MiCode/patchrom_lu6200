.class Lcom/android/settings_ex/lgesetting/wireless/DefineBlockKey;
.super Ljava/lang/Object;
.source "DefineBlockKey.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 9
    const/16 v0, 0x54

    if-ne p0, v0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
