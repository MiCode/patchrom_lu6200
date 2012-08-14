.class public interface abstract Landroid/provider/Telephony$TextBasedSmsColumns;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$TextBasedLGESmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextBasedSmsColumns"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final APP_ID:Ljava/lang/String; = "app_id"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final CHATTING_READ_REPLY:Ljava/lang/String; = "chatting_read_reply"

.field public static final CMAS:Ljava/lang/String; = "cmas"

.field public static final CMASEXPIRETIME:Ljava/lang/String; = "cmasexpiretime"

.field public static final CMAS_E_RECORD_CATEGORY:Ljava/lang/String; = "cmas_category"

.field public static final CMAS_E_RECORD_CERTAINTY:Ljava/lang/String; = "cmas_certainty"

.field public static final CMAS_E_RECORD_RESPONSE:Ljava/lang/String; = "cmas_response"

.field public static final CMAS_E_RECORD_SEVERITY:Ljava/lang/String; = "cmas_severity"

.field public static final CMAS_E_RECORD_URGENCY:Ljava/lang/String; = "cmas_urgency"

.field public static final CMAS_PRESIDENTIAL:Ljava/lang/String; = "cmas_presidential"

.field public static final CMD:Ljava/lang/String; = "cmd"

.field public static final CONFIRM_READ:Ljava/lang/String; = "confirm_read"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DATE_SENT:Ljava/lang/String; = "date_sent"

.field public static final ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final EXTRA_DATA:Ljava/lang/String; = "extra_data"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final LOCKED:Ljava/lang/String; = "locked"

.field public static final MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final MESSAGE_TYPEEX_PULL:I = 0x1

.field public static final MESSAGE_TYPEEX_SMSREADCONFIRM:I = 0x2

.field public static final MESSAGE_TYPE_ADV:I = 0x11

.field public static final MESSAGE_TYPE_ALL:I = 0x0

.field public static final MESSAGE_TYPE_BROADCAST:I = 0x13

.field public static final MESSAGE_TYPE_CALLBACKURL:I = 0xb

.field public static final MESSAGE_TYPE_CALLBACKURLSPAM:I = 0xc

.field public static final MESSAGE_TYPE_DRAFT:I = 0x3

.field public static final MESSAGE_TYPE_FAILED:I = 0x5

.field public static final MESSAGE_TYPE_INBOX:I = 0x1

.field public static final MESSAGE_TYPE_INBOX_SUB1:I = 0x35

.field public static final MESSAGE_TYPE_INBOX_SUB2:I = 0x36

.field public static final MESSAGE_TYPE_MMSRECEIVEREPLY:I = 0x32

.field public static final MESSAGE_TYPE_OUTBOX:I = 0x4

.field public static final MESSAGE_TYPE_PORTADDRESS:I = 0xa

.field public static final MESSAGE_TYPE_PUSH:I = 0x12

.field public static final MESSAGE_TYPE_QUEUED:I = 0x6

.field public static final MESSAGE_TYPE_RESERVED:I = 0x8

.field public static final MESSAGE_TYPE_SAVE:I = 0xd

.field public static final MESSAGE_TYPE_SAVETEMP:I = 0x28

.field public static final MESSAGE_TYPE_SAVE_BROADCAST:I = 0x18

.field public static final MESSAGE_TYPE_SAVE_CALLBACKURL:I = 0xf

.field public static final MESSAGE_TYPE_SAVE_PORTADDRESS:I = 0xe

.field public static final MESSAGE_TYPE_SAVE_PUSH:I = 0x17

.field public static final MESSAGE_TYPE_SAVE_VOICE:I = 0x10

.field public static final MESSAGE_TYPE_SENT:I = 0x2

.field public static final MESSAGE_TYPE_SMSREADCONFIRM:I = 0x33

.field public static final MESSAGE_TYPE_SPAM:I = 0x7

.field public static final MESSAGE_TYPE_SPAM_BROADCAST:I = 0x15

.field public static final MESSAGE_TYPE_SPAM_PUSH:I = 0x14

.field public static final MESSAGE_TYPE_SPAM_VOICE:I = 0x16

.field public static final MESSAGE_TYPE_VIDEO:I = 0x34

.field public static final MESSAGE_TYPE_VOICE:I = 0x9

.field public static final META_DATA:Ljava/lang/String; = "meta_data"

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final MODIFIED_TIME:Ljava/lang/String; = "modified_time"

.field public static final MSGBOX_TYPE:Ljava/lang/String; = "msg_boxtype"

.field public static final MSGBOX_TYPE_INFOLDER:I = 0x1

.field public static final MSGBOX_TYPE_MISSSENTFOLDER:I = 0x5

.field public static final MSGBOX_TYPE_NONE:I = 0x0

.field public static final MSGBOX_TYPE_OUTFOLDER:I = 0x2

.field public static final MSGBOX_TYPE_SAVEFOLDER:I = 0x4

.field public static final MSGBOX_TYPE_SPAMFOLDER:I = 0x3

.field public static final MSG_DCS:Ljava/lang/String; = "dcs"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final ORIGINAL_ADDRESS:Ljava/lang/String; = "original_address"

.field public static final ORIGIN_STORAGE:Ljava/lang/String; = "origin_storage"

.field public static final PAYLOAD:Ljava/lang/String; = "payload"

.field public static final PERSON:Ljava/lang/String; = "person"

.field public static final PERSON_ID:Ljava/lang/String; = "person"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final PRIORITY_EMERGENCY:I = 0x3

.field public static final PRIORITY_INTERACTIVE:I = 0x1

.field public static final PRIORITY_NORMAL:I = 0x0

.field public static final PRIORITY_URGENT:I = 0x2

.field public static final PRIVACY_CONFIDENTIAL:I = 0x2

.field public static final PRIVACY_INDICATOR:Ljava/lang/String; = "privacy_indicator"

.field public static final PRIVACY_NOT_RESTRICTED:I = 0x0

.field public static final PRIVACY_RESTRICTED:I = 0x1

.field public static final PRIVACY_SECRET:I = 0x3

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final REPLY_ADDRESS:Ljava/lang/String; = "reply_address"

.field public static final REPLY_OPTION:Ljava/lang/String; = "reply_option"

.field public static final REPLY_PATH_PRESENT:Ljava/lang/String; = "reply_path_present"

.field public static final RESERVE_TIME:Ljava/lang/String; = "reserve_time"

.field public static final SAVE_CALL_INBOX:I = 0x1

.field public static final SAVE_CALL_NONE:I = 0x0

.field public static final SAVE_CALL_OUTBOX:I = 0x2

.field public static final SAVE_CALL_TYPE:Ljava/lang/String; = "save_call_type"

.field public static final SEEN:Ljava/lang/String; = "seen"

.field public static final SERVICE_CENTER:Ljava/lang/String; = "service_center"

.field public static final SIM_COPY:Ljava/lang/String; = "simcopy"

.field public static final SMS_FORMAT:Ljava/lang/String; = "sms_format"

.field public static final SPAM_REPORT:Ljava/lang/String; = "spam_report"

.field public static final SPAM_REPORT_COMPLETE:I = 0x1

.field public static final SPAM_REPORT_NOT_YET:I = 0x0

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_COMPLETE:I = 0x0

.field public static final STATUS_FAILED:I = 0x40

.field public static final STATUS_NONE:I = -0x1

.field public static final STATUS_PENDING:I = 0x20

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final TAG_ENG:Ljava/lang/String; = "tag_eng"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPEEX:Ljava/lang/String; = "typeex"

.field public static final UI_DUPLICATE:Ljava/lang/String; = "ui_duplicate"
