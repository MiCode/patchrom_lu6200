.class Lcom/android/server/am/BlueANRDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "BlueANRDialog.java"


# static fields
.field static final FORCE_CLOSE:I = 0x1

.field static final START_ERROR_HANDLER:I = 0x5

.field static final START_TIMEOUT:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "BlueANRDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 8
    .parameter "service"
    .parameter "context"
    .parameter "app"
    .parameter "activity"
    .parameter "info"

    .prologue
    const/4 v7, 0x1

    .line 53
    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v4, Lcom/android/server/am/BlueANRDialog$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/BlueANRDialog$1;-><init>(Lcom/android/server/am/BlueANRDialog;)V

    iput-object v4, p0, Lcom/android/server/am/BlueANRDialog;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/server/am/BlueANRDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 56
    iput-object p3, p0, Lcom/android/server/am/BlueANRDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 57
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 59
    .local v2, res:Landroid/content/res/Resources;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/BlueANRDialog;->setCancelable(Z)V

    .line 62
    if-eqz p4, :cond_1

    iget-object v4, p4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 65
    .local v0, name1:Ljava/lang/CharSequence;
    :goto_0
    const/4 v1, 0x0

    .line 66
    .local v1, name2:Ljava/lang/CharSequence;
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v4, v7, :cond_3

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 68
    if-eqz v0, :cond_2

    .line 69
    const v3, 0x10403c3

    .line 84
    .local v3, resid:I
    :goto_1
    const-string v4, "BlueANRDialog"

    const-string v5, "[BLUE_ERROR_HANDLER] : ANR POPUP"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Blue Error Handler V1.2]\n************************\nInfo for ANR Popup\nDebugging File for this :\n/data/dontpanic/android_anr_report.txt\n************************\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/BlueANRDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v4, -0x1

    const v5, 0x10403c7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/BlueANRDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/BlueANRDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 97
    const/4 v4, -0x3

    const v5, 0x10403c9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/BlueANRDialog;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/BlueANRDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 101
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 102
    const/4 v4, -0x2

    const v5, 0x10403c8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/BlueANRDialog;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/BlueANRDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 107
    :cond_0
    const v4, 0x10403c2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/BlueANRDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/server/am/BlueANRDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x4000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/server/am/BlueANRDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application Not Responding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v4, p0, Lcom/android/server/am/BlueANRDialog;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/am/BlueANRDialog;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 114
    return-void

    .line 62
    .end local v0           #name1:Ljava/lang/CharSequence;
    .end local v1           #name2:Ljava/lang/CharSequence;
    .end local v3           #resid:I
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 71
    .restart local v0       #name1:Ljava/lang/CharSequence;
    .restart local v1       #name2:Ljava/lang/CharSequence;
    :cond_2
    move-object v0, v1

    .line 72
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 73
    const v3, 0x10403c5

    .restart local v3       #resid:I
    goto/16 :goto_1

    .line 76
    .end local v3           #resid:I
    :cond_3
    if-eqz v0, :cond_4

    .line 77
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 78
    const v3, 0x10403c4

    .restart local v3       #resid:I
    goto/16 :goto_1

    .line 80
    .end local v3           #resid:I
    :cond_4
    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 81
    const v3, 0x10403c6

    .restart local v3       #resid:I
    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/am/BlueANRDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/BlueANRDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/BlueANRDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/BlueANRDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
