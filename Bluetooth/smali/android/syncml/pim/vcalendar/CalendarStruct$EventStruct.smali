.class public Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;
.super Ljava/lang/Object;
.source "CalendarStruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/syncml/pim/vcalendar/CalendarStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventStruct"
.end annotation


# instance fields
.field public aalarm:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public dtend:Ljava/lang/String;

.field public dtstart:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public event_location:Ljava/lang/String;

.field public has_alarm:Ljava/lang/String;

.field public last_date:Ljava/lang/String;

.field public reminderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rrule:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addReminderList(Ljava/lang/String;)V
    .locals 1
    .parameter "method"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/List;

    .line 45
    :cond_0
    iget-object v0, p0, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method
