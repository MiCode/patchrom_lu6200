.class public Lcom/android/settings_ex/nfc/LGNfcEnabler;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;,
        Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;,
        Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamSwitch;,
        Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;,
        Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;,
        Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcbeamScrPref;,
        Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcCheckPref;,
        Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTriggerInP2P;,
        Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;,
        Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcCardTrigger;,
        Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;,
        Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;
    }
.end annotation


# instance fields
.field mChangeListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field mNfcAdapterProxy:Lcom/android/settings_ex/nfc/NfcAdapterProxy;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Lcom/android/settings_ex/nfc/LGNfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nfc/LGNfcEnabler$1;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    iput-object p1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 95
    invoke-static {}, Lcom/android/settings_ex/Utils;->hasFeatureNfcP2P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/nfc/NfcAdapterProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapterProxy:Lcom/android/settings_ex/nfc/NfcAdapterProxy;

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 103
    iput-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 104
    const-string v0, "LGNfcEnabler"

    const-string v1, "mNfcAdapter is null in LGNfcEnabler()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_1
    return-void

    .line 98
    :cond_0
    iput-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapterProxy:Lcom/android/settings_ex/nfc/NfcAdapterProxy;

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter "context"
    .parameter "checkBoxPreference"
    .parameter "androidBeam"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcCheckPref;

    invoke-direct {v1, p0, p2}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcCheckPref;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcbeamScrPref;

    invoke-direct {v1, p0, p3}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcbeamScrPref;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switchBeam"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamSwitch;

    new-instance v2, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V

    invoke-direct {v1, p0, p2, v2}, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamSwitch;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Landroid/widget/Switch;Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/widget/LinearLayout;)V
    .locals 3
    .parameter "context"
    .parameter "switchNfc"
    .parameter "beam"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;

    new-instance v2, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V

    invoke-direct {v1, p0, p2, v2}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Landroid/widget/Switch;Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;

    new-instance v2, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V

    invoke-direct {v1, p0, p3, v2}, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Landroid/widget/LinearLayout;Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 3
    .parameter "context"
    .parameter "switchNfc"
    .parameter "p2p"
    .parameter "beam"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;

    new-instance v2, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcCardTrigger;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcCardTrigger;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V

    invoke-direct {v1, p0, p2, v2}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitch;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Landroid/widget/Switch;Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;

    invoke-direct {v1, p0, p3}, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;

    new-instance v2, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTriggerInP2P;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTriggerInP2P;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V

    invoke-direct {v1, p0, p4, v2}, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Landroid/widget/LinearLayout;Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/nfc/NfcSwitchPreference;)V
    .locals 3
    .parameter "context"
    .parameter "switchNfc"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-static {}, Lcom/android/settings_ex/Utils;->hasFeatureNfcP2P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;

    new-instance v2, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcCardTrigger;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcCardTrigger;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V

    invoke-direct {v1, p0, p2, v2}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Lcom/android/settings_ex/nfc/NfcSwitchPreference;Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;

    new-instance v2, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V

    invoke-direct {v1, p0, p2, v2}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Lcom/android/settings_ex/nfc/NfcSwitchPreference;Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public handleNfcStateChanged(II)V
    .locals 5
    .parameter "newState"
    .parameter "extraState"

    .prologue
    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;

    .line 179
    .local v1, listener:Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;
    invoke-interface {v1, p1, p2}, Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;->handleNfcStateChanged(II)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v1           #listener:Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;
    :cond_0
    const-string v2, "LGNfcEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNfcStateChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 164
    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_0

    .line 174
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;

    .line 170
    .local v1, listener:Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;
    invoke-interface {v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;->pause()V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    .end local v1           #listener:Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_0

    .line 160
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;

    .line 152
    .local v1, listener:Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;
    invoke-static {}, Lcom/android/settings_ex/Utils;->hasFeatureNfcP2P()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapterProxy:Lcom/android/settings_ex/nfc/NfcAdapterProxy;

    invoke-virtual {v2}, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->getAdapterState()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapterProxy:Lcom/android/settings_ex/nfc/NfcAdapterProxy;

    invoke-virtual {v3}, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->getAdapterExtraState()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;->handleNfcStateChanged(II)V

    .line 157
    :goto_2
    invoke-interface {v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;->resume()V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;->handleNfcStateChanged(II)V

    goto :goto_2

    .line 159
    .end local v1           #listener:Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public showAlertDlg(II)V
    .locals 4
    .parameter "titleID"
    .parameter "msgID"

    .prologue
    .line 627
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 628
    .local v0, AlertDlg:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 629
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 630
    const v1, 0x7f08044e

    new-instance v2, Lcom/android/settings_ex/nfc/LGNfcEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/nfc/LGNfcEnabler$4;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080bb1

    new-instance v3, Lcom/android/settings_ex/nfc/LGNfcEnabler$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/nfc/LGNfcEnabler$3;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/nfc/LGNfcEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/nfc/LGNfcEnabler$2;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 648
    return-void
.end method
