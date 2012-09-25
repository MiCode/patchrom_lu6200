.class public Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryPreference;
.super Landroid/preference/Preference;
.source "PowerSaveBatteryPreference.java"


# instance fields
.field private mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;)V
    .locals 1
    .parameter "context"
    .parameter "stats"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    const v0, 0x7f040066

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryPreference;->setLayoutResource(I)V

    .line 41
    iput-object p2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryPreference;->mStats:Landroid/os/BatteryStats;

    .line 42
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 52
    const v1, 0x1010002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;

    .line 54
    .local v0, chart:Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryPreference;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->setStats(Landroid/os/BatteryStats;)V

    .line 55
    return-void
.end method
