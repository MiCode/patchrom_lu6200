.class Lcom/android/settings_ex/wifi/Summary;
.super Ljava/lang/Object;
.source "Summary.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "state"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/settings_ex/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "ssid"
    .parameter "state"

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez p1, :cond_2

    const v2, 0x7f090023

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, formats:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 30
    .local v1, index:I
    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    .line 34
    :cond_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 35
    :cond_1
    const/4 v2, 0x0

    .line 37
    :goto_1
    return-object v2

    .line 26
    .end local v0           #formats:[Ljava/lang/String;
    .end local v1           #index:I
    :cond_2
    const v2, 0x7f090024

    goto :goto_0

    .line 37
    .restart local v0       #formats:[Ljava/lang/String;
    .restart local v1       #index:I
    :cond_3
    aget-object v2, v0, v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
