.class public final Lcom/broadcom/bt/app/settings/BluetoothDid;
.super Ljava/lang/Object;
.source "BluetoothDid.java"


# static fields
.field private static final STATUS:[Ljava/lang/String;

.field private static final VENDOR_ID_SOURCE:[Ljava/lang/String;

.field private static final VENDOR_NAME:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Invalid"

    aput-object v1, v0, v2

    const-string v1, "BTSIG"

    aput-object v1, v0, v3

    const-string v1, "USBIF"

    aput-object v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_ID_SOURCE:[Ljava/lang/String;

    .line 44
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Success"

    aput-object v1, v0, v2

    const-string v1, "Fail"

    aput-object v1, v0, v3

    const-string v1, "Pending"

    aput-object v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/app/settings/BluetoothDid;->STATUS:[Ljava/lang/String;

    .line 46
    const/16 v0, 0x5d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Ericsson Technology Licensing"

    aput-object v1, v0, v2

    const-string v1, "Nokia Mobile Phones"

    aput-object v1, v0, v3

    const-string v1, "Intel Corp."

    aput-object v1, v0, v4

    const-string v1, "IBM Corp."

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "Toshiba Corp."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "3Com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Microsoft"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Lucent"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Motorola"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Infineon Technologies AG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Cambridge Silicon Radio"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Silicon Wave"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Digianswer A/S"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Texas Instruments Inc."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Parthus Technologies Inc."

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Broadcom Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Mitel Semiconductor"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Widcomm, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Zeevo, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Atmel Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Mitsubishi Electric Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "RTX Telecom A/S"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "KC Technology Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Newlogic"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Transilica, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Rohde & Schwarz GmbH & Co. KG"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "TTPCom Limited"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Signia Technologies, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Conexant Systems Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Qualcomm"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Inventel"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "AVM Berlin"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "BandSpeed, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Mansella Ltd"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "NEC Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "WavePlus Technology Co., Ltd."

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Alcatel"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Philips Semiconductors"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "C Technologies"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Open Interface"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "R F Micro Devices"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Hitachi Ltd"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Symbol Technologies, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Tenovis"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Macronix International Co. Ltd."

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "GCT Semiconductor"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Norwood Systems"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "MewTel Technology Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "ST Microelectronics"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Synopsys"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Red-M (Communications) Ltd"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Commil Ltd"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Computer Access Technology Corporation (CATC)"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Eclipse (HQ Espana) S.L."

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Renesas Technology Corp."

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Mobilian Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Terax"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Integrated System Solution Corp."

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Matsushita Electric Industrial Co., Ltd."

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gennum Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Research In Motion"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "IPextreme, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Systems and Chips, Inc"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Bluetooth SIG, Inc"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Seiko Epson Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Integrated Silicon Solution Taiwan, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "CONWISE Technology Corporation Ltd"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "PARROT SA"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Socket Mobile"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Atheros Communications, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "MediaTek, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Bluegiga"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Marvell Technology Group Ltd."

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "3DSP Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Accel Semiconductor Ltd."

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Continental Automotive Systems"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Apple, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Staccato Communications, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Avago Technologies"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "APT Ltd."

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "SiRF Technology, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Tzero Technologies, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "J&M Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Free2move AB"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "3DiJoy Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Plantronics, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Sony Ericsson Mobile Communications"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Harman International Industries, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Vizio, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Nordic Semiconductor ASA"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "EM Microelectronic-Marin SA"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Ralink Technology Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Belkin International, Inc."

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDidRecord(Landroid/content/Context;Landroid/preference/Preference;Landroid/os/Bundle;I)V
    .locals 24
    .parameter "context"
    .parameter "p"
    .parameter "extra"
    .parameter "recNum"

    .prologue
    .line 143
    const-string v20, "android.bluetooth.adapter.extra.DI_STATUS"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 144
    .local v14, status:I
    const-string v20, "android.bluetooth.adapter.extra.DI_VENDOR_ID"

    const v21, 0xffff

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 145
    .local v17, vendorId:I
    const-string v20, "android.bluetooth.adapter.extra.DI_VENDOR_ID_SOURCE"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 147
    .local v18, vendorIdSource:I
    const-string v20, "android.bluetooth.adapter.extra.DI_HANDLE"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 148
    .local v5, handle:I
    move/from16 v0, p3

    if-ne v5, v0, :cond_0

    if-nez v14, :cond_0

    const v20, 0xffff

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 149
    :cond_0
    const v20, 0x7f080a89

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    :goto_0
    return-void

    .line 154
    :cond_1
    const-string v20, "android.bluetooth.adapter.extra.DI_PRIMARY_RECORD"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 155
    .local v8, primaryRecord:Z
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_2

    .line 156
    const v20, 0x7f080a88

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    :goto_1
    sget-object v20, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_NAME:[Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 163
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Vendor: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_NAME:[Ljava/lang/String;

    aget-object v21, v21, v17

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 171
    .local v16, summary:Ljava/lang/CharSequence;
    :goto_2
    const-string v20, "android.bluetooth.adapter.extra.DI_PRODUCT_ID"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 172
    .local v9, productId:I
    const-string v20, "android.bluetooth.adapter.extra.DI_VERSION"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 173
    .local v19, version:I
    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, major:Ljava/lang/String;
    move/from16 v0, v19

    rem-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x10

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, minor:Ljava/lang/String;
    move/from16 v0, v19

    rem-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    rem-int/lit8 v20, v20, 0x10

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    .line 176
    .local v15, subMinor:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\nProduct: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " (v"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 179
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    const-string v20, "android.bluetooth.adapter.extra.DI_SPEC_ID"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 182
    .local v13, specId:I
    const-string v20, "android.bluetooth.adapter.extra.DI_CLIENT_EXECUTABLE_URL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, clientExecutableUrl:Ljava/lang/String;
    const-string v20, "android.bluetooth.adapter.extra.DI_SERVICE_DESCRIPTION"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 184
    .local v11, serviceDescription:Ljava/lang/String;
    const-string v20, "android.bluetooth.adapter.extra.DI_DOCUMENTATION_URL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, documentationUrl:Ljava/lang/String;
    const-string v20, "Record %1$s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 188
    .local v12, sp:Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 189
    .local v10, se:Landroid/content/SharedPreferences$Editor;
    const-string v20, "Handle"

    move-object/from16 v0, v20

    invoke-interface {v10, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 190
    const-string v20, "Status"

    move-object/from16 v0, v20

    invoke-interface {v10, v0, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string v20, "PrimaryRecord"

    move-object/from16 v0, v20

    invoke-interface {v10, v0, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string v20, "SpecId"

    move-object/from16 v0, v20

    invoke-interface {v10, v0, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v20, "VendorId"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 194
    const-string v20, "VendorIdSource"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 195
    const-string v20, "ProductId"

    move-object/from16 v0, v20

    invoke-interface {v10, v0, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 196
    const-string v20, "Version"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 197
    const-string v20, "ClientExecutableUrl"

    move-object/from16 v0, v20

    invoke-interface {v10, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    const-string v20, "ServiceDescription"

    move-object/from16 v0, v20

    invoke-interface {v10, v0, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    const-string v20, "DocumentationUrl"

    move-object/from16 v0, v20

    invoke-interface {v10, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 158
    .end local v3           #clientExecutableUrl:Ljava/lang/String;
    .end local v4           #documentationUrl:Ljava/lang/String;
    .end local v6           #major:Ljava/lang/String;
    .end local v7           #minor:Ljava/lang/String;
    .end local v9           #productId:I
    .end local v10           #se:Landroid/content/SharedPreferences$Editor;
    .end local v11           #serviceDescription:Ljava/lang/String;
    .end local v12           #sp:Landroid/content/SharedPreferences;
    .end local v13           #specId:I
    .end local v15           #subMinor:Ljava/lang/String;
    .end local v16           #summary:Ljava/lang/CharSequence;
    .end local v19           #version:I
    :cond_2
    const v20, 0x7f080a87

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 164
    :cond_3
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    .line 166
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Vendor: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_ID_SOURCE:[Ljava/lang/String;

    aget-object v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #summary:Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 168
    .end local v16           #summary:Ljava/lang/CharSequence;
    :cond_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Vendor: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #summary:Ljava/lang/CharSequence;
    goto/16 :goto_2
.end method

.method public static showRemoteDiRecord(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 20
    .parameter "context"
    .parameter "recNum"

    .prologue
    .line 204
    const-string v17, "Record %1$s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 207
    .local v9, sp:Landroid/content/SharedPreferences;
    const-string v17, "Handle"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_1

    .line 208
    const-string v17, "BluetoothDid"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error storing/retrieving DID record "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v13, 0x0

    .line 257
    :cond_0
    :goto_0
    return-object v13

    .line 211
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "DID Record: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 213
    .local v13, summary:Ljava/lang/String;
    const-string v17, "Status"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 214
    .local v11, status:Ljava/lang/Integer;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nStatus: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/broadcom/bt/app/settings/BluetoothDid;->STATUS:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 215
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-nez v17, :cond_0

    .line 219
    const-string v17, "SpecId"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 220
    .local v10, specId:Ljava/lang/Integer;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nSpecification Id: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " (v"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    rem-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 222
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nPrimary Record: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "PrimaryRecord"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 224
    const-string v17, "VendorId"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 225
    .local v14, vendorId:Ljava/lang/Integer;
    const-string v17, "VendorIdSource"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 226
    .local v15, vendorIdSource:Ljava/lang/Integer;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nVendor Id: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 227
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sget-object v18, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_NAME:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 228
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_NAME:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 231
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nVendor Id Source: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 232
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_3

    .line 234
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_ID_SOURCE:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 237
    :cond_3
    const-string v17, "ProductId"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 238
    .local v7, productId:Ljava/lang/Integer;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nProduct Id: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 240
    const-string v17, "Version"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 241
    .local v16, version:Ljava/lang/Integer;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nVersion: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 242
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, major:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    rem-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 244
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v17

    div-int/lit8 v17, v17, 0x10

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, minor:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v17

    rem-int/lit8 v17, v17, 0x10

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    .line 246
    .local v12, subMinor:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " (v"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 248
    const-string v17, "ClientExecutableUrl"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, clientExecutableUrl:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nClient Executable URL: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 251
    const-string v17, "ServiceDescription"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 252
    .local v8, serviceDescription:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nService Description: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 254
    const-string v17, "DocumentationUrl"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, documentationUrl:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nDocumentation URL: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 257
    goto/16 :goto_0
.end method
