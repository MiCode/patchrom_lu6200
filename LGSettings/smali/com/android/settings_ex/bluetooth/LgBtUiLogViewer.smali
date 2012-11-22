.class public Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;
.super Landroid/app/Activity;
.source "LgBtUiLogViewer.java"


# static fields
.field private static log_dump:Ljava/lang/String;

.field private static mFontSize:F


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, 0x4170

    sput v0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->mFontSize:F

    const-string v0, ""

    sput-object v0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->log_dump:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer$1;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->log_dump:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->log_dump:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->updateScreen()V

    return-void
.end method

.method private updateScreen()V
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->log_dump:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Log Viewer"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->setContentView(I)V

    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->log_dump:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 88
    const-string v0, "Clear log"

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 91
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v4, 0x7f0b003b

    const/4 v1, 0x1

    const/high16 v3, 0x3f80

    .line 107
    packed-switch p1, :pswitch_data_0

    .line 123
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 109
    :pswitch_0
    sget v0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->mFontSize:F

    const/high16 v2, 0x41a0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    sget v0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->mFontSize:F

    add-float/2addr v0, v3

    sput v0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->mFontSize:F

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->mFontSize:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->updateScreen()V

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->mFontSize:F

    const/high16 v2, 0x4120

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    sget v0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->mFontSize:F

    sub-float/2addr v0, v3

    sput v0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->mFontSize:F

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->mFontSize:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->updateScreen()V

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const-string v0, ""

    sput-object v0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->log_dump:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->updateScreen()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->updateScreen()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.btui.log_viewer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 73
    return-void
.end method
