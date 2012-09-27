.class public final Lcom/lge/provider/MediaStoreEx$Video;
.super Ljava/lang/Object;
.source "MediaStoreEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/MediaStoreEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Video"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 522
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 524
    return-void
.end method

.method public static getVideoFileType(I)Ljava/lang/String;
    .locals 1
    .parameter "fileType"

    .prologue
    .line 557
    const-string v0, "<unknown>"

    .line 559
    .local v0, type:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 620
    :goto_0
    return-object v0

    .line 562
    :sswitch_0
    const-string v0, "MP4"

    .line 563
    goto :goto_0

    .line 565
    :sswitch_1
    const-string v0, "M4V"

    .line 566
    goto :goto_0

    .line 568
    :sswitch_2
    const-string v0, "3GPP"

    .line 569
    goto :goto_0

    .line 571
    :sswitch_3
    const-string v0, "3GPP2"

    .line 572
    goto :goto_0

    .line 574
    :sswitch_4
    const-string v0, "WMV"

    .line 575
    goto :goto_0

    .line 577
    :sswitch_5
    const-string v0, "ASF"

    .line 578
    goto :goto_0

    .line 580
    :sswitch_6
    const-string v0, "MKV"

    .line 581
    goto :goto_0

    .line 583
    :sswitch_7
    const-string v0, "MP2TS"

    .line 584
    goto :goto_0

    .line 586
    :sswitch_8
    const-string v0, "AVI"

    .line 587
    goto :goto_0

    .line 589
    :sswitch_9
    const-string v0, "WEBM"

    .line 590
    goto :goto_0

    .line 592
    :sswitch_a
    const-string v0, "DIVX"

    .line 593
    goto :goto_0

    .line 595
    :sswitch_b
    const-string v0, "MP2PS"

    .line 596
    goto :goto_0

    .line 598
    :sswitch_c
    const-string v0, "DMB"

    .line 599
    goto :goto_0

    .line 601
    :sswitch_d
    const-string v0, "FLV"

    .line 602
    goto :goto_0

    .line 604
    :sswitch_e
    const-string v0, "MOV"

    .line 605
    goto :goto_0

    .line 607
    :sswitch_f
    const-string v0, "OGM"

    .line 608
    goto :goto_0

    .line 610
    :sswitch_10
    const-string v0, "K3G"

    .line 611
    goto :goto_0

    .line 613
    :sswitch_11
    const-string v0, "SKM"

    .line 614
    goto :goto_0

    .line 559
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_4
        0x1a -> :sswitch_5
        0x1b -> :sswitch_6
        0x1c -> :sswitch_7
        0x1d -> :sswitch_8
        0x1e -> :sswitch_9
        0x1f -> :sswitch_a
        0xc8 -> :sswitch_b
        0x258 -> :sswitch_c
        0x259 -> :sswitch_d
        0x25a -> :sswitch_e
        0x25b -> :sswitch_f
        0x25c -> :sswitch_10
        0x25d -> :sswitch_11
    .end sparse-switch
.end method
