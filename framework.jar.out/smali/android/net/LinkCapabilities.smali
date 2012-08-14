.class public Landroid/net/LinkCapabilities;
.super Ljava/lang/Object;
.source "LinkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkCapabilities$QosStatus;,
        Landroid/net/LinkCapabilities$CarrierRole;,
        Landroid/net/LinkCapabilities$Role;,
        Landroid/net/LinkCapabilities$Key;,
        Landroid/net/LinkCapabilities$QosTrafficClass;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/LinkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "LinkCapabilities"


# instance fields
.field protected mCapabilities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 619
    new-instance v0, Landroid/net/LinkCapabilities$1;

    invoke-direct {v0}, Landroid/net/LinkCapabilities$1;-><init>()V

    sput-object v0, Landroid/net/LinkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 438
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 439
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    .line 440
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkCapabilities;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 447
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 448
    if-eqz p1, :cond_0

    .line 449
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static createNeedsMap(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 4
    .parameter "applicationRole"

    .prologue
    .line 463
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    .line 464
    .local v0, cap:Landroid/net/LinkCapabilities;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/net/LinkCapabilities;->put(ILjava/lang/String;)V

    .line 467
    iget-object v1, v0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    return-object v0
.end method

.method protected static keyName(I)Ljava/lang/String;
    .locals 7
    .parameter "key"

    .prologue
    .line 741
    const-class v1, Landroid/net/LinkCapabilities$Key;

    .line 742
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/net/LinkCapabilities$Key;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 743
    .local v4, keyFields:[Ljava/lang/reflect/Field;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v0, v3

    .line 745
    .local v2, f:Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    if-ne p0, v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 754
    .end local v2           #f:Ljava/lang/reflect/Field;
    :goto_1
    return-object v6

    .line 749
    .restart local v2       #f:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v6

    .line 743
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 754
    .end local v2           #f:Ljava/lang/reflect/Field;
    :cond_1
    const-string v6, "UNKNOWN_KEY"

    goto :goto_1

    .line 746
    .restart local v2       #f:Ljava/lang/reflect/Field;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 641
    const-string v0, "LinkCapabilities"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-void
.end method

.method protected static validRWKeyValuePair(ILjava/lang/String;)Z
    .locals 13
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 651
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v8, v9

    .line 733
    :cond_0
    :goto_0
    :pswitch_1
    return v8

    .line 654
    :pswitch_2
    const-class v1, Landroid/net/LinkCapabilities$Role;

    .line 655
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/net/LinkCapabilities$Role;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 656
    .local v6, roleFields:[Ljava/lang/reflect/Field;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 658
    .local v3, f:Ljava/lang/reflect/Field;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v10

    if-eq p1, v10, :cond_0

    .line 656
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v3           #f:Ljava/lang/reflect/Field;
    :cond_1
    move v8, v9

    .line 667
    goto :goto_0

    .line 675
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/net/LinkCapabilities$Role;>;"
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #roleFields:[Ljava/lang/reflect/Field;
    :pswitch_3
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 679
    .local v7, testValue:I
    if-gez v7, :cond_0

    move v8, v9

    goto :goto_0

    .line 676
    .end local v7           #testValue:I
    :catch_0
    move-exception v2

    .local v2, ex:Ljava/lang/NumberFormatException;
    move v8, v9

    .line 677
    goto :goto_0

    .line 688
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 689
    const-string/jumbo v10, "udp"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "tcp"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    move v8, v9

    .line 690
    goto :goto_0

    .line 702
    :pswitch_5
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v7

    .line 707
    .restart local v7       #testValue:I
    if-eqz v7, :cond_0

    const/16 v10, 0xc

    if-eq v7, v10, :cond_0

    const/4 v10, 0x4

    if-eq v7, v10, :cond_0

    const/16 v10, 0xa

    if-eq v7, v10, :cond_0

    const/4 v10, 0x5

    if-eq v7, v10, :cond_0

    const/16 v10, 0xb

    if-eq v7, v10, :cond_0

    if-eq v7, v11, :cond_0

    if-eq v7, v12, :cond_0

    move v8, v9

    .line 716
    goto :goto_0

    .line 703
    .end local v7           #testValue:I
    :catch_1
    move-exception v2

    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    move v8, v9

    .line 704
    goto :goto_0

    .line 720
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :pswitch_6
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v7

    .line 725
    .restart local v7       #testValue:I
    if-eqz v7, :cond_0

    if-eq v7, v8, :cond_0

    if-eq v7, v11, :cond_0

    if-eq v7, v12, :cond_0

    move v8, v9

    .line 730
    goto :goto_0

    .line 721
    .end local v7           #testValue:I
    :catch_2
    move-exception v2

    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    move v8, v9

    .line 722
    goto :goto_0

    .line 659
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    .restart local v0       #arr$:[Ljava/lang/reflect/Field;
    .restart local v1       #c:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/net/LinkCapabilities$Role;>;"
    .restart local v3       #f:Ljava/lang/reflect/Field;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #roleFields:[Ljava/lang/reflect/Field;
    :catch_3
    move-exception v10

    goto :goto_2

    .line 662
    :catch_4
    move-exception v10

    goto :goto_2

    .line 651
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 477
    return-void
.end method

.method public containsKey(I)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 533
    iget-object v0, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 544
    iget-object v0, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 503
    iget-object v0, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(ILjava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 515
    invoke-static {p1, p2}, Landroid/net/LinkCapabilities;->validRWKeyValuePair(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    const-string v0, "LinkCapabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/net/LinkCapabilities;->keyName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is an invalid key:\"value\" pair, rejecting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This version of the LinkCapabilities APIdoes not support the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/LinkCapabilities;->keyName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" pair."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_0
    iget-object v0, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const/4 v1, 0x1

    .line 588
    .local v1, firstTime:Z
    iget-object v4, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 589
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 590
    const/4 v1, 0x0

    .line 594
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/net/LinkCapabilities;->keyName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    const-string v4, ":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 592
    :cond_0
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 599
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 608
    iget-object v2, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    iget-object v2, p0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 610
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 613
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
