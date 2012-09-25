.class Lcom/android/settings_ex/DateTimePickerDate$2;
.super Ljava/lang/Object;
.source "DateTimePickerDate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 84
    iput-object p1, p0, Lcom/android/settings_ex/DateTimePickerDate$2;->this$0:Lcom/android/settings_ex/DateTimePickerDate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/DateTimePickerDate$2;->this$0:Lcom/android/settings_ex/DateTimePickerDate;

    invoke-virtual {v0}, Lcom/android/settings_ex/DateTimePickerDate;->finish()V

    .line 87
    return-void
.end method
