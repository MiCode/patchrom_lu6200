.class Lcom/android/settings_ex/DateTimePickerDate$1;
.super Ljava/lang/Object;
.source "DateTimePickerDate.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DateTimePickerDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DateTimePickerDate;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DateTimePickerDate;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings_ex/DateTimePickerDate$1;->this$0:Lcom/android/settings_ex/DateTimePickerDate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 69
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 70
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 71
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 73
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 74
    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 76
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/DateTimePickerDate$1;->this$0:Lcom/android/settings_ex/DateTimePickerDate;

    const-class v2, Lcom/android/settings_ex/DateTimePickerTime;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/DateTimePickerDate$1;->this$0:Lcom/android/settings_ex/DateTimePickerDate;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DateTimePickerDate;->startActivity(Landroid/content/Intent;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/DateTimePickerDate$1;->this$0:Lcom/android/settings_ex/DateTimePickerDate;

    invoke-virtual {v0}, Lcom/android/settings_ex/DateTimePickerDate;->finish()V

    .line 81
    return-void
.end method
