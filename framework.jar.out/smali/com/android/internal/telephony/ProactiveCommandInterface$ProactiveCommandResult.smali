.class public final enum Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;
.super Ljava/lang/Enum;
.source "ProactiveCommandInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ProactiveCommandInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProactiveCommandResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum ACCESS_TECH_UNABLE_TO_PROCESS_CMD:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum ACTION_IN_CONTRADICTION_WITH_THE_CURRENT_TIMER_STATE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum BACKWARD_MOVE_IN_SESSION_REQUESTED_BY_USER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum BEARER_INDEPENDENT_PROTOCOL_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum COMMAND_BEYOND_THE_ME_CAPABILITIES:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum COMMAND_DATA_NOT_UNDERSTOOD_BY_ME:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum COMMAND_NUMBER_NOT_KNOWN_BY_ME:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum COMMAND_PERFORMED_BUT_MODIFIED_BY_CALL_CONTROL_BY_SIM:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum COMMAND_PERFORMED_SUCCESSFULLY:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum COMMAND_PERFORMED_WITH_MISSING_INFORMATION:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum COMMAND_PERFORMED_WITH_MODIFICATION:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum COMMAND_PERFORMED_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum COMMAND_SUCCESSFUL_BUT_REQUESTED_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum COMMAND_SUCCESSFUL_LIMITED_SERVICE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum COMMAND_TYPE_NOT_UNDERSTOOD_BY_ME:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum ERROR_REQUIRED_VALUES_ARE_MISSING:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum HELP_INFORMATION_REQUIRED_BY_THE_USER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum INTERACTION_WITH_CALL_CONTROL_BY_SIM_TEMPORARY_PROBLEM:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum INTERACTION_WITH_CC_BY_SIM_OR_MO_SM_CONTROL_BY_SIM_PROBLEM:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum LAUNCH_BROWSER_GENERIC_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum ME_CURRENTLY_UNABLE_TO_PROCESS_COMMAND:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum MULTIPLE_CARD_COMMANDS_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum NETWORK_CURRENTLY_UNABLE_TO_PROCESS_COMMAND:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum PCMD_REFRESH_PERFORMED_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum PROACTIVE_SIM_SESSION_TERMINATED_BY_USER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum REFRESH_PERFORMED_BUT_USIM_NOT_ACTIVE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum SMS_RP_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum SS_RETURN_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum USER_CLEARED_DOWN_CALL_BEFORE_CONNECTION_OR_NETWORK_RELEASE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum USER_DID_NOT_ACCEPT_CALL_SET_UP_REQUEST:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum USSD_RETURN_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

