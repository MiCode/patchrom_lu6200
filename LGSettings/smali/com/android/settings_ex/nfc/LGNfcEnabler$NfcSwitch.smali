.class public Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcSwitch"
.end annotation


# instance fields
.field mSwitch:Landroid/widget/Switch;

.field private mTrigger:Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;

.field final synthetic this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Landroid/widget/Switch;Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;)V
    .locals 2
    .parameter
    .parameter "_switch"
    .parameter "trig"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mSwitch:Landroid/widget/Switch;

    iput-object p3, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mTrigger:Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleNfcStateChanged(II)V
    .locals 3
    .parameter "newState"
    .parameter "extraState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->setChecked(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->setChecked(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mTrigger:Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;

    invoke-virtual {v2, p2}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;->trigger(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 416
    if-nez p2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
