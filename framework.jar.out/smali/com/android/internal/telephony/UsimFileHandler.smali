.class public final Lcom/android/internal/telephony/UsimFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_UsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "RIL_UsimFH"

    const-string v1, "UsimFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 106
    const-string v0, "3F007F105F3A"

    .line 108
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 86
    :sswitch_1
    const-string v0, "3F007F105F3A"

    goto :goto_0

    .line 89
    :sswitch_2
    const-string v0, "3F007F25"

    goto :goto_0

    .line 94
    :sswitch_3
    const-string v0, "3F007FFF5F3D"

    goto :goto_0

    .line 98
    :sswitch_4
    const-string v0, "3F007FFF7F665F30"

    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f24 -> :sswitch_0
        0x4f22 -> :sswitch_3
        0x4f2c -> :sswitch_2
        0x4f30 -> :sswitch_1
        0x4f34 -> :sswitch_4
        0x4f55 -> :sswitch_3
        0x6f07 -> :sswitch_0
        0x6f11 -> :sswitch_0
        0x6f13 -> :sswitch_0
        0x6f14 -> :sswitch_0
        0x6f15 -> :sswitch_0
        0x6f16 -> :sswitch_0
        0x6f17 -> :sswitch_0
        0x6f18 -> :sswitch_0
        0x6f37 -> :sswitch_0
        0x6f38 -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f42 -> :sswitch_0
        0x6f43 -> :sswitch_0
        0x6f46 -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4e -> :sswitch_0
        0x6f56 -> :sswitch_0
        0x6f60 -> :sswitch_0
        0x6f61 -> :sswitch_0
        0x6f62 -> :sswitch_0
        0x6f7b -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc6 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 112
    const-string v0, "RIL_UsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 116
    const-string v0, "RIL_UsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method
