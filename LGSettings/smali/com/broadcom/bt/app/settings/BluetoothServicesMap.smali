.class public Lcom/broadcom/bt/app/settings/BluetoothServicesMap;
.super Ljava/lang/Object;
.source "BluetoothServicesMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getServiceStringByUUID(Landroid/content/Context;Landroid/os/ParcelUuid;Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;)V
    .locals 10
    .parameter "ctx"
    .parameter "uuid"
    .parameter "listManager"

    .prologue
    const v9, 0x7f080ad0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 60
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, uuidStr:Ljava/lang/String;
    const-string v4, "BluetoothServicesMap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UUID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-nez v3, :cond_0

    .line 208
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v4, "0000-1000-8000-00805F9B34FB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 66
    const-string v4, "BluetoothServicesMap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown UUID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v7

    invoke-virtual {p0, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, uuidPrefixStr:Ljava/lang/String;
    const/4 v1, -0x1

    .line 74
    .local v1, uuidPrefix:I
    const/16 v4, 0x10

    :try_start_0
    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    :goto_1
    sparse-switch v1, :sswitch_data_0

    .line 207
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v7

    invoke-virtual {p0, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v7

    invoke-virtual {p0, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_0
    const v4, 0x7f080ac9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :sswitch_1
    const v4, 0x7f080aa6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :sswitch_2
    const v4, 0x7f080aa7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :sswitch_3
    const v4, 0x7f080aa8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :sswitch_4
    const v4, 0x7f080aa9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :sswitch_5
    const v4, 0x7f080aaa

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :sswitch_6
    const v4, 0x7f080aab

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :sswitch_7
    const v4, 0x7f080aac

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :sswitch_8
    const v4, 0x7f080aad

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :sswitch_9
    const v4, 0x7f080aae

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :sswitch_a
    const v4, 0x7f080ab0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :sswitch_b
    const v4, 0x7f080ab1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :sswitch_c
    const v4, 0x7f080ab2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :sswitch_d
    const v4, 0x7f080ab3

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :sswitch_e
    const v4, 0x7f080ab8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :sswitch_f
    const v4, 0x7f080ab4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :sswitch_10
    const v4, 0x7f080ab5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :sswitch_11
    const v4, 0x7f080aaf

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :sswitch_12
    const v4, 0x7f080ab6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :sswitch_13
    const v4, 0x7f080ab7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :sswitch_14
    const v4, 0x7f080ab9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :sswitch_15
    const v4, 0x7f080aba

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :sswitch_16
    const v4, 0x7f080abb

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :sswitch_17
    const v4, 0x7f080abc

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :sswitch_18
    const v4, 0x7f080abe

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :sswitch_19
    const v4, 0x7f080abf

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :sswitch_1a
    const v4, 0x7f080ac0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :sswitch_1b
    const v4, 0x7f080ac1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :sswitch_1c
    const v4, 0x7f080ac2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :sswitch_1d
    const v4, 0x7f080ac6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :sswitch_1e
    const v4, 0x7f080ac7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :sswitch_1f
    const v4, 0x7f080ac8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :sswitch_20
    const v4, 0x7f080aca

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :sswitch_21
    const v4, 0x7f080acb

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :sswitch_22
    const v4, 0x7f080acc

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :sswitch_23
    const v4, 0x7f080acd

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :sswitch_24
    const v4, 0x7f080ace

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :sswitch_25
    const v4, 0x7f080acf

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :sswitch_26
    const v4, 0x7f080ac3

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :sswitch_27
    const v4, 0x7f080ac4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :sswitch_28
    const v4, 0x7f080ac5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :sswitch_29
    const v4, 0x7f080abd

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x1101 -> :sswitch_f
        0x1102 -> :sswitch_1b
        0x1103 -> :sswitch_10
        0x1104 -> :sswitch_17
        0x1105 -> :sswitch_a
        0x1106 -> :sswitch_b
        0x1107 -> :sswitch_29
        0x1108 -> :sswitch_4
        0x1109 -> :sswitch_18
        0x110a -> :sswitch_1
        0x110b -> :sswitch_2
        0x110c -> :sswitch_9
        0x110d -> :sswitch_3
        0x110e -> :sswitch_8
        0x1110 -> :sswitch_19
        0x1111 -> :sswitch_1a
        0x1112 -> :sswitch_5
        0x1115 -> :sswitch_14
        0x1116 -> :sswitch_15
        0x1117 -> :sswitch_16
        0x111a -> :sswitch_1c
        0x111e -> :sswitch_6
        0x111f -> :sswitch_7
        0x1122 -> :sswitch_d
        0x1124 -> :sswitch_13
        0x112d -> :sswitch_1f
        0x112e -> :sswitch_e
        0x1130 -> :sswitch_c
        0x1132 -> :sswitch_26
        0x1133 -> :sswitch_27
        0x1134 -> :sswitch_28
        0x1200 -> :sswitch_11
        0x1203 -> :sswitch_12
        0x1304 -> :sswitch_1d
        0x1305 -> :sswitch_1e
        0x1800 -> :sswitch_21
        0x1801 -> :sswitch_20
        0x1802 -> :sswitch_22
        0x1803 -> :sswitch_23
        0x1804 -> :sswitch_24
        0x9000 -> :sswitch_25
    .end sparse-switch
.end method
