.class public Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbTetherIntroUSCActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private isFinishing:Z

.field private mSelectOk:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->isFinishing:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->mSelectOk:Z

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 7

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400b0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->mView:Landroid/view/View;

    .line 54
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->mView:Landroid/view/View;

    const v4, 0x7f0b01cb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    .local v0, link:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <a href=\'http://uscellular.com/uscellular/common/common.jsp?path=/android/modem_feature.html\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0807ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, urlText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0807b9

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 58
    .local v1, textlink:Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 61
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->mView:Landroid/view/View;

    return-object v3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x1

    .line 67
    packed-switch p2, :pswitch_data_0

    .line 76
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->isFinishing:Z

    .line 77
    return-void

    .line 69
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->mSelectOk:Z

    .line 70
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->setResult(I)V

    goto :goto_0

    .line 73
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->mSelectOk:Z

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 40
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0807b6

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 41
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 42
    const v1, 0x7f0807b5

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 43
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    const v1, 0x7f080134

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 45
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->setupAlert()V

    .line 49
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 86
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 83
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbTetherIntroUSCActivity;->isFinishing:Z

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
