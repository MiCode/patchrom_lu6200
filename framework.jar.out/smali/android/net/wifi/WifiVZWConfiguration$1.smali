.class final Landroid/net/wifi/WifiVZWConfiguration$1;
.super Ljava/lang/Object;
.source "WifiVZWConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiVZWConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiVZWConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 707
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiVZWConfiguration;
    .locals 8
    .parameter "in"

    .prologue
    .line 709
    new-instance v1, Landroid/net/wifi/WifiVZWConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiVZWConfiguration;-><init>()V

    .line 710
    .local v1, config:Landroid/net/wifi/WifiVZWConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->networkId:I

    .line 711
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->status:I

    .line 712
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->disableReason:I

    .line 713
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->SSID:Ljava/lang/String;

    .line 714
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->BSSID:Ljava/lang/String;

    .line 715
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->preSharedKey:Ljava/lang/String;

    .line 716
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 717
    iget-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 716
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 718
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->wepTxKeyIndex:I

    .line 719
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->priority:I

    .line 720
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->hiddenSSID:Z

    .line 721
    #calls: Landroid/net/wifi/WifiVZWConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiVZWConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 722
    #calls: Landroid/net/wifi/WifiVZWConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiVZWConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 723
    #calls: Landroid/net/wifi/WifiVZWConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiVZWConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 724
    #calls: Landroid/net/wifi/WifiVZWConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiVZWConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 725
    #calls: Landroid/net/wifi/WifiVZWConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiVZWConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 727
    iget-object v0, v1, Landroid/net/wifi/WifiVZWConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 728
    .local v2, field:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 727
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 720
    .end local v0           #arr$:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    .end local v2           #field:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 731
    .restart local v0       #arr$:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/WifiVZWConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiVZWConfiguration$IpAssignment;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->ipAssignment:Landroid/net/wifi/WifiVZWConfiguration$IpAssignment;

    .line 732
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/WifiVZWConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiVZWConfiguration$ProxySettings;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->proxySettings:Landroid/net/wifi/WifiVZWConfiguration$ProxySettings;

    .line 733
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    iput-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 734
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->Channel:I

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->CountryCode:Ljava/lang/String;

    .line 736
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->Maxscb:I

    .line 737
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->hw_mode:Ljava/lang/String;

    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->ap_isolate:I

    .line 739
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->ieee_mode:I

    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->macaddr_acl:I

    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->accept_mac_file:Ljava/lang/String;

    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiVZWConfiguration;->deny_mac_file:Ljava/lang/String;

    .line 743
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 707
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiVZWConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiVZWConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiVZWConfiguration;
    .locals 1
    .parameter "size"

    .prologue
    .line 747
    new-array v0, p1, [Landroid/net/wifi/WifiVZWConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 707
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiVZWConfiguration$1;->newArray(I)[Landroid/net/wifi/WifiVZWConfiguration;

    move-result-object v0

    return-object v0
.end method
