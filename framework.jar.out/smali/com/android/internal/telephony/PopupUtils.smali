.class public final Lcom/android/internal/telephony/PopupUtils;
.super Ljava/lang/Object;
.source "PopupUtils.java"


# static fields
.field static DBG:Z = false

.field private static final DIALOG_TIMEOUT:I = 0x1d4c0

.field static final LOG_TAG:Ljava/lang/String; = "PopupUtils"

.field private static final MSG_ID_TIMEOUT:I = 0x1

.field private static canShowAlert:Z

.field private static mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private static mTimeoutHandler:Landroid/os/Handler;

.field private static networkDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 35
    sput-boolean v0, Lcom/android/internal/telephony/PopupUtils;->DBG:Z

    .line 38
    sput-boolean v0, Lcom/android/internal/telephony/PopupUtils;->canShowAlert:Z

    .line 57
    new-instance v0, Lcom/android/internal/telephony/PopupUtils$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/PopupUtils$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PopupUtils;->mTimeoutHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/PopupUtils$2;

    invoke-direct {v0}, Lcom/android/internal/telephony/PopupUtils$2;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PopupUtils;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/internal/telephony/PopupUtils;->networkDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    sput-object p0, Lcom/android/internal/telephony/PopupUtils;->networkDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/android/internal/telephony/PopupUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcom/android/internal/telephony/PopupUtils;->postDismissDialog()V

    return-void
.end method

.method public static isCanShowAlert()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/internal/telephony/PopupUtils;->canShowAlert:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 133
    const-string v0, "PopupUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PopupUtils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method private static postDismissDialog()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/PopupUtils;->networkDialog:Landroid/app/AlertDialog;

    .line 81
    return-void
.end method

.method public static setCanShowAlert(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 53
    sput-boolean p0, Lcom/android/internal/telephony/PopupUtils;->canShowAlert:Z

    .line 54
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "ctx"
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showDialog() canShowAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/PopupUtils;->canShowAlert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PopupUtils;->log(Ljava/lang/String;)V

    .line 103
    sget-boolean v0, Lcom/android/internal/telephony/PopupUtils;->canShowAlert:Z

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showDialog() networkDialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PopupUtils;->networkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PopupUtils;->log(Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/android/internal/telephony/PopupUtils;->networkDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 111
    sget-object v0, Lcom/android/internal/telephony/PopupUtils;->networkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 112
    invoke-static {}, Lcom/android/internal/telephony/PopupUtils;->postDismissDialog()V

    .line 115
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/internal/telephony/PopupUtils$3;

    invoke-direct {v2}, Lcom/android/internal/telephony/PopupUtils$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PopupUtils;->networkDialog:Landroid/app/AlertDialog;

    .line 123
    sget-object v0, Lcom/android/internal/telephony/PopupUtils;->networkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 124
    sget-object v0, Lcom/android/internal/telephony/PopupUtils;->networkDialog:Landroid/app/AlertDialog;

    sget-object v1, Lcom/android/internal/telephony/PopupUtils;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 125
    sget-object v0, Lcom/android/internal/telephony/PopupUtils;->networkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 126
    const-string/jumbo v0, "networkDialog show"

    invoke-static {v0}, Lcom/android/internal/telephony/PopupUtils;->log(Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/android/internal/telephony/PopupUtils;->mTimeoutHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/internal/telephony/PopupUtils;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
