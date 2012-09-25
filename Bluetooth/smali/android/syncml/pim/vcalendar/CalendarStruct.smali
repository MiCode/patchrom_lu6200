.class public Landroid/syncml/pim/vcalendar/CalendarStruct;
.super Ljava/lang/Object;
.source "CalendarStruct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;
    }
.end annotation


# instance fields
.field public eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;",
            ">;"
        }
    .end annotation
.end field

.field public timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public addEventList(Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;)V
    .locals 1
    .parameter "stru"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/syncml/pim/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    .line 55
    :cond_0
    iget-object v0, p0, Landroid/syncml/pim/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method
