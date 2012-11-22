.class public Lcom/android/settings_ex/DateTimePickerDate;
.super Landroid/app/Activity;
.source "DateTimePickerDate.java"


# instance fields
.field private datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settings_ex/DateTimePickerDate$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DateTimePickerDate$1;-><init>(Lcom/android/settings_ex/DateTimePickerDate;)V

    iput-object v0, p0, Lcom/android/settings_ex/DateTimePickerDate;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    new-instance v0, Lcom/android/settings_ex/DateTimePickerDate$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DateTimePickerDate$2;-><init>(Lcom/android/settings_ex/DateTimePickerDate;)V

    iput-object v0, p0, Lcom/android/settings_ex/DateTimePickerDate;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimePickerDate;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimePickerDate;->showDialog(I)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    .local v0, d:Landroid/app/Dialog;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/DateTimePickerDate;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-object v0

    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .local v6, calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/android/settings_ex/DateTimePickerDate;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .restart local v0       #d:Landroid/app/Dialog;
    move-object v1, v0

    .line 40
    check-cast v1, Landroid/app/DatePickerDialog;

    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    const-wide v2, 0x4978516f4cL

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    move-object v1, v0

    .line 43
    check-cast v1, Landroid/app/DatePickerDialog;

    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    const-wide v2, 0x1c02d509c66L

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