.field public static final enum USSD_SS_TERMINATED_BY_THE_USER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;


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

    .line 80
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "COMMAND_PERFORMED_SUCCESSFULLY"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_PERFORMED_SUCCESSFULLY:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "COMMAND_PERFORMED_WITH_PARTIAL_COMPREHENSION"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_PERFORMED_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "COMMAND_PERFORMED_WITH_MISSING_INFORMATION"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_PERFORMED_WITH_MISSING_INFORMATION:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "PCMD_REFRESH_PERFORMED_WITH_ADDITIONAL_EFS_READ"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->PCMD_REFRESH_PERFORMED_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "COMMAND_SUCCESSFUL_BUT_REQUESTED_ICON_NOT_DISPLAYED"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_SUCCESSFUL_BUT_REQUESTED_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "COMMAND_PERFORMED_BUT_MODIFIED_BY_CALL_CONTROL_BY_SIM"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_PERFORMED_BUT_MODIFIED_BY_CALL_CONTROL_BY_SIM:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "COMMAND_SUCCESSFUL_LIMITED_SERVICE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_SUCCESSFUL_LIMITED_SERVICE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 88
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "COMMAND_PERFORMED_WITH_MODIFICATION"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_PERFORMED_WITH_MODIFICATION:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "REFRESH_PERFORMED_BUT_USIM_NOT_ACTIVE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->REFRESH_PERFORMED_BUT_USIM_NOT_ACTIVE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "PROACTIVE_SIM_SESSION_TERMINATED_BY_USER"

    const/16 v2, 0x9

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->PROACTIVE_SIM_SESSION_TERMINATED_BY_USER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "BACKWARD_MOVE_IN_SESSION_REQUESTED_BY_USER"

    const/16 v2, 0xa

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->BACKWARD_MOVE_IN_SESSION_REQUESTED_BY_USER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "NO_RESPONSE_FROM_USER"

    const/16 v2, 0xb

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 94
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "HELP_INFORMATION_REQUIRED_BY_THE_USER"

    const/16 v2, 0xc

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->HELP_INFORMATION_REQUIRED_BY_THE_USER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "USSD_SS_TERMINATED_BY_THE_USER"

    const/16 v2, 0xd

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->USSD_SS_TERMINATED_BY_THE_USER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "ME_CURRENTLY_UNABLE_TO_PROCESS_COMMAND"

    const/16 v2, 0xe

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->ME_CURRENTLY_UNABLE_TO_PROCESS_COMMAND:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 99
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "NETWORK_CURRENTLY_UNABLE_TO_PROCESS_COMMAND"

    const/16 v2, 0xf

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->NETWORK_CURRENTLY_UNABLE_TO_PROCESS_COMMAND:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "USER_DID_NOT_ACCEPT_CALL_SET_UP_REQUEST"

    const/16 v2, 0x10

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->USER_DID_NOT_ACCEPT_CALL_SET_UP_REQUEST:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "USER_CLEARED_DOWN_CALL_BEFORE_CONNECTION_OR_NETWORK_RELEASE"

    const/16 v2, 0x11

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->USER_CLEARED_DOWN_CALL_BEFORE_CONNECTION_OR_NETWORK_RELEASE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "ACTION_IN_CONTRADICTION_WITH_THE_CURRENT_TIMER_STATE"

    const/16 v2, 0x12

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->ACTION_IN_CONTRADICTION_WITH_THE_CURRENT_TIMER_STATE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "INTERACTION_WITH_CALL_CONTROL_BY_SIM_TEMPORARY_PROBLEM"

    const/16 v2, 0x13

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->INTERACTION_WITH_CALL_CONTROL_BY_SIM_TEMPORARY_PROBLEM:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 105
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "LAUNCH_BROWSER_GENERIC_ERROR"

    const/16 v2, 0x14

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->LAUNCH_BROWSER_GENERIC_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 107
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "COMMAND_BEYOND_THE_ME_CAPABILITIES"

    const/16 v2, 0x15

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_BEYOND_THE_ME_CAPABILITIES:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "COMMAND_TYPE_NOT_UNDERSTOOD_BY_ME"

    const/16 v2, 0x16

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_TYPE_NOT_UNDERSTOOD_BY_ME:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "COMMAND_DATA_NOT_UNDERSTOOD_BY_ME"

    const/16 v2, 0x17

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_DATA_NOT_UNDERSTOOD_BY_ME:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "COMMAND_NUMBER_NOT_KNOWN_BY_ME"

    const/16 v2, 0x18

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_NUMBER_NOT_KNOWN_BY_ME:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 111
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "SS_RETURN_ERROR"

    const/16 v2, 0x19

    const/16 v3, 0x34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->SS_RETURN_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "SMS_RP_ERROR"

    const/16 v2, 0x1a

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->SMS_RP_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 113
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "ERROR_REQUIRED_VALUES_ARE_MISSING"

    const/16 v2, 0x1b

    const/16 v3, 0x36

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->ERROR_REQUIRED_VALUES_ARE_MISSING:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "USSD_RETURN_ERROR"

    const/16 v2, 0x1c

    const/16 v3, 0x37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 115
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "MULTIPLE_CARD_COMMANDS_ERROR"

    const/16 v2, 0x1d

    const/16 v3, 0x38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->MULTIPLE_CARD_COMMANDS_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "INTERACTION_WITH_CC_BY_SIM_OR_MO_SM_CONTROL_BY_SIM_PROBLEM"

    const/16 v2, 0x1e

    const/16 v3, 0x39

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->INTERACTION_WITH_CC_BY_SIM_OR_MO_SM_CONTROL_BY_SIM_PROBLEM:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 118
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "BEARER_INDEPENDENT_PROTOCOL_ERROR"

    const/16 v2, 0x1f

    const/16 v3, 0x3a

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->BEARER_INDEPENDENT_PROTOCOL_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 119
    new-instance v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    const-string v1, "ACCESS_TECH_UNABLE_TO_PROCESS_CMD"

    const/16 v2, 0x20

    const/16 v3, 0x3b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->ACCESS_TECH_UNABLE_TO_PROCESS_CMD:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    .line 79
    const/16 v0, 0x21

    new-array v0, v0, [Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    sget-object v1, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_PERFORMED_SUCCESSFULLY:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_PERFORMED_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_PERFORMED_WITH_MISSING_INFORMATION:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->PCMD_REFRESH_PERFORMED_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_SUCCESSFUL_BUT_REQUESTED_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_PERFORMED_BUT_MODIFIED_BY_CALL_CONTROL_BY_SIM:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_SUCCESSFUL_LIMITED_SERVICE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_PERFORMED_WITH_MODIFICATION:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->REFRESH_PERFORMED_BUT_USIM_NOT_ACTIVE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->PROACTIVE_SIM_SESSION_TERMINATED_BY_USER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->BACKWARD_MOVE_IN_SESSION_REQUESTED_BY_USER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->HELP_INFORMATION_REQUIRED_BY_THE_USER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->USSD_SS_TERMINATED_BY_THE_USER:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->ME_CURRENTLY_UNABLE_TO_PROCESS_COMMAND:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->NETWORK_CURRENTLY_UNABLE_TO_PROCESS_COMMAND:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->USER_DID_NOT_ACCEPT_CALL_SET_UP_REQUEST:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->USER_CLEARED_DOWN_CALL_BEFORE_CONNECTION_OR_NETWORK_RELEASE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->ACTION_IN_CONTRADICTION_WITH_THE_CURRENT_TIMER_STATE:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->INTERACTION_WITH_CALL_CONTROL_BY_SIM_TEMPORARY_PROBLEM:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->LAUNCH_BROWSER_GENERIC_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_BEYOND_THE_ME_CAPABILITIES:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_TYPE_NOT_UNDERSTOOD_BY_ME:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_DATA_NOT_UNDERSTOOD_BY_ME:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->COMMAND_NUMBER_NOT_KNOWN_BY_ME:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->SS_RETURN_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->SMS_RP_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->ERROR_REQUIRED_VALUES_ARE_MISSING:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->MULTIPLE_CARD_COMMANDS_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->INTERACTION_WITH_CC_BY_SIM_OR_MO_SM_CONTROL_BY_SIM_PROBLEM:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->BEARER_INDEPENDENT_PROTOCOL_ERROR:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->ACCESS_TECH_UNABLE_TO_PROCESS_CMD:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->$VALUES:[Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

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
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput p3, p0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->mValue:I

    .line 125
    return-void
.end method

.method public static getResult(I)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    .line 132
    const/4 v4, 0x0

    .line 133
    .local v4, result:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;
    invoke-static {}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->values()[Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 134
    .local v1, e:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;
    iget v5, v1, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->mValue:I

    if-ne v5, p0, :cond_1

    .line 135
    move-object v4, v1

    .line 140
    .end local v1           #e:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;
    :cond_0
    if-nez v4, :cond_2

    const-string v5, "fail"

    .line 180
    :goto_1
    return-object v5

    .line 133
    .restart local v1       #e:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v1           #e:Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;
    :cond_2
    iget v5, v4, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->mValue:I

    packed-switch v5, :pswitch_data_0

    .line 180
    :pswitch_0
    const-string v5, "fail"

    goto :goto_1

    .line 151
    :pswitch_1
    const-string/jumbo v5, "success"

    goto :goto_1

    .line 178
    :pswitch_2
    const-string v5, "fail"

    goto :goto_1

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;
    .locals 1
    .parameter "name"

    .prologue
    .line 79
    const-class v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->$VALUES:[Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->mValue:I

    return v0
.end method
