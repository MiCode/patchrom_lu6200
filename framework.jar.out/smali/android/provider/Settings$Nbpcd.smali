.class public final Landroid/provider/Settings$Nbpcd;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Nbpcd"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final COUNTRYCODE:Ljava/lang/String; = "country_code"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "table_index ASC"

.field public static final IDDCODE:Ljava/lang/String; = "idd_code"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MCCCOUNT:Ljava/lang/String; = "mcc_count"

.field public static final NBPCDLASTATTEMPTED:Ljava/lang/String; = "nbpcd_last_attempted"

.field public static final NBPCDSUPPORTED:Ljava/lang/String; = "nbpcd_supported"

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final SIDCONFLICT:Ljava/lang/String; = "sid_conflict"

.field public static final SIDRANGE:Ljava/lang/String; = "sid_range"

.field public static final SIDRANGENUM:Ljava/lang/String; = "sid_range_num"

.field public static final TABLEINDEX:Ljava/lang/String; = "table_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "nbpcd"

.field private static dlutOriginDataTable:[Landroid/provider/CallNbpcdDlutTable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5066
    const-string v0, "content://settings/nbpcd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Nbpcd;->CONTENT_URI:Landroid/net/Uri;

    .line 5081
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Settings$Nbpcd;->dlutOriginDataTable:[Landroid/provider/CallNbpcdDlutTable;

    .line 5083
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "table_index"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "mcc_count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "mcc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "sid_range_num"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "sid_range"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "country_code"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sid_conflict"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "nbpcd_supported"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "nbpcd_last_attempted"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "idd_code"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$Nbpcd;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5065
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initDlutOriginDataTable()V
    .locals 14

    .prologue
    .line 5126
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 5128
    .local v11, r:Landroid/content/res/Resources;
    const/16 v0, 0xe0

    new-array v12, v0, [Landroid/provider/CallNbpcdDlutTable;

    const/4 v13, 0x0

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/4 v1, 0x0

    const/4 v2, 0x7

    const-string v3, "310,311,312,313,314,315,316"

    const/4 v4, 0x4

    const-string v5, "1,2175,2304,6189,6191,7679,21567,21630"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/4 v13, 0x1

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "412,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "14976,15103,0,0,0,0"

    const/16 v6, 0x5d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/4 v13, 0x2

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "276,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31456,31471,0,0,0,0"

    const/16 v6, 0x163

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/4 v13, 0x3

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const-string v3, "603,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8288,8319,0,0,0,0"

    const/16 v6, 0xd5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/4 v13, 0x4

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const-string v3, "544,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11168,11183,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/4 v13, 0x5

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const-string v3, "213,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/16 v6, 0x178

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/4 v13, 0x6

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const-string v3, "631,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9504,9535,0,0,0,0"

    const/16 v6, 0xf4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/4 v13, 0x7

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/4 v1, 0x7

    const/4 v2, 0x1

    const-string v3, "365,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x8

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const-string v3, "344,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8144,8159,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x9

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x9

    const/4 v2, 0x1

    const-string v3, "722,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "32128,32255,0,0,0,0"

    const/16 v6, 0x36

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xa

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "283,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15938,15945,0,0,0,0"

    const/16 v6, 0x176

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xb

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xb

    const/4 v2, 0x1

    const-string v3, "363,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9648,9663,0,0,0,0"

    const/16 v6, 0x129

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xc

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const-string v3, "505,0,0,0,0,0,0"

    const/4 v4, 0x2

    const-string v5, "7680,7807,8320,8447,0,0"

    const/16 v6, 0x3d

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "0011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xd

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xd

    const/4 v2, 0x1

    const-string v3, "232,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "22912,23039,0,0,0,0"

    const/16 v6, 0x2b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xe

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xe

    const/4 v2, 0x1

    const-string v3, "400,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15946,15953,0,0,0,0"

    const/16 v6, 0x3e2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xf

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xf

    const/4 v2, 0x1

    const-string v3, "364,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8080,8095,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x10

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x10

    const/4 v2, 0x1

    const-string v3, "426,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31408,31423,0,0,0,0"

    const/16 v6, 0x3cd

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x11

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x11

    const/4 v2, 0x1

    const-string v3, "470,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "12461,12461,12463,12464,13472,13503"

    const/16 v6, 0x370

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x12

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x12

    const/4 v2, 0x1

    const-string v3, "342,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8160,8175,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x13

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x13

    const/4 v2, 0x1

    const-string v3, "257,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15954,15961,0,0,0,0"

    const/16 v6, 0x177

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "810"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x14

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x14

    const/4 v2, 0x1

    const-string v3, "206,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "23936,24063,0,0,0,0"

    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x15

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x15

    const/4 v2, 0x1

    const-string v3, "702,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "32640,32649,0,0,0,0"

    const/16 v6, 0x1f5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x16

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x16

    const/4 v2, 0x1

    const-string v3, "616,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9088,9119,0,0,0,0"

    const/16 v6, 0xe5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x17

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x17

    const/4 v2, 0x1

    const-string v3, "350,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8096,8111,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x18

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x18

    const/4 v2, 0x1

    const-string v3, "402,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/16 v6, 0x3cf

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x19

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x19

    const/4 v2, 0x1

    const-string v3, "736,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31232,31263,0,0,0,0"

    const/16 v6, 0x24f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x1a

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x1a

    const/4 v2, 0x1

    const-string v3, "218,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/16 v6, 0x183

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x1b

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x1b

    const/4 v2, 0x1

    const-string v3, "652,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10176,10207,0,0,0,0"

    const/16 v6, 0x10b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x1c

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x1c

    const/4 v2, 0x1

    const-string v3, "724,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31872,32127,0,0,0,0"

    const/16 v6, 0x37

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "0015"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x1d

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const-string v3, "348,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8112,8127,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x1e

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x1e

    const/4 v2, 0x1

    const-string v3, "528,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10880,10895,0,0,0,0"

    const/16 v6, 0x2a1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x1f

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x1f

    const/4 v2, 0x1

    const-string v3, "284,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15584,15615,0,0,0,0"

    const/16 v6, 0x167

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x20

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x20

    const/4 v2, 0x1

    const-string v3, "613,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8992,9023,0,0,0,0"

    const/16 v6, 0xe2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x21

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x21

    const/4 v2, 0x1

    const-string v3, "642,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9952,9983,0,0,0,0"

    const/16 v6, 0x101

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x22

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x22

    const/4 v2, 0x1

    const-string v3, "456,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11104,11135,0,0,0,0"

    const/16 v6, 0x357

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "001"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x23

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x23

    const/4 v2, 0x1

    const-string v3, "624,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9344,9375,0,0,0,0"

    const/16 v6, 0xed

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x24

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x24

    const/4 v2, 0x1

    const-string v3, "302,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "16384,18431,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x25

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x25

    const/4 v2, 0x1

    const-string v3, "625,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8848,8863,0,0,0,0"

    const/16 v6, 0xee

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "0"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x26

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x26

    const/4 v2, 0x1

    const-string v3, "346,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8128,8143,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x27

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x27

    const/4 v2, 0x1

    const-string v3, "623,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9312,9343,0,0,0,0"

    const/16 v6, 0xee

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x28

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x28

    const/4 v2, 0x1

    const-string v3, "622,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9280,9311,0,0,0,0"

    const/16 v6, 0xeb

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "15"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x29

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x29

    const/4 v2, 0x1

    const-string v3, "730,0,0,0,0,0,0"

    const/4 v4, 0x3

    const-string v5, "31744,31754,31809,31820,31841,31854"

    const/16 v6, 0x38

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x2a

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x2a

    const/4 v2, 0x1

    const-string v3, "460,0,0,0,0,0,0"

    const/4 v4, 0x2

    const-string v5, "13568,14335,25600,26111,0,0"

    const/16 v6, 0x56

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x2b

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x2b

    const/4 v2, 0x1

    const-string v3, "732,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31616,31743,0,0,0,0"

    const/16 v6, 0x39

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x2c

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x2c

    const/4 v2, 0x1

    const-string v3, "654,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10208,10239,0,0,0,0"

    const/16 v6, 0x10d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x2d

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x2d

    const/4 v2, 0x1

    const-string v3, "548,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11136,11151,0,0,0,0"

    const/16 v6, 0x2aa

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x2e

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x2e

    const/4 v2, 0x1

    const-string v3, "712,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "32544,32575,0,0,0,0"

    const/16 v6, 0x1fa

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x2f

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x2f

    const/4 v2, 0x1

    const-string v3, "612,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8960,8991,0,0,0,0"

    const/16 v6, 0xe1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x30

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x30

    const/4 v2, 0x1

    const-string v3, "219,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/16 v6, 0x181

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x31

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x31

    const/4 v2, 0x1

    const-string v3, "368,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "32256,32383,0,0,0,0"

    const/16 v6, 0x35

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "119"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x32

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x32

    const/4 v2, 0x1

    const-string v3, "280,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31200,31231,0,0,0,0"

    const/16 v6, 0x165

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x33

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x33

    const/4 v2, 0x1

    const-string v3, "230,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "16128,16255,0,0,0,0"

    const/16 v6, 0x1a4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x34

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x34

    const/4 v2, 0x1

    const-string v3, "630,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9440,9471,0,0,0,0"

    const/16 v6, 0xf3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x35

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x35

    const/4 v2, 0x1

    const-string v3, "238,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "22528,22543,0,0,0,0"

    const/16 v6, 0x2d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x36

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x36

    const/4 v2, 0x1

    const-string v3, "638,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8912,8927,0,0,0,0"

    const/16 v6, 0xfd

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x37

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x37

    const/4 v2, 0x1

    const-string v3, "366,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9616,9631,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x38

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x38

    const/4 v2, 0x1

    const-string v3, "370,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8832,8847,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x39

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x39

    const/4 v2, 0x1

    const-string v3, "514,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/16 v6, 0x29e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x3a

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x3a

    const/4 v2, 0x1

    const-string v3, "740,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31296,31327,0,0,0,0"

    const/16 v6, 0x251

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x3b

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x3b

    const/4 v2, 0x1

    const-string v3, "602,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8224,8255,0,0,0,0"

    const/16 v6, 0x14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x3c

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x3c

    const/4 v2, 0x1

    const-string v3, "706,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "32704,32735,0,0,0,0"

    const/16 v6, 0x251

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x3d

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x3d

    const/4 v2, 0x1

    const-string v3, "627,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9376,9407,0,0,0,0"

    const/16 v6, 0xf0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x3e

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x3e

    const/4 v2, 0x1

    const-string v3, "657,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/16 v6, 0x123

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x3f

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x3f

    const/4 v2, 0x1

    const-string v3, "248,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10872,10879,0,0,0,0"

    const/16 v6, 0x174

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x40

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x40

    const/4 v2, 0x1

    const-string v3, "636,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9760,9791,0,0,0,0"

    const/16 v6, 0xfb

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x41

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x41

    const/4 v2, 0x1

    const-string v3, "288,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "7936,7951,0,0,0,0"

    const/16 v6, 0x12a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x42

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x42

    const/4 v2, 0x1

    const-string v3, "550,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11040,11071,0,0,0,0"

    const/16 v6, 0x2b3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x43

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x43

    const/4 v2, 0x1

    const-string v3, "542,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10960,10975,0,0,0,0"

    const/16 v6, 0x2a7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x44

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x44

    const/4 v2, 0x1

    const-string v3, "244,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "24448,24451,0,0,0,0"

    const/16 v6, 0x166

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x45

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x45

    const/4 v2, 0x1

    const-string v3, "208,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "23680,23935,0,0,0,0"

    const/16 v6, 0x21

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x46

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x46

    const/4 v2, 0x1

    const-string v3, "742,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31328,31359,0,0,0,0"

    const/16 v6, 0x252

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x47

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x47

    const/4 v2, 0x1

    const-string v3, "547,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11248,11263,0,0,0,0"

    const/16 v6, 0x2b1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x48

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x48

    const/4 v2, 0x1

    const-string v3, "628,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9408,9439,0,0,0,0"

    const/16 v6, 0xf1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x49

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x49

    const/4 v2, 0x1

    const-string v3, "607,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8544,8575,0,0,0,0"

    const/16 v6, 0xdc

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x4a

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x4a

    const/4 v2, 0x1

    const-string v3, "282,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/16 v6, 0x3e3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "810"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x4b

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x4b

    const/4 v2, 0x1

    const-string v3, "262,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "22016,22271,0,0,0,0"

    const/16 v6, 0x31

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x4c

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x4c

    const/4 v2, 0x1

    const-string v3, "620,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9216,9247,0,0,0,0"

    const/16 v6, 0xe9

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x4d

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x4d

    const/4 v2, 0x1

    const-string v3, "266,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31440,31455,0,0,0,0"

    const/16 v6, 0x15e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x4e

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x4e

    const/4 v2, 0x1

    const-string v3, "202,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "24192,24319,0,0,0,0"

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x4f

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x4f

    const/4 v2, 0x1

    const-string v3, "290,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "7952,7967,0,0,0,0"

    const/16 v6, 0x12b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x50

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x50

    const/4 v2, 0x1

    const-string v3, "352,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8064,8079,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x51

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x51

    const/4 v2, 0x1

    const-string v3, "340,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31360,31375,0,0,0,0"

    const/16 v6, 0x24e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x52

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x52

    const/4 v2, 0x1

    const-string v3, "535,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9696,9711,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x53

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x53

    const/4 v2, 0x1

    const-string v3, "704,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "32672,32703,0,0,0,0"

    const/16 v6, 0x1f6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x54

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x54

    const/4 v2, 0x1

    const-string v3, "611,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8800,8831,0,0,0,0"

    const/16 v6, 0xe0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x55

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x55

    const/4 v2, 0x1

    const-string v3, "632,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8800,8831,0,0,0,0"

    const/16 v6, 0xf5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x56

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x56

    const/4 v2, 0x1

    const-string v3, "738,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31264,31295,0,0,0,0"

    const/16 v6, 0x250

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "001"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x57

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x57

    const/4 v2, 0x1

    const-string v3, "372,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "32608,32639,0,0,0,0"

    const/16 v6, 0x1fd

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x58

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x58

    const/4 v2, 0x1

    const-string v3, "708,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "32736,32767,0,0,0,0"

    const/16 v6, 0x1f8

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x59

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x59

    const/4 v2, 0x1

    const-string v3, "454,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10640,10655,0,0,0,0"

    const/16 v6, 0x354

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "001"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x5a

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x5a

    const/4 v2, 0x1

    const-string v3, "216,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15744,15871,0,0,0,0"

    const/16 v6, 0x24

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x5b

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x5b

    const/4 v2, 0x1

    const-string v3, "274,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "24416,24447,0,0,0,0"

    const/16 v6, 0x162

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x5c

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x5c

    const/4 v2, 0x1

    const-string v3, "404,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "14464,14847,0,0,0,0"

    const/16 v6, 0x5b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x5d

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x5d

    const/4 v2, 0x1

    const-string v3, "405,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "14464,14847,0,0,0,0"

    const/16 v6, 0x5b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x5e

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x5e

    const/4 v2, 0x1

    const-string v3, "510,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10496,10623,0,0,0,0"

    const/16 v6, 0x3e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "001"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x5f

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x5f

    const/4 v2, 0x1

    const-string v3, "432,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15616,15743,0,0,0,0"

    const/16 v6, 0x62

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x60

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x60

    const/4 v2, 0x1

    const-string v3, "418,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15456,15487,0,0,0,0"

    const/16 v6, 0x3c4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x61

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x61

    const/4 v2, 0x1

    const-string v3, "272,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "24384,24387,0,0,0,0"

    const/16 v6, 0x161

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x62

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x62

    const/4 v2, 0x1

    const-string v3, "425,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8448,8479,0,0,0,0"

    const/16 v6, 0x3cc

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x63

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x63

    const/4 v2, 0x1

    const-string v3, "222,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "23168,23423,0,0,0,0"

    const/16 v6, 0x27

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x64

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x64

    const/4 v2, 0x1

    const-string v3, "338,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8176,8191,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x65

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x65

    const/4 v2, 0x1

    const-string v3, "440,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "12288,13311,0,0,0,0"

    const/16 v6, 0x51

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "010"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x66

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x66

    const/4 v2, 0x1

    const-string v3, "441,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "12288,13311,0,0,0,0"

    const/16 v6, 0x51

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "010"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x67

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x67

    const/4 v2, 0x1

    const-string v3, "416,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15392,15423,0,0,0,0"

    const/16 v6, 0x3c2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x68

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x68

    const/4 v2, 0x1

    const-string v3, "401,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8928,8943,0,0,0,0"

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "810"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x69

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x69

    const/4 v2, 0x1

    const-string v3, "639,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9856,9887,0,0,0,0"

    const/16 v6, 0xfe

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x6a

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x6a

    const/4 v2, 0x1

    const-string v3, "545,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11200,11215,0,0,0,0"

    const/16 v6, 0x2ae

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x6b

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x6b

    const/4 v2, 0x1

    const-string v3, "467,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11072,11103,0,0,0,0"

    const/16 v6, 0x352

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x6c

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x6c

    const/4 v2, 0x1

    const-string v3, "450,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "2176,2303,0,0,0,0"

    const/16 v6, 0x52

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00700"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x6d

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x6d

    const/4 v2, 0x1

    const-string v3, "419,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11312,11327,0,0,0,0"

    const/16 v6, 0x3c5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x6e

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x6e

    const/4 v2, 0x1

    const-string v3, "437,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "21550,21566,0,0,0,0"

    const/16 v6, 0x3e4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x6f

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x6f

    const/4 v2, 0x1

    const-string v3, "457,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "13440,13471,0,0,0,0"

    const/16 v6, 0x358

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x70

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x70

    const/4 v2, 0x1

    const-string v3, "247,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10784,10785,0,0,0,0"

    const/16 v6, 0x173

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x71

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x71

    const/4 v2, 0x1

    const-string v3, "415,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15360,15391,0,0,0,0"

    const/16 v6, 0x3c1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x72

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x72

    const/4 v2, 0x1

    const-string v3, "651,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9600,9615,0,0,0,0"

    const/16 v6, 0x10a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x73

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x73

    const/4 v2, 0x1

    const-string v3, "618,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9152,9183,0,0,0,0"

    const/16 v6, 0xe7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x74

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x74

    const/4 v2, 0x1

    const-string v3, "606,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8512,8543,0,0,0,0"

    const/16 v6, 0xda

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x75

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x75

    const/4 v2, 0x1

    const-string v3, "295,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/16 v6, 0x1a7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x76

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x76

    const/4 v2, 0x1

    const-string v3, "246,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/16 v6, 0x172

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x77

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x77

    const/4 v2, 0x1

    const-string v3, "270,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "24352,24383,0,0,0,0"

    const/16 v6, 0x160

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x78

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x78

    const/4 v2, 0x1

    const-string v3, "455,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11296,11311,0,0,0,0"

    const/16 v6, 0x355

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x79

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x79

    const/4 v2, 0x1

    const-string v3, "646,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10048,10079,0,0,0,0"

    const/16 v6, 0x105

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x7a

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x7a

    const/4 v2, 0x1

    const-string v3, "650,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10144,10175,0,0,0,0"

    const/16 v6, 0x109

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x7b

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x7b

    const/4 v2, 0x1

    const-string v3, "502,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10368,10495,0,0,0,0"

    const/16 v6, 0x3c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x7c

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x7c

    const/4 v2, 0x1

    const-string v3, "472,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "13536,13567,0,0,0,0"

    const/16 v6, 0x3c0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x7d

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x7d

    const/4 v2, 0x1

    const-string v3, "610,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8768,8799,0,0,0,0"

    const/16 v6, 0xdf

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x7e

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x7e

    const/4 v2, 0x1

    const-string v3, "278,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31472,31475,0,0,0,0"

    const/16 v6, 0x164

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x7f

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x7f

    const/4 v2, 0x1

    const-string v3, "551,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11280,11295,0,0,0,0"

    const/16 v6, 0x2b4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x80

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x80

    const/4 v2, 0x1

    const-string v3, "340,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31376,31391,0,0,0,0"

    const/16 v6, 0x254

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x81

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x81

    const/4 v2, 0x1

    const-string v3, "609,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8736,8767,0,0,0,0"

    const/16 v6, 0xde

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x82

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x82

    const/4 v2, 0x1

    const-string v3, "617,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9120,9151,0,0,0,0"

    const/16 v6, 0xe6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "020"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x83

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x83

    const/4 v2, 0x1

    const-string v3, "334,0,0,0,0,0,0"

    const/4 v4, 0x2

    const-string v5, "24576,25075,25100,25124,0,0"

    const/16 v6, 0x34

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x84

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x84

    const/4 v2, 0x1

    const-string v3, "259,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15922,15937,0,0,0,0"

    const/16 v6, 0x175

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x85

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x85

    const/4 v2, 0x1

    const-string v3, "212,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10752,10767,0,0,0,0"

    const/16 v6, 0x179

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x86

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x86

    const/4 v2, 0x1

    const-string v3, "428,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15520,15551,0,0,0,0"

    const/16 v6, 0x3d0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "001"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x87

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x87

    const/4 v2, 0x1

    const-string v3, "354,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8048,8063,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x88

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x88

    const/4 v2, 0x1

    const-string v3, "604,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8256,8287,0,0,0,0"

    const/16 v6, 0xd4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x89

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x89

    const/4 v2, 0x1

    const-string v3, "643,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9984,10015,0,0,0,0"

    const/16 v6, 0x102

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x8a

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x8a

    const/4 v2, 0x1

    const-string v3, "414,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15232,15359,0,0,0,0"

    const/16 v6, 0x5f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x8b

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x8b

    const/4 v2, 0x1

    const-string v3, "649,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10112,10143,0,0,0,0"

    const/16 v6, 0x108

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x8c

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x8c

    const/4 v2, 0x1

    const-string v3, "536,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10896,10911,0,0,0,0"

    const/16 v6, 0x2a2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x8d

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x8d

    const/4 v2, 0x1

    const-string v3, "429,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15552,15583,0,0,0,0"

    const/16 v6, 0x3d1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x8e

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x8e

    const/4 v2, 0x1

    const-string v3, "204,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "24064,24191,0,0,0,0"

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x8f

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x8f

    const/4 v2, 0x1

    const-string v3, "362,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31392,31407,0,0,0,0"

    const/16 v6, 0x257

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x90

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x90

    const/4 v2, 0x1

    const-string v3, "546,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11216,11231,0,0,0,0"

    const/16 v6, 0x2af

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x91

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x91

    const/4 v2, 0x1

    const-string v3, "530,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8576,8703,0,0,0,0"

    const/16 v6, 0x40

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x92

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x92

    const/4 v2, 0x1

    const-string v3, "710,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "32512,32543,0,0,0,0"

    const/16 v6, 0x1f9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x93

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x93

    const/4 v2, 0x1

    const-string v3, "614,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9024,9055,0,0,0,0"

    const/16 v6, 0xe3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x94

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x94

    const/4 v2, 0x1

    const-string v3, "621,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9248,9279,0,0,0,0"

    const/16 v6, 0xea

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "009"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x95

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x95

    const/4 v2, 0x1

    const-string v3, "534,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9680,9695,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x96

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x96

    const/4 v2, 0x1

    const-string v3, "242,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "22272,22399,0,0,0,0"

    const/16 v6, 0x2f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x97

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x97

    const/4 v2, 0x1

    const-string v3, "422,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11344,11359,0,0,0,0"

    const/16 v6, 0x3c8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x98

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x98

    const/4 v2, 0x1

    const-string v3, "410,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "14848,14975,0,0,0,0"

    const/16 v6, 0x5c

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x99

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x99

    const/4 v2, 0x1

    const-string v3, "552,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10976,10991,0,0,0,0"

    const/16 v6, 0x2a8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "11"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x9a

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x9a

    const/4 v2, 0x1

    const-string v3, "714,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "32576,32607,0,0,0,0"

    const/16 v6, 0x1fb

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x9b

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x9b

    const/4 v2, 0x1

    const-string v3, "537,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11008,11039,0,0,0,0"

    const/16 v6, 0x2a3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "5"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x9c

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x9c

    const/4 v2, 0x1

    const-string v3, "744,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31104,31135,0,0,0,0"

    const/16 v6, 0x253

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "2"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x9d

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x9d

    const/4 v2, 0x1

    const-string v3, "716,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "32384,32511,0,0,0,0"

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x9e

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x9e

    const/4 v2, 0x1

    const-string v3, "515,0,0,0,0,0,0"

    const/4 v4, 0x2

    const-string v5, "10624,10639,10656,10751,0,0"

    const/16 v6, 0x3f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0x9f

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0x9f

    const/4 v2, 0x1

    const-string v3, "260,0,0,0,0,0,0"

    const/4 v4, 0x2

    const-string v5, "16256,16271,16272,16383,0,0"

    const/16 v6, 0x30

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xa0

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xa0

    const/4 v2, 0x1

    const-string v3, "268,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "24320,24351,0,0,0,0"

    const/16 v6, 0x15f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xa1

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xa1

    const/4 v2, 0x1

    const-string v3, "330,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xa2

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xa2

    const/4 v2, 0x1

    const-string v3, "427,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31424,31439,0,0,0,0"

    const/16 v6, 0x3ce

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xa3

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xa3

    const/4 v2, 0x1

    const-string v3, "294,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/16 v6, 0x185

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xa4

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xa4

    const/4 v2, 0x1

    const-string v3, "629,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9440,9471,0,0,0,0"

    const/16 v6, 0xf3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xa5

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xa5

    const/4 v2, 0x1

    const-string v3, "647,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8944,8959,0,0,0,0"

    const/16 v6, 0x106

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xa6

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xa6

    const/4 v2, 0x1

    const-string v3, "226,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "16000,16127,0,0,0,0"

    const/16 v6, 0x28

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xa7

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xa7

    const/4 v2, 0x1

    const-string v3, "250,0,0,0,0,0,0"

    const/4 v4, 0x3

    const-string v5, "11392,11554,11556,11599,11601,12287"

    const/4 v6, 0x7

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "810"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xa8

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xa8

    const/4 v2, 0x1

    const-string v3, "635,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9728,9759,0,0,0,0"

    const/16 v6, 0xfa

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xa9

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xa9

    const/4 v2, 0x1

    const-string v3, "356,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8032,8047,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xaa

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xaa

    const/4 v2, 0x1

    const-string v3, "358,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8016,8031,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xab

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xab

    const/4 v2, 0x1

    const-string v3, "308,0,0,0,0,0,0"

    const/4 v4, 0x2

    const-string v5, "7984,7999,10816,10831,0,0"

    const/16 v6, 0x1fc

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xac

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xac

    const/4 v2, 0x1

    const-string v3, "360,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8000,8007,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xad

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xad

    const/4 v2, 0x1

    const-string v3, "549,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11184,11199,0,0,0,0"

    const/16 v6, 0x2ad

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "0"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xae

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xae

    const/4 v2, 0x1

    const-string v3, "292,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10768,10783,0,0,0,0"

    const/16 v6, 0x17a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xaf

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xaf

    const/4 v2, 0x1

    const-string v3, "626,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8864,8879,0,0,0,0"

    const/16 v6, 0xef

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xb0

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xb0

    const/4 v2, 0x1

    const-string v3, "420,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15488,15519,0,0,0,0"

    const/16 v6, 0x3c6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xb1

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xb1

    const/4 v2, 0x1

    const-string v3, "608,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8704,8735,0,0,0,0"

    const/16 v6, 0xdd

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xb2

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xb2

    const/4 v2, 0x1

    const-string v3, "220,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "23424,23551,0,0,0,0"

    const/16 v6, 0x17d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "99"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xb3

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xb3

    const/4 v2, 0x1

    const-string v3, "633,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8896,8911,0,0,0,0"

    const/16 v6, 0xf8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xb4

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xb4

    const/4 v2, 0x1

    const-string v3, "619,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9184,9215,0,0,0,0"

    const/16 v6, 0xe8

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xb5

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xb5

    const/4 v2, 0x1

    const-string v3, "525,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9664,9679,0,0,0,0"

    const/16 v6, 0x41

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "001"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xb6

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xb6

    const/4 v2, 0x1

    const-string v3, "231,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/16 v6, 0x1a5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xb7

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xb7

    const/4 v2, 0x1

    const-string v3, "293,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/16 v6, 0x182

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xb8

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xb8

    const/4 v2, 0x1

    const-string v3, "540,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10928,10943,0,0,0,0"

    const/16 v6, 0x2a5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xb9

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xb9

    const/4 v2, 0x1

    const-string v3, "637,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9792,9823,0,0,0,0"

    const/16 v6, 0xfc

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xba

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xba

    const/4 v2, 0x1

    const-string v3, "655,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10240,10367,0,0,0,0"

    const/16 v6, 0x1b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xbb

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xbb

    const/4 v2, 0x1

    const-string v3, "214,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "23552,23679,0,0,0,0"

    const/16 v6, 0x22

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xbc

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xbc

    const/4 v2, 0x1

    const-string v3, "413,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15104,15231,0,0,0,0"

    const/16 v6, 0x5e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xbd

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xbd

    const/4 v2, 0x1

    const-string v3, "634,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9568,9599,0,0,0,0"

    const/16 v6, 0xf9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xbe

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xbe

    const/4 v2, 0x1

    const-string v3, "746,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31136,31167,0,0,0,0"

    const/16 v6, 0x255

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xbf

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xbf

    const/4 v2, 0x1

    const-string v3, "653,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9632,9647,0,0,0,0"

    const/16 v6, 0x10c

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xc0

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xc0

    const/4 v2, 0x1

    const-string v3, "240,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "22400,22403,0,0,0,0"

    const/16 v6, 0x2e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xc1

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xc1

    const/4 v2, 0x1

    const-string v3, "228,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "23040,23167,0,0,0,0"

    const/16 v6, 0x29

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xc2

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xc2

    const/4 v2, 0x1

    const-string v3, "417,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15424,15455,0,0,0,0"

    const/16 v6, 0x3c3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xc3

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xc3

    const/4 v2, 0x1

    const-string v3, "466,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "13504,13535,0,0,0,0"

    const/16 v6, 0x376

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "002"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xc4

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xc4

    const/4 v2, 0x1

    const-string v3, "436,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10856,10871,0,0,0,0"

    const/16 v6, 0x3e0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "810"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xc5

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xc5

    const/4 v2, 0x1

    const-string v3, "640,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9888,9919,0,0,0,0"

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "000"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xc6

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xc6

    const/4 v2, 0x1

    const-string v3, "520,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8192,8223,0,0,0,0"

    const/16 v6, 0x42

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "001"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xc7

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xc7

    const/4 v2, 0x1

    const-string v3, "615,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9056,9087,0,0,0,0"

    const/16 v6, 0xe4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xc8

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xc8

    const/4 v2, 0x1

    const-string v3, "539,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10912,10927,0,0,0,0"

    const/16 v6, 0x2a4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xc9

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xc9

    const/4 v2, 0x1

    const-string v3, "374,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9824,9855,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xca

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xca

    const/4 v2, 0x1

    const-string v3, "605,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "8480,8511,0,0,0,0"

    const/16 v6, 0xd8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xcb

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xcb

    const/4 v2, 0x1

    const-string v3, "286,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "14336,14463,0,0,0,0"

    const/16 v6, 0x5a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xcc

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xcc

    const/4 v2, 0x1

    const-string v3, "438,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15970,15977,0,0,0,0"

    const/16 v6, 0x3e1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "810"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xcd

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xcd

    const/4 v2, 0x1

    const-string v3, "376,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10800,10815,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xce

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xce

    const/4 v2, 0x1

    const-string v3, "641,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "9920,9951,0,0,0,0"

    const/16 v6, 0x100

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "000"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xcf

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xcf

    const/4 v2, 0x1

    const-string v3, "255,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "15906,15921,0,0,0,0"

    const/16 v6, 0x17c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "810"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xd0

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xd0

    const/4 v2, 0x1

    const-string v3, "424,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11376,11391,0,0,0,0"

    const/16 v6, 0x3cb

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xd1

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xd1

    const/4 v2, 0x2

    const-string v3, "430,431,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "11376,11391,0,0,0,0"

    const/16 v6, 0x3cb

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xd2

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xd2

    const/4 v2, 0x1

    const-string v3, "234,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "22656,22911,0,0,0,0"

    const/16 v6, 0x2c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xd3

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xd3

    const/4 v2, 0x1

    const-string v3, "235,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "22656,22911,0,0,0,0"

    const/16 v6, 0x2c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xd4

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xd4

    const/4 v2, 0x1

    const-string v3, "332,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xd5

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xd5

    const/4 v2, 0x1

    const-string v3, "748,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31168,31199,0,0,0,0"

    const/16 v6, 0x256

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xd6

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xd6

    const/4 v2, 0x1

    const-string v3, "434,0,0,0,0,0,0"

    const/4 v4, 0x3

    const-string v5, "10832,10855,11555,11555,11600,11600"

    const/16 v6, 0x3e6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "810"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xd7

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xd7

    const/4 v2, 0x1

    const-string v3, "541,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10944,10959,0,0,0,0"

    const/16 v6, 0x2a6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xd8

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xd8

    const/4 v2, 0x1

    const-string v3, "225,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/16 v6, 0x27

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xd9

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xd9

    const/4 v2, 0x1

    const-string v3, "734,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "31488,31615,0,0,0,0"

    const/16 v6, 0x3a

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xda

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xda

    const/4 v2, 0x1

    const-string v3, "452,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "13312,13439,0,0,0,0"

    const/16 v6, 0x54

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xdb

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xdb

    const/4 v2, 0x1

    const-string v3, "543,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10992,11007,0,0,0,0"

    const/16 v6, 0x2a9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "19"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xdc

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xdc

    const/4 v2, 0x1

    const-string v3, "421,0,0,0,0,0,0"

    const/4 v4, 0x2

    const-string v5, "11328,11343,11360,11375,0,0"

    const/16 v6, 0x3c7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xdd

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xdd

    const/4 v2, 0x1

    const-string v3, "645,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10016,10047,0,0,0,0"

    const/16 v6, 0x104

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xde

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xde

    const/4 v2, 0x1

    const-string v3, "648,0,0,0,0,0,0"

    const/4 v4, 0x1

    const-string v5, "10080,10111,0,0,0,0"

    const/16 v6, 0x107

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "00"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    const/16 v13, 0xdf

    new-instance v0, Landroid/provider/CallNbpcdDlutTable;

    const/16 v1, 0xdf

    const/4 v2, 0x1

    const-string v3, "901,0,0,0,0,0,0"

    const/4 v4, 0x0

    const-string v5, "0,0,0,0,0,0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1,2009"

    const-string v10, "011"

    invoke-direct/range {v0 .. v10}, Landroid/provider/CallNbpcdDlutTable;-><init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v12, v13

    sput-object v12, Landroid/provider/Settings$Nbpcd;->dlutOriginDataTable:[Landroid/provider/CallNbpcdDlutTable;

    .line 5356
    return-void
.end method

.method public static initNbpcdTableDetailList(Landroid/content/ContentResolver;)V
    .locals 6
    .parameter "resolver"

    .prologue
    .line 5090
    const-string v3, "Settings"

    const-string v4, "********initNbpcdTableDetailList()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5091
    invoke-static {}, Landroid/provider/Settings$Nbpcd;->initDlutOriginDataTable()V

    .line 5093
    sget-object v3, Landroid/provider/Settings$Nbpcd;->dlutOriginDataTable:[Landroid/provider/CallNbpcdDlutTable;

    if-nez v3, :cond_0

    .line 5094
    const-string v3, "Settings"

    const-string v4, "List is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    :goto_0
    return-void

    .line 5096
    :cond_0
    sget-object v3, Landroid/provider/Settings$Nbpcd;->dlutOriginDataTable:[Landroid/provider/CallNbpcdDlutTable;

    array-length v1, v3

    .line 5097
    .local v1, size:I
    new-array v2, v1, [Landroid/content/ContentValues;

    .line 5099
    .local v2, values:[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 5100
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    aput-object v3, v2, v0

    .line 5101
    aget-object v3, v2, v0

    const-string/jumbo v4, "table_index"

    sget-object v5, Landroid/provider/Settings$Nbpcd;->dlutOriginDataTable:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/provider/CallNbpcdDlutTable;->getIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5102
    aget-object v3, v2, v0

    const-string/jumbo v4, "mcc_count"

    sget-object v5, Landroid/provider/Settings$Nbpcd;->dlutOriginDataTable:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/provider/CallNbpcdDlutTable;->getMccCnt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5103
    aget-object v3, v2, v0

    const-string/jumbo v4, "mcc"

    sget-object v5, Landroid/provider/Settings$Nbpcd;->dlutOriginDataTable:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/provider/CallNbpcdDlutTable;->getMccCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5104
    aget-object v3, v2, v0

    const-string/jumbo v4, "sid_range_num"

    sget-object v5, Landroid/provider/Settings$Nbpcd;->dlutOriginDataTable:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/provider/CallNbpcdDlutTable;->getSidRangeCnt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5105
    aget-object v3, v2, v0

    const-string/jumbo v4, "sid_range"

    sget-object v5, Landroid/provider/Settings$Nbpcd;->dlutOriginDataTable:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/provider/CallNbpcdDlutTable;->getSidRange()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5106
    aget-object v3, v2, v0

    const-string v4, "country_code"

    sget-object v5, Landroid/provider/Settings$Nbpcd;->dlutOriginDataTable:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/provider/CallNbpcdDlutTable;->getCountryCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5107
    aget-object v3, v2, v0

    const-string/jumbo v4, "sid_conflict"

    sget-object v5, Landroid/provider/Settings$Nbpcd;->dlutOriginDataTable:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/provider/CallNbpcdDlutTable;->getSIDConflict()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5108
    aget-object v3, v2, v0

    const-string/jumbo v4, "nbpcd_supported"

    sget-object v5, Landroid/provider/Settings$Nbpcd;->dlutOriginDataTable:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/provider/CallNbpcdDlutTable;->getNBPCDSupport()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5109
    aget-object v3, v2, v0

    const-string/jumbo v4, "nbpcd_last_attempted"

    sget-object v5, Landroid/provider/Settings$Nbpcd;->dlutOriginDataTable:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/provider/CallNbpcdDlutTable;->getNBPCDLastAttempt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5110
    aget-object v3, v2, v0

    const-string/jumbo v4, "idd_code"

    sget-object v5, Landroid/provider/Settings$Nbpcd;->dlutOriginDataTable:[Landroid/provider/CallNbpcdDlutTable;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/provider/CallNbpcdDlutTable;->getIDDCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5099
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 5113
    :cond_1
    if-nez p0, :cond_2

    .line 5115
    const-string v3, "Settings"

    const-string v4, "Resolver is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5118
    :cond_2
    sget-object v3, Landroid/provider/Settings$Nbpcd;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto/16 :goto_0
.end method
