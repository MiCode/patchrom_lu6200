.class public final enum Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;
.super Ljava/lang/Enum;
.source "ProactiveCommandInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ProactiveCommandInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProactiveCommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum CLOSE_CH:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum DISPLAY_TEXT:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum GET_CH_STATUS:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum GET_INKEY:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum GET_INPUT:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum LANG_NOTIFICATION:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum LAUNCH_BROWSER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum MORE_TIME:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum OPEN_CH:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum PLAY_TONE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum POLLING_OFF:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum POLL_INTERVAL:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum PROVIDE_ACCESS_TECH:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum PROVIDE_BATT_STATUS:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum PROVIDE_LANG_INFO:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum PROVIDE_LOCAL_INFO:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum PROVIDE_NW_SEARCH_MODE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum RAW_TERMIMAL_RESPONSE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum RECEIVE_DATA:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum REFRESH:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum RUN_AT_CMDS:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum SELECT_ITEM:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum SEND_DATA:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum SEND_DTMF:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum SEND_SMS:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum SEND_SS:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum SEND_USSD:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum SETUP_CALL:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum SETUP_EVENT_LIST:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum SETUP_IDLE_TEXT:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum SETUP_MENU:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

.field public static final enum TIMER_MANAGEMENT:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "DISPLAY_TEXT"

    const/16 v2, 0x41

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 27
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "GET_INKEY"

    const/16 v2, 0x42

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->GET_INKEY:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "GET_INPUT"

    const/16 v2, 0x43

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->GET_INPUT:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 29
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "LAUNCH_BROWSER"

    const/16 v2, 0x44

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 30
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "MORE_TIME"

    const/16 v2, 0x45

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->MORE_TIME:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 31
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "PLAY_TONE"

    const/4 v2, 0x5

    const/16 v3, 0x46

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->PLAY_TONE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 32
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "POLL_INTERVAL"

    const/4 v2, 0x6

    const/16 v3, 0x47

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "PROVIDE_LOCAL_INFO"

    const/4 v2, 0x7

    const/16 v3, 0x48

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->PROVIDE_LOCAL_INFO:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "REFRESH"

    const/16 v2, 0x8

    const/16 v3, 0x49

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->REFRESH:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "RUN_AT_CMDS"

    const/16 v2, 0x9

    const/16 v3, 0x4a

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->RUN_AT_CMDS:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "SELECT_ITEM"

    const/16 v2, 0xa

    const/16 v3, 0x4b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SELECT_ITEM:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "SEND_SMS"

    const/16 v2, 0xb

    const/16 v3, 0x4c

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SEND_SMS:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "SEND_SS"

    const/16 v2, 0xc

    const/16 v3, 0x4d

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SEND_SS:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "SEND_USSD"

    const/16 v2, 0xd

    const/16 v3, 0x4e

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SEND_USSD:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "SETUP_CALL"

    const/16 v2, 0xe

    const/16 v3, 0x4f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SETUP_CALL:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "SETUP_EVENT_LIST"

    const/16 v2, 0xf

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SETUP_EVENT_LIST:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "SETUP_MENU"

    const/16 v2, 0x10

    const/16 v3, 0x51

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SETUP_MENU:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "SETUP_IDLE_TEXT"

    const/16 v2, 0x11

    const/16 v3, 0x52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SETUP_IDLE_TEXT:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "POLLING_OFF"

    const/16 v2, 0x12

    const/16 v3, 0x53

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->POLLING_OFF:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "PROVIDE_LANG_INFO"

    const/16 v2, 0x13

    const/16 v3, 0x54

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->PROVIDE_LANG_INFO:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "SEND_DTMF"

    const/16 v2, 0x14

    const/16 v3, 0x55

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SEND_DTMF:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "LANG_NOTIFICATION"

    const/16 v2, 0x15

    const/16 v3, 0x56

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->LANG_NOTIFICATION:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "TIMER_MANAGEMENT"

    const/16 v2, 0x16

    const/16 v3, 0x57

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->TIMER_MANAGEMENT:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "OPEN_CH"

    const/16 v2, 0x17

    const/16 v3, 0x58

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->OPEN_CH:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "CLOSE_CH"

    const/16 v2, 0x18

    const/16 v3, 0x59

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->CLOSE_CH:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "SEND_DATA"

    const/16 v2, 0x19

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SEND_DATA:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "RECEIVE_DATA"

    const/16 v2, 0x1a

    const/16 v3, 0x5b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "GET_CH_STATUS"

    const/16 v2, 0x1b

    const/16 v3, 0x5c

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->GET_CH_STATUS:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "PROVIDE_ACCESS_TECH"

    const/16 v2, 0x1c

    const/16 v3, 0x5d

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->PROVIDE_ACCESS_TECH:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 55
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "PROVIDE_BATT_STATUS"

    const/16 v2, 0x1d

    const/16 v3, 0x5e

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->PROVIDE_BATT_STATUS:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "PROVIDE_NW_SEARCH_MODE"

    const/16 v2, 0x1e

    const/16 v3, 0x5f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->PROVIDE_NW_SEARCH_MODE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    const-string v1, "RAW_TERMIMAL_RESPONSE"

    const/16 v2, 0x1f

    const/16 v3, 0x60

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->RAW_TERMIMAL_RESPONSE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    .line 25
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    sget-object v1, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->GET_INKEY:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->GET_INPUT:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->MORE_TIME:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->PLAY_TONE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->PROVIDE_LOCAL_INFO:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->REFRESH:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->RUN_AT_CMDS:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SELECT_ITEM:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SEND_SMS:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SEND_SS:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SEND_USSD:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SETUP_CALL:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SETUP_EVENT_LIST:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SETUP_MENU:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SETUP_IDLE_TEXT:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->POLLING_OFF:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->PROVIDE_LANG_INFO:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SEND_DTMF:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->LANG_NOTIFICATION:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->TIMER_MANAGEMENT:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->OPEN_CH:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->CLOSE_CH:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->SEND_DATA:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->GET_CH_STATUS:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->PROVIDE_ACCESS_TECH:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->PROVIDE_BATT_STATUS:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->PROVIDE_NW_SEARCH_MODE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->RAW_TERMIMAL_RESPONSE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->$VALUES:[Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->mValue:I

    .line 63
    return-void
.end method

.method public static getType(I)Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;
    .locals 5
    .parameter "value"

    .prologue
    .line 70
    invoke-static {}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->values()[Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 71
    .local v1, e:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;
    iget v4, v1, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->mValue:I

    if-ne v4, p0, :cond_0

    .line 75
    .end local v1           #e:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;
    :goto_1
    return-object v1

    .line 70
    .restart local v1       #e:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v1           #e:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->$VALUES:[Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->mValue:I

    return v0
.end method
