.class public Lcom/broadcom/bt/service/opp/VCalManager;
.super Ljava/lang/Object;
.source "VCalManager.java"


# instance fields
.field private mCalendars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mCalendars:Ljava/util/HashMap;

    .line 79
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mContext:Landroid/content/Context;

    .line 80
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mResolver:Landroid/content/ContentResolver;

    .line 81
    iput-object p2, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mUri:Landroid/net/Uri;

    .line 82
    return-void
.end method

.method private static convertLongToRFC2445DateTime(J)Ljava/lang/String;
    .locals 2
    .parameter "mills"

    .prologue
    .line 402
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 404
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 405
    const-string v1, "%Y%m%dT%H%M%SZ"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getReminders(Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;Ljava/lang/String;)V
    .locals 9
    .parameter "evtStruct"
    .parameter "localid"

    .prologue
    const/4 v3, 0x0

    .line 409
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 411
    .local v7, c:Landroid/database/Cursor;
    const-string v8, ""

    .line 412
    .local v8, data:Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "method"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 414
    invoke-virtual {p1, v8}, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->addReminderList(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_0
    if-eqz v7, :cond_1

    .line 417
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 419
    :cond_1
    return-void
.end method

.method private static isNull(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 395
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    :cond_0
    const/4 v0, 0x1

    .line 398
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 14

    .prologue
    .line 122
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 123
    const-string v0, "VCalManager"

    const-string v1, "Bad content URI."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 129
    .local v7, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 130
    .local v12, uid:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 131
    const-string v0, "VCalManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot query the content from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_1
    new-instance v8, Landroid/syncml/pim/vcalendar/CalendarStruct;

    invoke-direct {v8}, Landroid/syncml/pim/vcalendar/CalendarStruct;-><init>()V

    .line 136
    .local v8, calStruct:Landroid/syncml/pim/vcalendar/CalendarStruct;
    new-instance v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;

    invoke-direct {v10}, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;-><init>()V

    .line 138
    .local v10, evtStruct:Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 140
    const-string v0, "eventTimezone"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Landroid/syncml/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    .line 144
    iput-object v12, v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    .line 145
    const-string v0, "description"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    .line 147
    const-string v0, "dtend"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/opp/VCalManager;->convertLongToRFC2445DateTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    .line 149
    const-string v0, "dtstart"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/opp/VCalManager;->convertLongToRFC2445DateTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    .line 151
    const-string v0, "duration"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    .line 153
    const-string v0, "eventLocation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    .line 155
    const-string v0, "hasAlarm"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->has_alarm:Ljava/lang/String;

    .line 158
    const-string v0, "lastDate"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/opp/VCalManager;->convertLongToRFC2445DateTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->last_date:Ljava/lang/String;

    .line 160
    const-string v0, "rrule"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    .line 162
    const-string v0, "eventStatus"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    .line 165
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    .line 168
    iget-object v0, v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->has_alarm:Ljava/lang/String;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/VCalManager;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v10, v0}, Lcom/broadcom/bt/service/opp/VCalManager;->getReminders(Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;Ljava/lang/String;)V

    .line 172
    :cond_2
    if-eqz v7, :cond_3

    .line 173
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 174
    const/4 v7, 0x0

    .line 178
    :cond_3
    iget-object v0, v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->has_alarm:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->has_alarm:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "alarmTime"

    aput-object v5, v3, v4

    const-string v4, "event_id= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v13, p0, Lcom/broadcom/bt/service/opp/VCalManager;->mUri:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 183
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    const-string v0, "VCalManager"

    const-string v1, "Found alarm!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/opp/VCalManager;->convertLongToRFC2445DateTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->aalarm:Ljava/lang/String;

    .line 189
    :cond_4
    if-eqz v7, :cond_5

    .line 190
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 191
    const/4 v7, 0x0

    .line 194
    :cond_5
    invoke-virtual {v8, v10}, Landroid/syncml/pim/vcalendar/CalendarStruct;->addEventList(Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;)V

    .line 196
    new-instance v9, Landroid/syncml/pim/vcalendar/VCalComposer;

    invoke-direct {v9}, Landroid/syncml/pim/vcalendar/VCalComposer;-><init>()V

    .line 197
    .local v9, composer:Landroid/syncml/pim/vcalendar/VCalComposer;
    const/4 v0, 0x2

    invoke-virtual {v9, v8, v0}, Landroid/syncml/pim/vcalendar/VCalComposer;->createVCal(Landroid/syncml/pim/vcalendar/CalendarStruct;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 198
    .end local v9           #composer:Landroid/syncml/pim/vcalendar/VCalComposer;
    :catch_0
    move-exception v11

    .line 199
    .local v11, t:Ljava/lang/Throwable;
    if-eqz v7, :cond_6

    .line 200
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
