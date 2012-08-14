.class public final Landroid/provider/Telephony$Carriers;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Carriers"
.end annotation


# static fields
.field public static final APN:Ljava/lang/String; = "apn"

.field public static final AUTH_TYPE:Ljava/lang/String; = "authtype"

.field public static final BEARER:Ljava/lang/String; = "bearer"

.field public static final CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field public static final CLASS:Ljava/lang/String; = "class"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static COUNTRY_CODE:Ljava/lang/String; = null

.field public static final CURRENT:Ljava/lang/String; = "current"

.field public static final DEFAULTSETTING:Ljava/lang/String; = "defaultsetting"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final EXTRA_ID:Ljava/lang/String; = "extraid"

.field private static final GID_Based_AutoProfile_OpList:Ljava/lang/String; = "23410;0A;23415;A0;23415;C1;23430;28;20801;33;20801;52;20801;4E;20810;4E;20810;12;64710;12;20810;4C;20810;DA;27211;0A;20601;0A;21406;00;"

.field private static final GLOBAL_OPERATORS:[[Ljava/lang/String; = null

.field private static final H3G_OpList:Ljava/lang/String; = "23210;3;23806;3;27205;;22299;;24002;3SE;24004;3SE;23420;3;23594;3;45403;3;"

.field private static final IMSI_Based_AutoProfile_OpList:Ljava/lang/String; = "22802;29402;21670;21406;21406;24001;23820;24202;24007;24007;24201;20601;26207;26207;26207;50502;"

.field public static final INACTIVE_TIMER:Ljava/lang/String; = "inactivetimer"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MMSC:Ljava/lang/String; = "mmsc"

.field public static final MMSPORT:Ljava/lang/String; = "mmsport"

.field public static final MMSPROXY:Ljava/lang/String; = "mmsproxy"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMERIC:Ljava/lang/String; = "numeric"

.field private static final O2_OpList:Ljava/lang/String; = "23002;O2 - CZ;26207;;26207;262075_2620749;27202;O2.IE;23106;O2 - SK;21407;Base;23410;O2 - UK;"

.field private static OPERATOR_CODE:Ljava/lang/String; = null

.field private static OPERATOR_VERISON_EXTRAID:Ljava/lang/String; = null

.field private static OPERATOR_VERISON_NUMERIC:Ljava/lang/String; = null

.field private static final ORG_OpList:Ljava/lang/String; = "23205;ORANGE A;20610;MOBISTAR;20801;ORANGE F;64700;ORANGE RE;34001;ORANGE;27099;ORANGE;26003;ORANGE;26803;P OPTIMUS;22610;ORANGE RO;23101;ORANGE SK;21403;ORANGE;22803;ORANGE;23433;ORANGE;25901;ORANGE;"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final PROFILE_TYPE:Ljava/lang/String; = "profile_type"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PROXY:Ljava/lang/String; = "proxy"

.field public static final ROAMING_PROTOCOL:Ljava/lang/String; = "roaming_protocol"

.field public static final SERVER:Ljava/lang/String; = "server"

.field private static final Spn_Based_AutoProfile_OpList:Ljava/lang/String; = "23801;TELMORE;23802;BIBOB;23802;CBB MOBIL;23820;CALL ME;23820;DLG TELE;20810;A MOBILE;20810;LECLERCMOBILE;26201;DEBITEL;26201;MOBILCOM-DEBITEL;26202;DEBITEL;26202;MOBILCOM-DEBITEL;26202;1&1;26203;DEBITEL;26203;MOBILCOM-DEBITEL;26207;DEBITEL;26207;MOBILCOM-DEBITEL;21601;DJUICE;22299;FASTWEB;22210;POSTEMOBILE;20408;RABO MOBIEL;20416;BEN NL;26801;ZON;24004;TELENOR SE;24005;HALEBOP;24005;TELE2;24005;TELIA;24024;TELE2;24024;TELENOR SE;25503;ACE&BASE;25503;DJUICE;26006;Red Bull MOBILE;"

.field private static final TMO_OpList:Ljava/lang/String; = "23203;T MOBILE A;28405;284 05;21901;T-MOBILE HR;23001;T-MOBILE CZ;29401;T-MOBILE MK;26201;;20201;COSMOTE;21630;T-MOBILE HU;22004;T-MOBILE CG;29702;T-MOBILE CG;20416;;20420;;26002;T-MOBILE.PL;22603;COSMOTE;22606;COSMOTE;23102;T-MOBILE SK;23430;T-MOBILE;23431;T-MOBILE;23432;T-MOBILE;"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final USER:Ljava/lang/String; = "user"

.field public static final USERCREATESETTING:Ljava/lang/String; = "usercreatesetting"

.field public static final USERCREATESETTING_MANUAL:I = 0x1

.field public static final USERCREATESETTING_OTA:I = 0x2

.field public static final USERCREATESETTING_PRELOADED:I = 0x0

.field private static final VDF_OpList:Ljava/lang/String; = "27602;VODAFONE AL;23201;A1;20601;PROXIMUS;28401;;21910;HR VIP;23003;VODAFONE CZ;20810;F SFR;64710;SFR;26202;VODAFONE.DE;20205;VODAFONE GR;21670;VODAFONE HU;21670;21670XX2;27402;;27403;;27201;VODAFONE IE;22210;VODAFONE IT;27801;VODAFONE MT;20404;;26801;;22601;VODAFONE RO;29340;SOMOBIL;21401;VODAFONE ES;22801;SWISSCOM;23415;VODAFONE UK;53001;;50503;;65501;;"

.field private static isBuildOperatorVersionValues:Z

.field private static mNumericExtraIDSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3998
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 4089
    const/16 v0, 0x129

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "ALB"

    aput-object v2, v1, v4

    const-string v2, "AL"

    aput-object v2, v1, v5

    const-string v2, "27601"

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "VDF"

    aput-object v2, v1, v4

    const-string v2, "AL"

    aput-object v2, v1, v5

    const-string v2, "27602"

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "A1"

    aput-object v2, v1, v4

    const-string v2, "AT"

    aput-object v2, v1, v5

    const-string v2, "23201"

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "BOB"

    aput-object v2, v1, v4

    const-string v2, "AT"

    aput-object v2, v1, v5

    const-string v2, "23211"

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "H3G"

    aput-object v2, v1, v4

    const-string v2, "AT"

    aput-object v2, v1, v5

    const-string v2, "23210"

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "AT"

    aput-object v3, v2, v5

    const-string v3, "23205"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "AT"

    aput-object v3, v2, v5

    const-string v3, "23203"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "AT"

    aput-object v3, v2, v5

    const-string v3, "23207"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VEL"

    aput-object v3, v2, v4

    const-string v3, "BY"

    aput-object v3, v2, v5

    const-string v3, "25701"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTC"

    aput-object v3, v2, v4

    const-string v3, "BY"

    aput-object v3, v2, v5

    const-string v3, "25702"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LIFE"

    aput-object v3, v2, v4

    const-string v3, "BY"

    aput-object v3, v2, v5

    const-string v3, "25704"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BASE"

    aput-object v3, v2, v4

    const-string v3, "BE"

    aput-object v3, v2, v5

    const-string v3, "20620"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "BE"

    aput-object v3, v2, v5

    const-string v3, "20610"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "PRX"

    aput-object v3, v2, v4

    const-string v3, "BE"

    aput-object v3, v2, v5

    const-string v3, "20601"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "BE"

    aput-object v3, v2, v5

    const-string v3, "20605"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "BE"

    aput-object v3, v2, v5

    const-string v3, "20601"

    aput-object v3, v2, v6

    const-string v3, "2060188"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BHT"

    aput-object v3, v2, v4

    const-string v3, "BA"

    aput-object v3, v2, v5

    const-string v3, "21890"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ERO"

    aput-object v3, v2, v4

    const-string v3, "BA"

    aput-object v3, v2, v5

    const-string v3, "21803"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTEL"

    aput-object v3, v2, v4

    const-string v3, "BA"

    aput-object v3, v2, v5

    const-string v3, "21805"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "BG"

    aput-object v3, v2, v5

    const-string v3, "28405"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTEL"

    aput-object v3, v2, v4

    const-string v3, "BG"

    aput-object v3, v2, v5

    const-string v3, "28401"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIV"

    aput-object v3, v2, v4

    const-string v3, "BG"

    aput-object v3, v2, v5

    const-string v3, "28403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "HR"

    aput-object v3, v2, v5

    const-string v3, "21901"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "HR"

    aput-object v3, v2, v5

    const-string v3, "21902"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "HR"

    aput-object v3, v2, v5

    const-string v3, "24007"

    aput-object v3, v2, v6

    const-string v3, "24007695_24007696"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIP"

    aput-object v3, v2, v4

    const-string v3, "HR"

    aput-object v3, v2, v5

    const-string v3, "21910"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "O2"

    aput-object v3, v2, v4

    const-string v3, "CZ"

    aput-object v3, v2, v5

    const-string v3, "23002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "CZ"

    aput-object v3, v2, v5

    const-string v3, "23001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "CZ"

    aput-object v3, v2, v5

    const-string v3, "23003"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23806"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BIB"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23802"

    aput-object v3, v2, v6

    const-string v3, "BiBoB"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CALL"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23820"

    aput-object v3, v2, v6

    const-string v3, "Call me"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CBB"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23802"

    aput-object v3, v2, v6

    const-string v3, "CBB Mobil"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DLG"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23820"

    aput-object v3, v2, v6

    const-string v3, "DLG Tele"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TDC"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23801"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23802"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELI"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23820"

    aput-object v3, v2, v6

    const-string v3, "2382010_2382030"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELI"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23830"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELM"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23801"

    aput-object v3, v2, v6

    const-string v3, "TELMORE"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ELI"

    aput-object v3, v2, v4

    const-string v3, "EE"

    aput-object v3, v2, v5

    const-string v3, "24802"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EMT"

    aput-object v3, v2, v4

    const-string v3, "EE"

    aput-object v3, v2, v5

    const-string v3, "24801"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "EE"

    aput-object v3, v2, v5

    const-string v3, "24803"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DNS"

    aput-object v3, v2, v4

    const-string v3, "FI"

    aput-object v3, v2, v5

    const-string v3, "24412"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DNS"

    aput-object v3, v2, v4

    const-string v3, "FI"

    aput-object v3, v2, v5

    const-string v3, "24403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ELI"

    aput-object v3, v2, v4

    const-string v3, "FI"

    aput-object v3, v2, v5

    const-string v3, "24405"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SAU"

    aput-object v3, v2, v4

    const-string v3, "FI"

    aput-object v3, v2, v5

    const-string v3, "24421"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SON"

    aput-object v3, v2, v4

    const-string v3, "FI"

    aput-object v3, v2, v5

    const-string v3, "24499"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "MK"

    aput-object v3, v2, v5

    const-string v3, "29401"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIP"

    aput-object v3, v2, v4

    const-string v3, "MK"

    aput-object v3, v2, v5

    const-string v3, "29403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ONE"

    aput-object v3, v2, v4

    const-string v3, "MK"

    aput-object v3, v2, v5

    const-string v3, "29402"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ONE"

    aput-object v3, v2, v4

    const-string v3, "MK"

    aput-object v3, v2, v5

    const-string v3, "29402"

    aput-object v3, v2, v6

    const-string v3, "294020001"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AUC"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20810"

    aput-object v3, v2, v6

    const-string v3, "A MOBILE"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BYT"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20820"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CAR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20801"

    aput-object v3, v2, v6

    const-string v3, "33"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "COR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20810"

    aput-object v3, v2, v6

    const-string v3, "12"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DAR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20810"

    aput-object v3, v2, v6

    const-string v3, "DA"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "FREE"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20815"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LAP"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20810"

    aput-object v3, v2, v6

    const-string v3, "4C"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LEC"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20810"

    aput-object v3, v2, v6

    const-string v3, "LeclercMobile"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NRJ"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20801"

    aput-object v3, v2, v6

    const-string v3, "4E"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NRJ"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20810"

    aput-object v3, v2, v6

    const-string v3, "4E"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20801"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "34001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "64700"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SFR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20810"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SFR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "64710"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20801"

    aput-object v3, v2, v6

    const-string v3, "52"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DIG"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "34020"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORC"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "34001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "OUT"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "34002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "64700"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "OUT"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "64702"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SRR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "64710"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "COR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "64710"

    aput-object v3, v2, v6

    const-string v3, "12"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "1&1"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26202"

    aput-object v3, v2, v6

    const-string v3, "1&1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26203"

    aput-object v3, v2, v6

    const-string v3, "debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26203"

    aput-object v3, v2, v6

    const-string/jumbo v3, "mobilcom-debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26207"

    aput-object v3, v2, v6

    const-string v3, "debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26207"

    aput-object v3, v2, v6

    const-string/jumbo v3, "mobilcom-debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26201"

    aput-object v3, v2, v6

    const-string v3, "debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26201"

    aput-object v3, v2, v6

    const-string/jumbo v3, "mobilcom-debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26202"

    aput-object v3, v2, v6

    const-string v3, "debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26202"

    aput-object v3, v2, v6

    const-string/jumbo v3, "mobilcom-debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EPLU"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26203"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "O2"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26207"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "O2"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26207"

    aput-object v3, v2, v6

    const-string v3, "262075_2620749"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TCH"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26207"

    aput-object v3, v2, v6

    const-string v3, "Tchibo"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26201"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26202"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "COS"

    aput-object v3, v2, v4

    const-string v3, "GR"

    aput-object v3, v2, v5

    const-string v3, "20201"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "GR"

    aput-object v3, v2, v5

    const-string v3, "20205"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Q"

    aput-object v3, v2, v4

    const-string v3, "GR"

    aput-object v3, v2, v5

    const-string v3, "20209"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "WIND"

    aput-object v3, v2, v4

    const-string v3, "GR"

    aput-object v3, v2, v5

    const-string v3, "20210"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELE"

    aput-object v3, v2, v4

    const-string v3, "GL"

    aput-object v3, v2, v5

    const-string v3, "29001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "HU"

    aput-object v3, v2, v5

    const-string v3, "21601"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "HU"

    aput-object v3, v2, v5

    const-string v3, "21630"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DJU"

    aput-object v3, v2, v4

    const-string v3, "HU"

    aput-object v3, v2, v5

    const-string v3, "21601"

    aput-object v3, v2, v6

    const-string v3, "Djuice"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "HU"

    aput-object v3, v2, v5

    const-string v3, "21670"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "HU"

    aput-object v3, v2, v5

    const-string v3, "21670"

    aput-object v3, v2, v6

    const-string v3, "21670XX2"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RED"

    aput-object v3, v2, v4

    const-string v3, "HU"

    aput-object v3, v2, v5

    const-string v3, "21601"

    aput-object v3, v2, v6

    const-string v3, "RedBull"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NOVA"

    aput-object v3, v2, v4

    const-string v3, "IS"

    aput-object v3, v2, v5

    const-string v3, "27411"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SIM"

    aput-object v3, v2, v4

    const-string v3, "IS"

    aput-object v3, v2, v5

    const-string v3, "27401"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "IS"

    aput-object v3, v2, v5

    const-string v3, "27402"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "IS"

    aput-object v3, v2, v5

    const-string v3, "27403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "IE"

    aput-object v3, v2, v5

    const-string v3, "27205"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ECM"

    aput-object v3, v2, v4

    const-string v3, "IE"

    aput-object v3, v2, v5

    const-string v3, "27203"

    aput-object v3, v2, v6

    const-string v3, "Eircom"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MET"

    aput-object v3, v2, v4

    const-string v3, "IE"

    aput-object v3, v2, v5

    const-string v3, "27203"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "O2"

    aput-object v3, v2, v4

    const-string v3, "IE"

    aput-object v3, v2, v5

    const-string v3, "27202"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TES"

    aput-object v3, v2, v4

    const-string v3, "IE"

    aput-object v3, v2, v5

    const-string v3, "27211"

    aput-object v3, v2, v6

    const-string v3, "0A"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TES"

    aput-object v3, v2, v4

    const-string v3, "IE"

    aput-object v3, v2, v5

    const-string v3, "20601"

    aput-object v3, v2, v6

    const-string v3, "0A"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "IE"

    aput-object v3, v2, v5

    const-string v3, "27201"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "IT"

    aput-object v3, v2, v5

    const-string v3, "22210"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TIM"

    aput-object v3, v2, v4

    const-string v3, "IT"

    aput-object v3, v2, v5

    const-string v3, "22201"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "WIND"

    aput-object v3, v2, v4

    const-string v3, "IT"

    aput-object v3, v2, v5

    const-string v3, "22288"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "IT"

    aput-object v3, v2, v5

    const-string v3, "22299"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "FAST"

    aput-object v3, v2, v4

    const-string v3, "IT"

    aput-object v3, v2, v5

    const-string v3, "22299"

    aput-object v3, v2, v6

    const-string v3, "FastWeb"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "POS"

    aput-object v3, v2, v4

    const-string v3, "IT"

    aput-object v3, v2, v5

    const-string v3, "22210"

    aput-object v3, v2, v6

    const-string v3, "PosteMobile"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BEE"

    aput-object v3, v2, v4

    const-string v3, "KZ"

    aput-object v3, v2, v5

    const-string v3, "40101"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "KCEL"

    aput-object v3, v2, v4

    const-string v3, "KZ"

    aput-object v3, v2, v5

    const-string v3, "40102"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NEO"

    aput-object v3, v2, v4

    const-string v3, "KZ"

    aput-object v3, v2, v5

    const-string v3, "40177"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LMT"

    aput-object v3, v2, v4

    const-string v3, "LV"

    aput-object v3, v2, v5

    const-string v3, "24701"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "LV"

    aput-object v3, v2, v5

    const-string v3, "24702"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BITE"

    aput-object v3, v2, v4

    const-string v3, "LV"

    aput-object v3, v2, v5

    const-string v3, "24705"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LIB"

    aput-object v3, v2, v4

    const-string v3, "LY"

    aput-object v3, v2, v5

    const-string v3, "60600"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MAD"

    aput-object v3, v2, v4

    const-string v3, "LY"

    aput-object v3, v2, v5

    const-string v3, "60601"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BITE"

    aput-object v3, v2, v4

    const-string v3, "LT"

    aput-object v3, v2, v5

    const-string v3, "24602"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "OMNI"

    aput-object v3, v2, v4

    const-string v3, "LT"

    aput-object v3, v2, v5

    const-string v3, "24601"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "LT"

    aput-object v3, v2, v5

    const-string v3, "24603"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TNG"

    aput-object v3, v2, v4

    const-string v3, "LU"

    aput-object v3, v2, v5

    const-string v3, "27077"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LUX"

    aput-object v3, v2, v4

    const-string v3, "LU"

    aput-object v3, v2, v5

    const-string v3, "27001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "LU"

    aput-object v3, v2, v5

    const-string v3, "27099"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "MT"

    aput-object v3, v2, v5

    const-string v3, "27801"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "MD"

    aput-object v3, v2, v5

    const-string v3, "25901"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MOLD"

    aput-object v3, v2, v4

    const-string v3, "MD"

    aput-object v3, v2, v5

    const-string v3, "25902"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EVE"

    aput-object v3, v2, v4

    const-string v3, "MD"

    aput-object v3, v2, v5

    const-string v3, "25904"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UNT"

    aput-object v3, v2, v4

    const-string v3, "MD"

    aput-object v3, v2, v5

    const-string v3, "25905"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "ME"

    aput-object v3, v2, v5

    const-string v3, "29702"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "ME"

    aput-object v3, v2, v5

    const-string v3, "22004"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "ME"

    aput-object v3, v2, v5

    const-string v3, "29701"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "ME"

    aput-object v3, v2, v5

    const-string v3, "22002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTEL"

    aput-object v3, v2, v4

    const-string v3, "ME"

    aput-object v3, v2, v5

    const-string v3, "29703"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "IAM"

    aput-object v3, v2, v4

    const-string v3, "MA"

    aput-object v3, v2, v5

    const-string v3, "60401"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MED"

    aput-object v3, v2, v4

    const-string v3, "MA"

    aput-object v3, v2, v5

    const-string v3, "60400"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "WANA"

    aput-object v3, v2, v4

    const-string v3, "MA"

    aput-object v3, v2, v5

    const-string v3, "60402"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BEN"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20416"

    aput-object v3, v2, v6

    const-string v3, "Ben NL"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20404"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20416"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20420"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELF"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20412"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20402"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RABO"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20408"

    aput-object v3, v2, v6

    const-string v3, "Rabo Mobiel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "KPN"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20408"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "NZ"

    aput-object v3, v2, v5

    const-string v3, "53001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CES"

    aput-object v3, v2, v4

    const-string v3, "NO"

    aput-object v3, v2, v5

    const-string v3, "24202"

    aput-object v3, v2, v6

    const-string v3, "2420256"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NETC"

    aput-object v3, v2, v4

    const-string v3, "NO"

    aput-object v3, v2, v5

    const-string v3, "24202"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NET"

    aput-object v3, v2, v4

    const-string v3, "NO"

    aput-object v3, v2, v5

    const-string v3, "24205"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "NO"

    aput-object v3, v2, v5

    const-string v3, "24007"

    aput-object v3, v2, v6

    const-string v3, "2400768"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "NO"

    aput-object v3, v2, v5

    const-string v3, "24201"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VEN"

    aput-object v3, v2, v4

    const-string v3, "NO"

    aput-object v3, v2, v5

    const-string v3, "24201"

    aput-object v3, v2, v6

    const-string v3, "24201700"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "PL"

    aput-object v3, v2, v5

    const-string v3, "26002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "PL"

    aput-object v3, v2, v5

    const-string v3, "26003"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "PLAY"

    aput-object v3, v2, v4

    const-string v3, "PL"

    aput-object v3, v2, v5

    const-string v3, "26006"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RED"

    aput-object v3, v2, v4

    const-string v3, "PL"

    aput-object v3, v2, v5

    const-string v3, "26006"

    aput-object v3, v2, v6

    const-string v3, "Red Bull MOBILE"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "PLS"

    aput-object v3, v2, v4

    const-string v3, "PL"

    aput-object v3, v2, v5

    const-string v3, "26001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "PT"

    aput-object v3, v2, v5

    const-string v3, "26803"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMN"

    aput-object v3, v2, v4

    const-string v3, "PT"

    aput-object v3, v2, v5

    const-string v3, "26806"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "PT"

    aput-object v3, v2, v5

    const-string v3, "26801"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ZON"

    aput-object v3, v2, v4

    const-string v3, "PT"

    aput-object v3, v2, v5

    const-string v3, "26801"

    aput-object v3, v2, v6

    const-string v3, "ZON"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "COS"

    aput-object v3, v2, v4

    const-string v3, "RO"

    aput-object v3, v2, v5

    const-string v3, "22603"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "COS"

    aput-object v3, v2, v4

    const-string v3, "RO"

    aput-object v3, v2, v5

    const-string v3, "22606"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DIGI"

    aput-object v3, v2, v4

    const-string v3, "RO"

    aput-object v3, v2, v5

    const-string v3, "22605"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "RO"

    aput-object v3, v2, v5

    const-string v3, "22610"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "RO"

    aput-object v3, v2, v5

    const-string v3, "22601"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTS"

    aput-object v3, v2, v4

    const-string v3, "RS"

    aput-object v3, v2, v5

    const-string v3, "22003"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "RS"

    aput-object v3, v2, v5

    const-string v3, "22001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIP"

    aput-object v3, v2, v4

    const-string v3, "RS"

    aput-object v3, v2, v5

    const-string v3, "22005"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "O2"

    aput-object v3, v2, v4

    const-string v3, "SK"

    aput-object v3, v2, v5

    const-string v3, "23106"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "SK"

    aput-object v3, v2, v5

    const-string v3, "23101"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "SK"

    aput-object v3, v2, v5

    const-string v3, "23102"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MOBI"

    aput-object v3, v2, v4

    const-string v3, "SI"

    aput-object v3, v2, v5

    const-string v3, "29341"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SI"

    aput-object v3, v2, v4

    const-string v3, "SI"

    aput-object v3, v2, v5

    const-string v3, "29340"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TUS"

    aput-object v3, v2, v4

    const-string v3, "SI"

    aput-object v3, v2, v5

    const-string v3, "29370"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "YOI"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21404"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EUS"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21408"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EUS"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21406"

    aput-object v3, v2, v6

    const-string v3, "00"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21407"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21401"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "KPN"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21419"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELC"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21406"

    aput-object v3, v2, v6

    const-string v3, "2140613"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ERO"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21406"

    aput-object v3, v2, v6

    const-string v3, "2140606"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELC"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21416"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ONO"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21418"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24004"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24008"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24004"

    aput-object v3, v2, v6

    const-string v3, "Telenor SE"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24024"

    aput-object v3, v2, v6

    const-string v3, "Telenor SE"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELI"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELI"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24005"

    aput-object v3, v2, v6

    const-string v3, "Telia"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24007"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24005"

    aput-object v3, v2, v6

    const-string v3, "Tele2"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24024"

    aput-object v3, v2, v6

    const-string v3, "Tele2"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "HALE"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24001"

    aput-object v3, v2, v6

    const-string v3, "240017"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "HALE"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24005"

    aput-object v3, v2, v6

    const-string v3, "Halebop"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SUN"

    aput-object v3, v2, v4

    const-string v3, "CH"

    aput-object v3, v2, v5

    const-string v3, "22802"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "CH"

    aput-object v3, v2, v5

    const-string v3, "22803"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SWI"

    aput-object v3, v2, v4

    const-string v3, "CH"

    aput-object v3, v2, v5

    const-string v3, "22801"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LEB"

    aput-object v3, v2, v4

    const-string v3, "CH"

    aput-object v3, v2, v5

    const-string v3, "22802"

    aput-object v3, v2, v6

    const-string v3, "228024X45"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTS"

    aput-object v3, v2, v4

    const-string v3, "RU"

    aput-object v3, v2, v5

    const-string v3, "25001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MGF"

    aput-object v3, v2, v4

    const-string v3, "RU"

    aput-object v3, v2, v5

    const-string v3, "25002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "RU"

    aput-object v3, v2, v5

    const-string v3, "25020"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BEE"

    aput-object v3, v2, v4

    const-string v3, "RU"

    aput-object v3, v2, v5

    const-string v3, "25099"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "TN"

    aput-object v3, v2, v5

    const-string v3, "60501"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TUNI"

    aput-object v3, v2, v4

    const-string v3, "TN"

    aput-object v3, v2, v5

    const-string v3, "60502"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TUNS"

    aput-object v3, v2, v4

    const-string v3, "TN"

    aput-object v3, v2, v5

    const-string v3, "60503"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTS"

    aput-object v3, v2, v4

    const-string v3, "UA"

    aput-object v3, v2, v5

    const-string v3, "25501"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BEE"

    aput-object v3, v2, v4

    const-string v3, "UA"

    aput-object v3, v2, v5

    const-string v3, "25502"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "KYIV"

    aput-object v3, v2, v4

    const-string v3, "UA"

    aput-object v3, v2, v5

    const-string v3, "25503"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ACE"

    aput-object v3, v2, v4

    const-string v3, "UA"

    aput-object v3, v2, v5

    const-string v3, "25503"

    aput-object v3, v2, v6

    const-string v3, "Ace&Base"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DJU"

    aput-object v3, v2, v4

    const-string v3, "UA"

    aput-object v3, v2, v5

    const-string v3, "25503"

    aput-object v3, v2, v6

    const-string v3, "Djuice"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LIFE"

    aput-object v3, v2, v4

    const-string v3, "UA"

    aput-object v3, v2, v5

    const-string v3, "25506"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UTEL"

    aput-object v3, v2, v4

    const-string v3, "UA"

    aput-object v3, v2, v5

    const-string v3, "25507"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BEE"

    aput-object v3, v2, v4

    const-string v3, "UZ"

    aput-object v3, v2, v5

    const-string v3, "43404"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UCEL"

    aput-object v3, v2, v4

    const-string v3, "UZ"

    aput-object v3, v2, v5

    const-string v3, "43405"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTS"

    aput-object v3, v2, v4

    const-string v3, "UZ"

    aput-object v3, v2, v5

    const-string v3, "43407"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23415"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23420"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23594"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "O2"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23410"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23433"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23430"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23431"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23432"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TALK"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23415"

    aput-object v3, v2, v6

    const-string v3, "C1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TES"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23410"

    aput-object v3, v2, v6

    const-string v3, "0A"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ASDA"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23415"

    aput-object v3, v2, v6

    const-string v3, "A0"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIR"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23430"

    aput-object v3, v2, v6

    const-string v3, "28"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23415"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23420"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23594"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "O2"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23410"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23433"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23430"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23431"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23432"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TALK"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23415"

    aput-object v3, v2, v6

    const-string v3, "C1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TES"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23410"

    aput-object v3, v2, v6

    const-string v3, "0A"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ASDA"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23415"

    aput-object v3, v2, v6

    const-string v3, "A0"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIR"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23430"

    aput-object v3, v2, v6

    const-string v3, "28"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "ZA"

    aput-object v3, v2, v5

    const-string v3, "65501"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SKT"

    aput-object v3, v2, v4

    const-string v3, "KR"

    aput-object v3, v2, v5

    const-string v3, "45005"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "KT"

    aput-object v3, v2, v4

    const-string v3, "KR"

    aput-object v3, v2, v5

    const-string v3, "45008"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "AU"

    aput-object v3, v2, v5

    const-string v3, "50501"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "OPT"

    aput-object v3, v2, v4

    const-string v3, "AU"

    aput-object v3, v2, v5

    const-string v3, "50502"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "OPT"

    aput-object v3, v2, v4

    const-string v3, "AU"

    aput-object v3, v2, v5

    const-string v3, "50502"

    aput-object v3, v2, v6

    const-string v3, "505029"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIR"

    aput-object v3, v2, v4

    const-string v3, "AU"

    aput-object v3, v2, v5

    const-string v3, "50502"

    aput-object v3, v2, v6

    const-string v3, "505029"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "AU"

    aput-object v3, v2, v5

    const-string v3, "50503"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TCL"

    aput-object v3, v2, v4

    const-string v3, "MX"

    aput-object v3, v2, v5

    const-string v3, "334020"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "MX"

    aput-object v3, v2, v5

    const-string v3, "334030"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "MX"

    aput-object v3, v2, v5

    const-string v3, "33403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UNE"

    aput-object v3, v2, v4

    const-string v3, "MX"

    aput-object v3, v2, v5

    const-string v3, "33404"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "IUS"

    aput-object v3, v2, v4

    const-string v3, "MX"

    aput-object v3, v2, v5

    const-string v3, "334050"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "GT"

    aput-object v3, v2, v5

    const-string v3, "70403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "GT"

    aput-object v3, v2, v5

    const-string v3, "704030"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "SV"

    aput-object v3, v2, v5

    const-string v3, "70604"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "SV"

    aput-object v3, v2, v5

    const-string v3, "706040"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "NI"

    aput-object v3, v2, v5

    const-string v3, "71030"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "NI"

    aput-object v3, v2, v5

    const-string v3, "710300"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "PA"

    aput-object v3, v2, v5

    const-string v3, "71402"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "PA"

    aput-object v3, v2, v5

    const-string v3, "714020"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "PE"

    aput-object v3, v2, v5

    const-string v3, "71606"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "AR"

    aput-object v3, v2, v5

    const-string v3, "72207"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TIM"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72402"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TIM"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TIM"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72404"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CLR"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72405"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIV"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72406"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIV"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72410"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIV"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72411"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIV"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72423"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SCTL"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72415"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BRT"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72416"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AMZ"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72424"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Oi"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72431"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CTBC"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72432"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CTBC"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72433"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CTBC"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72434"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLE"

    aput-object v3, v2, v4

    const-string v3, "CL"

    aput-object v3, v2, v5

    const-string v3, "73002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "CO"

    aput-object v3, v2, v5

    const-string v3, "732123"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "UY"

    aput-object v3, v2, v5

    const-string v3, "74807"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "31026"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x125

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310260"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "31021"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310210"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Default"

    aput-object v3, v2, v4

    const-string v3, "Default"

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Telephony$Carriers;->GLOBAL_OPERATORS:[[Ljava/lang/String;

    .line 4455
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    .line 4456
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    .line 4458
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_NUMERIC:Ljava/lang/String;

    .line 4459
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_EXTRAID:Ljava/lang/String;

    .line 4462
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Telephony$Carriers;->mNumericExtraIDSet:Ljava/util/HashSet;

    .line 4463
    sput-boolean v4, Landroid/provider/Telephony$Carriers;->isBuildOperatorVersionValues:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3994
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildOperatorVersionValues()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4467
    sget-boolean v6, Landroid/provider/Telephony$Carriers;->isBuildOperatorVersionValues:Z

    if-eqz v6, :cond_0

    .line 4496
    .local v1, arr$:[[Ljava/lang/String;
    .local v2, i$:I
    .local v3, len$:I
    :goto_0
    return v4

    .line 4469
    .end local v1           #arr$:[[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOperatorCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    move v4, v5

    goto :goto_0

    .line 4471
    :cond_2
    sget-object v1, Landroid/provider/Telephony$Carriers;->GLOBAL_OPERATORS:[[Ljava/lang/String;

    .restart local v1       #arr$:[[Ljava/lang/String;
    array-length v3, v1

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_7

    aget-object v0, v1, v2

    .line 4473
    .local v0, Op:[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    aget-object v6, v0, v5

    if-eqz v6, :cond_6

    aget-object v6, v0, v4

    if-eqz v6, :cond_6

    aget-object v6, v0, v9

    if-eqz v6, :cond_6

    aget-object v6, v0, v10

    if-eqz v6, :cond_6

    .line 4475
    aget-object v6, v0, v5

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOperatorCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    aget-object v6, v0, v4

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4478
    sget-object v6, Landroid/provider/Telephony$Carriers;->mNumericExtraIDSet:Ljava/util/HashSet;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v10

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4480
    sget-object v6, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_NUMERIC:Ljava/lang/String;

    if-nez v6, :cond_3

    aget-object v6, v0, v9

    sput-object v6, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_NUMERIC:Ljava/lang/String;

    .line 4481
    :cond_3
    sget-object v6, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_EXTRAID:Ljava/lang/String;

    if-nez v6, :cond_4

    aget-object v6, v0, v10

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_EXTRAID:Ljava/lang/String;

    .line 4483
    :cond_4
    const-string v6, "Telephony"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found Operator_Version Numeric and Extra ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 4488
    :cond_6
    const-string v6, "Telephony"

    const-string v7, "There are invaild Operator in GLOBAL_OPERATORS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4492
    .end local v0           #Op:[Ljava/lang/String;
    :cond_7
    sget-object v6, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_NUMERIC:Ljava/lang/String;

    if-eqz v6, :cond_8

    sget-object v6, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_EXTRAID:Ljava/lang/String;

    if-nez v6, :cond_9

    :cond_8
    move v4, v5

    goto/16 :goto_0

    .line 4494
    :cond_9
    sput-boolean v4, Landroid/provider/Telephony$Carriers;->isBuildOperatorVersionValues:Z

    goto/16 :goto_0
.end method

.method public static getAutoProfileKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "numeric"

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x6

    const/16 v10, 0x8

    const/4 v9, 0x7

    const/4 v8, 0x0

    .line 4714
    const-string v3, ""

    .line 4716
    .local v3, retCode:Ljava/lang/String;
    const-string v0, ""

    .local v0, operatorGid:Ljava/lang/String;
    const-string v2, ""

    .local v2, operatorSPN:Ljava/lang/String;
    const-string v1, ""

    .line 4718
    .local v1, operatorIMSI:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v4, v3

    .line 4913
    .end local v3           #retCode:Ljava/lang/String;
    .local v4, retCode:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 4721
    .end local v4           #retCode:Ljava/lang/String;
    .restart local v3       #retCode:Ljava/lang/String;
    :cond_0
    const-string v5, "45000"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v4, v3

    .end local v3           #retCode:Ljava/lang/String;
    .restart local v4       #retCode:Ljava/lang/String;
    goto :goto_0

    .line 4726
    .end local v4           #retCode:Ljava/lang/String;
    .restart local v3       #retCode:Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "gsm.sim.operator.gid"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4727
    const-string/jumbo v5, "gsm.sim.operator.alpha"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4728
    const-string/jumbo v5, "gsm.sim.operator.imsi"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4731
    invoke-static {p0, v0}, Landroid/provider/Telephony$Carriers;->isGidBasedOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4733
    const-string v5, "Telephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "is GidBasedOperator, Gid Value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 4737
    const/4 v5, 0x2

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4738
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 4741
    :cond_2
    const-string v5, "Telephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected GID Value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4742
    move-object v3, v0

    :cond_3
    :goto_1
    move-object v4, v3

    .line 4913
    .end local v3           #retCode:Ljava/lang/String;
    .restart local v4       #retCode:Ljava/lang/String;
    goto :goto_0

    .line 4744
    .end local v4           #retCode:Ljava/lang/String;
    .restart local v3       #retCode:Ljava/lang/String;
    :cond_4
    invoke-static {p0, v2}, Landroid/provider/Telephony$Carriers;->isSPNBasedOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4746
    const-string v5, "Telephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "is SPNBasedOperator, SPN Value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4748
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 4749
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 4752
    :cond_5
    const-string v5, "Telephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected SPN Value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4753
    move-object v3, v2

    goto :goto_1

    .line 4755
    :cond_6
    invoke-static {p0}, Landroid/provider/Telephony$Carriers;->isIMSIBasedOperator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 4757
    const-string v5, "Telephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "may be IMSIBasedOperator, IMSI Value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4760
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v12, :cond_9

    const-string v5, "22802"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4763
    invoke-virtual {v1, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "43"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v1, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "45"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4764
    :cond_7
    const-string v1, "228024X45"

    .line 4901
    :goto_2
    const-string v5, "Telephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected IMSI Value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4902
    move-object v3, v1

    goto/16 :goto_1

    .line 4766
    :cond_8
    const-string v1, ""

    goto :goto_2

    .line 4769
    :cond_9
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v12, :cond_b

    const-string v5, "29402"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 4772
    invoke-virtual {v1, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "294020001"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4773
    const-string v1, "294020001"

    goto :goto_2

    .line 4776
    :cond_a
    const-string v1, ""

    goto :goto_2

    .line 4779
    :cond_b
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v10, :cond_d

    const-string v5, "21670"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 4782
    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 4783
    const-string v1, "21670XX2"

    goto :goto_2

    .line 4786
    :cond_c
    const-string v1, ""

    goto :goto_2

    .line 4789
    :cond_d
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_10

    const-string v5, "21406"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 4792
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2140613"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v1, "2140613"

    .line 4794
    :cond_e
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2140606"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v1, "2140606"

    goto/16 :goto_2

    .line 4797
    :cond_f
    const-string v1, "00"

    goto/16 :goto_2

    .line 4800
    :cond_10
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v11, :cond_12

    const-string v5, "24001"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 4803
    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "240017"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v1, "240017"

    goto/16 :goto_2

    .line 4806
    :cond_11
    const-string v1, ""

    goto/16 :goto_2

    .line 4809
    :cond_12
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_15

    const-string v5, "23820"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 4812
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2382010"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2382030"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 4813
    :cond_13
    const-string v1, "2382010_2382030"

    goto/16 :goto_2

    .line 4816
    :cond_14
    const-string v1, ""

    goto/16 :goto_2

    .line 4819
    :cond_15
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_17

    const-string v5, "24202"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 4822
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2420256"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v1, "2420256XX"

    goto/16 :goto_2

    .line 4825
    :cond_16
    const-string v1, ""

    goto/16 :goto_2

    .line 4828
    :cond_17
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_1b

    const-string v5, "24007"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 4831
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v10, :cond_18

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "24007695"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 4832
    const-string v1, "24007695_24007696"

    goto/16 :goto_2

    .line 4833
    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v10, :cond_19

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "24007696"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 4834
    const-string v1, "24007695_24007696"

    goto/16 :goto_2

    .line 4836
    :cond_19
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2400768"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v1, "2400768"

    goto/16 :goto_2

    .line 4839
    :cond_1a
    const-string v1, ""

    goto/16 :goto_2

    .line 4842
    :cond_1b
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v10, :cond_1d

    const-string v5, "24201"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 4845
    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "24201700"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v1, "24201700"

    goto/16 :goto_2

    .line 4848
    :cond_1c
    const-string v1, ""

    goto/16 :goto_2

    .line 4851
    :cond_1d
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_1f

    const-string v5, "20601"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 4854
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2060188"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string v1, "2060188"

    goto/16 :goto_2

    .line 4857
    :cond_1e
    const-string v1, ""

    goto/16 :goto_2

    .line 4860
    :cond_1f
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v11, :cond_25

    const-string v5, "26207"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 4876
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x13

    if-lt v5, v6, :cond_20

    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "262075"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 4877
    const-string v5, "Tchibo"

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 4879
    :cond_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-lt v5, v6, :cond_22

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2620740"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2620739"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 4880
    :cond_21
    const-string v5, "Tchibo"

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 4882
    :cond_22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-lt v5, v6, :cond_24

    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "262075"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2620749"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 4883
    :cond_23
    const-string v1, "262075_2620749"

    goto/16 :goto_2

    .line 4886
    :cond_24
    const-string v1, ""

    goto/16 :goto_2

    .line 4889
    :cond_25
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v11, :cond_27

    const-string v5, "50502"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 4892
    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "505029"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const-string v1, "505029"

    goto/16 :goto_2

    .line 4895
    :cond_26
    const-string v1, ""

    goto/16 :goto_2

    .line 4899
    :cond_27
    const-string v1, ""

    goto/16 :goto_2

    .line 4907
    :cond_28
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isAutoProfileNeeded()Z

    move-result v5

    if-nez v5, :cond_3

    .line 4910
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOpVersionExtraID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method private static getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4510
    sget-object v0, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    .line 4513
    :goto_0
    return-object v0

    .line 4512
    :cond_0
    const-string/jumbo v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    .line 4513
    sget-object v0, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4702
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isAutoProfileNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4704
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4708
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOpVersionNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOpVersionExtraID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4526
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isAutoProfileNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 4529
    :goto_0
    return-object v0

    .line 4527
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_EXTRAID:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_EXTRAID:Ljava/lang/String;

    goto :goto_0

    .line 4528
    :cond_1
    invoke-static {}, Landroid/provider/Telephony$Carriers;->buildOperatorVersionValues()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_EXTRAID:Ljava/lang/String;

    goto :goto_0

    .line 4529
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static getOpVersionNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4518
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isAutoProfileNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 4521
    :goto_0
    return-object v0

    .line 4519
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_NUMERIC:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_NUMERIC:Ljava/lang/String;

    goto :goto_0

    .line 4520
    :cond_1
    invoke-static {}, Landroid/provider/Telephony$Carriers;->buildOperatorVersionValues()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_NUMERIC:Ljava/lang/String;

    goto :goto_0

    .line 4521
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private static getOperatorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4502
    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    .line 4505
    :goto_0
    return-object v0

    .line 4504
    :cond_0
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    .line 4505
    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isAcceptableSIM(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "numeric"
    .parameter "extraid"

    .prologue
    .line 4541
    sget-object v0, Landroid/provider/Telephony$Carriers;->mNumericExtraIDSet:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4542
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAutoProfileNeeded()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 4682
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 4683
    .local v0, countryCode:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    .line 4686
    .local v1, operatorCode:Ljava/lang/String;
    const-string v3, "OPEN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ATT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VZW"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DCM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SKT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "KT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LGU"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4697
    :cond_0
    :goto_0
    return v2

    .line 4695
    :cond_1
    const-string v3, "COM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4697
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isGidBasedOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "numeric"
    .parameter "gid"

    .prologue
    const/4 v0, 0x0

    .line 4565
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 4568
    :cond_0
    :goto_0
    return v0

    .line 4566
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4567
    const-string v1, "23410;0A;23415;A0;23415;C1;23430;28;20801;33;20801;52;20801;4E;20810;4E;20810;12;64710;12;20810;4C;20810;DA;27211;0A;20601;0A;21406;00;"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 4568
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isIMSIBasedOperator(Ljava/lang/String;)Z
    .locals 2
    .parameter "numeric"

    .prologue
    const/4 v0, 0x0

    .line 4675
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 4677
    :cond_0
    :goto_0
    return v0

    .line 4676
    :cond_1
    const-string v1, "22802;29402;21670;21406;21406;24001;23820;24202;24007;24007;24201;20601;26207;26207;26207;50502;"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 4677
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLoadableAPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "title"
    .parameter "numeric"
    .parameter "extraid"
    .parameter "dedicated"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5013
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 5014
    .local v0, countryCode:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    .line 5016
    .local v1, operatorCode:Ljava/lang/String;
    if-nez p2, :cond_1

    const-string p2, ""

    .line 5021
    :goto_0
    if-nez p1, :cond_2

    .line 5142
    :cond_0
    :goto_1
    return v3

    .line 5017
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 5023
    :cond_2
    if-eqz p3, :cond_3

    .line 5025
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5026
    .local v2, version:Ljava/lang/String;
    invoke-virtual {v2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    .line 5028
    const-string v4, "Telephony"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This version is for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", but profile is dedicated for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5034
    .end local v2           #version:Ljava/lang/String;
    :cond_3
    const-string v5, "OPEN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ATT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "VZW"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "DCM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "SKT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "KT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "LGU"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 5041
    :cond_4
    const-string v5, "45000"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5043
    const-string v3, "Telephony"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OPEN, title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", numeric: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 5044
    goto/16 :goto_1

    .line 5048
    :cond_5
    const-string v5, "BR"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5050
    const-string v5, "Telephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OPEN BR, title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", numeric: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is added"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5052
    const-string v5, "724"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto/16 :goto_1

    .line 5056
    :cond_6
    const-string v5, "DE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5058
    const-string v5, "Telephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OPEN DE, title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", numeric: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is added"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5060
    const-string v5, "262"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto/16 :goto_1

    .line 5064
    :cond_7
    const-string v5, "FR"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5066
    const-string v5, "Telephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OPEN FR, title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", numeric: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is added"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    const-string v5, "208"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v3, v4

    goto/16 :goto_1

    .line 5069
    :cond_8
    const-string v5, "340"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v3, v4

    goto/16 :goto_1

    .line 5070
    :cond_9
    const-string v5, "647"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto/16 :goto_1

    .line 5074
    :cond_a
    const-string v3, "Telephony"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EU OPEN & G1, title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", numeric: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 5077
    goto/16 :goto_1

    .line 5080
    :cond_b
    const-string v5, "COM"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 5082
    const-string v5, "45000"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 5084
    const-string v3, "Telephony"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Regional COM, title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", numeric: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 5085
    goto/16 :goto_1

    .line 5088
    :cond_c
    const-string v5, "ORG"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 5090
    const-string v5, "23205;ORANGE A;20610;MOBISTAR;20801;ORANGE F;64700;ORANGE RE;34001;ORANGE;27099;ORANGE;26003;ORANGE;26803;P OPTIMUS;22610;ORANGE RO;23101;ORANGE SK;21403;ORANGE;22803;ORANGE;23433;ORANGE;25901;ORANGE;"

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 5091
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d

    const-string v5, "23205;ORANGE A;20610;MOBISTAR;20801;ORANGE F;64700;ORANGE RE;34001;ORANGE;27099;ORANGE;26003;ORANGE;26803;P OPTIMUS;22610;ORANGE RO;23101;ORANGE SK;21403;ORANGE;22803;ORANGE;23433;ORANGE;25901;ORANGE;"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 5117
    :cond_d
    const-string v3, "Telephony"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", numeric: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 5119
    goto/16 :goto_1

    .line 5093
    :cond_e
    const-string v5, "VDF"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 5095
    const-string v5, "27602;VODAFONE AL;23201;A1;20601;PROXIMUS;28401;;21910;HR VIP;23003;VODAFONE CZ;20810;F SFR;64710;SFR;26202;VODAFONE.DE;20205;VODAFONE GR;21670;VODAFONE HU;21670;21670XX2;27402;;27403;;27201;VODAFONE IE;22210;VODAFONE IT;27801;VODAFONE MT;20404;;26801;;22601;VODAFONE RO;29340;SOMOBIL;21401;VODAFONE ES;22801;SWISSCOM;23415;VODAFONE UK;53001;;50503;;65501;;"

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 5096
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d

    const-string v5, "27602;VODAFONE AL;23201;A1;20601;PROXIMUS;28401;;21910;HR VIP;23003;VODAFONE CZ;20810;F SFR;64710;SFR;26202;VODAFONE.DE;20205;VODAFONE GR;21670;VODAFONE HU;21670;21670XX2;27402;;27403;;27201;VODAFONE IE;22210;VODAFONE IT;27801;VODAFONE MT;20404;;26801;;22601;VODAFONE RO;29340;SOMOBIL;21401;VODAFONE ES;22801;SWISSCOM;23415;VODAFONE UK;53001;;50503;;65501;;"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_d

    goto/16 :goto_1

    .line 5098
    :cond_f
    const-string v5, "TMO"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 5100
    const-string v5, "23203;T MOBILE A;28405;284 05;21901;T-MOBILE HR;23001;T-MOBILE CZ;29401;T-MOBILE MK;26201;;20201;COSMOTE;21630;T-MOBILE HU;22004;T-MOBILE CG;29702;T-MOBILE CG;20416;;20420;;26002;T-MOBILE.PL;22603;COSMOTE;22606;COSMOTE;23102;T-MOBILE SK;23430;T-MOBILE;23431;T-MOBILE;23432;T-MOBILE;"

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 5101
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d

    const-string v5, "23203;T MOBILE A;28405;284 05;21901;T-MOBILE HR;23001;T-MOBILE CZ;29401;T-MOBILE MK;26201;;20201;COSMOTE;21630;T-MOBILE HU;22004;T-MOBILE CG;29702;T-MOBILE CG;20416;;20420;;26002;T-MOBILE.PL;22603;COSMOTE;22606;COSMOTE;23102;T-MOBILE SK;23430;T-MOBILE;23431;T-MOBILE;23432;T-MOBILE;"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_d

    goto/16 :goto_1

    .line 5103
    :cond_10
    const-string v5, "H3G"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 5105
    const-string v5, "23210;3;23806;3;27205;;22299;;24002;3SE;24004;3SE;23420;3;23594;3;45403;3;"

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 5106
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d

    const-string v5, "23210;3;23806;3;27205;;22299;;24002;3SE;24004;3SE;23420;3;23594;3;45403;3;"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_d

    goto/16 :goto_1

    .line 5108
    :cond_11
    const-string v5, "O2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 5110
    const-string v5, "23002;O2 - CZ;26207;;26207;262075_2620749;27202;O2.IE;23106;O2 - SK;21407;Base;23410;O2 - UK;"

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 5111
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d

    const-string v5, "23002;O2 - CZ;26207;;26207;262075_2620749;27202;O2.IE;23106;O2 - SK;21407;Base;23410;O2 - UK;"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_d

    goto/16 :goto_1

    .line 5125
    :cond_12
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isAutoProfileNeeded()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 5127
    const-string v5, "45000"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 5129
    const-string v3, "Telephony"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAutoProfileNeeded() is true, title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", numeric: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 5130
    goto/16 :goto_1

    .line 5133
    :cond_13
    const-string v5, "Telephony"

    const-string v6, "ERROR! THIS COMMNET SHOULD NOT BE PRINTED."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5136
    :cond_14
    invoke-static {}, Landroid/provider/Telephony$Carriers;->buildOperatorVersionValues()Z

    .line 5138
    sget-object v5, Landroid/provider/Telephony$Carriers;->mNumericExtraIDSet:Ljava/util/HashSet;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5140
    const-string v3, "Telephony"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", numeric: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", extraid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 5142
    goto/16 :goto_1
.end method

.method public static isMultipleNumericOperator()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4534
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isAutoProfileNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4535
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Landroid/provider/Telephony$Carriers;->mNumericExtraIDSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSPNBasedOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "numeric"
    .parameter "spn"

    .prologue
    const/4 v0, 0x0

    .line 4617
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 4620
    :cond_0
    :goto_0
    return v0

    .line 4618
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4619
    const-string v1, "23801;TELMORE;23802;BIBOB;23802;CBB MOBIL;23820;CALL ME;23820;DLG TELE;20810;A MOBILE;20810;LECLERCMOBILE;26201;DEBITEL;26201;MOBILCOM-DEBITEL;26202;DEBITEL;26202;MOBILCOM-DEBITEL;26202;1&1;26203;DEBITEL;26203;MOBILCOM-DEBITEL;26207;DEBITEL;26207;MOBILCOM-DEBITEL;21601;DJUICE;22299;FASTWEB;22210;POSTEMOBILE;20408;RABO MOBIEL;20416;BEN NL;26801;ZON;24004;TELENOR SE;24005;HALEBOP;24005;TELE2;24005;TELIA;24024;TELE2;24024;TELENOR SE;25503;ACE&BASE;25503;DJUICE;26006;Red Bull MOBILE;"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 4620
    const/4 v0, 0x1

    goto :goto_0
.end method
