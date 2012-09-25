.class public Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;
.super Landroid/view/View;
.source "PowerSaveBatteryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;
    }
.end annotation


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mChargingLabel:Ljava/lang/String;

.field mChargingOffset:I

.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveGps:Z

.field mHavePhoneSignal:Z

.field mHaveWifi:Z

.field mHistEnd:J

.field mHistStart:J

.field mLargeMode:Z

.field mLevelBottom:I

.field mLevelOffset:I

.field mLevelTop:I

.field mLineWidth:I

.field mNumHist:I

.field final mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field mScreenOnLabel:Ljava/lang/String;

.field mScreenOnOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field mStats:Landroid/os/BatteryStats;

.field mStatsPeriod:J

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field final mTextRedPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field mTotalDurationString:Ljava/lang/String;

.field mTotalDurationStringWidth:I

.field mWakeLockLabel:Ljava/lang/String;

.field mWakeLockOffset:I

.field final mWakeLockPaint:Landroid/graphics/Paint;

.field final mWakeLockPath:Landroid/graphics/Path;

.field mWifiRunningLabel:Ljava/lang/String;

.field mWifiRunningOffset:I

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 26
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 187
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    new-instance v21, Landroid/graphics/Paint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 117
    new-instance v21, Landroid/graphics/Paint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v21, Landroid/graphics/Paint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    .line 119
    new-instance v21, Landroid/graphics/Paint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    .line 120
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingPaint:Landroid/graphics/Paint;

    .line 121
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    .line 122
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    .line 123
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    .line 124
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    .line 125
    new-instance v21, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;

    invoke-direct/range {v21 .. v21}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;

    .line 126
    new-instance v21, Landroid/text/TextPaint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 128
    new-instance v21, Landroid/text/TextPaint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextRedPaint:Landroid/text/TextPaint;

    .line 130
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 131
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatGoodPath:Landroid/graphics/Path;

    .line 132
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatWarnPath:Landroid/graphics/Path;

    .line 133
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .line 134
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingPath:Landroid/graphics/Path;

    .line 135
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnPath:Landroid/graphics/Path;

    .line 136
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnPath:Landroid/graphics/Path;

    .line 137
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPath:Landroid/graphics/Path;

    .line 138
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockPath:Landroid/graphics/Path;

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mContentResolver:Landroid/content/ContentResolver;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0xff

    const/16 v23, 0x80

    const/16 v24, 0x80

    const/16 v25, 0x80

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0x80

    const/16 v23, 0x0

    const/16 v24, 0xff

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0x80

    const/16 v23, 0xff

    const/16 v24, 0xff

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0xc0

    const/16 v23, 0xff

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0xff

    const/16 v23, 0x0

    const/16 v24, 0x80

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;

    move-object/from16 v21, v0

    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->setColors([I)V

    .line 210
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 211
    .local v12, instance:Landroid/content/res/Resources;
    if-eqz v12, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    invoke-virtual {v12}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v12           #instance:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    sget-object v21, Lcom/android/settings_ex/R$styleable;->BatteryHistoryChart:[I

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 224
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    .line 225
    .local v17, textColor:Landroid/content/res/ColorStateList;
    const/16 v18, 0xf

    .line 226
    .local v18, textSize:I
    const/16 v20, -0x1

    .line 227
    .local v20, typefaceIndex:I
    const/16 v16, -0x1

    .line 229
    .local v16, styleIndex:I
    const/4 v7, 0x0

    .line 230
    .local v7, appearance:Landroid/content/res/TypedArray;
    const/16 v21, 0x0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 231
    .local v6, ap:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_1

    .line 232
    sget-object v21, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 236
    :cond_1
    if-eqz v7, :cond_3

    .line 237
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    .line 238
    .local v13, n:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v13, :cond_2

    .line 239
    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 241
    .local v8, attr:I
    packed-switch v8, :pswitch_data_0

    .line 238
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 243
    :pswitch_0
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    .line 244
    goto :goto_2

    .line 247
    :pswitch_1
    move/from16 v0, v18

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 248
    goto :goto_2

    .line 251
    :pswitch_2
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    .line 252
    goto :goto_2

    .line 255
    :pswitch_3
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    goto :goto_2

    .line 260
    .end local v8           #attr:I
    :cond_2
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 263
    .end local v11           #i:I
    .end local v13           #n:I
    :cond_3
    const/4 v15, 0x0

    .line 264
    .local v15, shadowcolor:I
    const/4 v9, 0x0

    .local v9, dx:F
    const/4 v10, 0x0

    .local v10, dy:F
    const/4 v14, 0x0

    .line 266
    .local v14, r:F
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    .line 267
    .restart local v13       #n:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_3
    if-ge v11, v13, :cond_4

    .line 268
    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 270
    .restart local v8       #attr:I
    packed-switch v8, :pswitch_data_1

    .line 267
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 272
    :pswitch_4
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 273
    goto :goto_4

    .line 276
    :pswitch_5
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 277
    goto :goto_4

    .line 280
    :pswitch_6
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 281
    goto :goto_4

    .line 284
    :pswitch_7
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 285
    goto :goto_4

    .line 288
    :pswitch_8
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    .line 289
    goto :goto_4

    .line 292
    :pswitch_9
    move/from16 v0, v18

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 293
    goto :goto_4

    .line 296
    :pswitch_a
    move/from16 v0, v20

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    .line 297
    goto :goto_4

    .line 300
    :pswitch_b
    move/from16 v0, v16

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    goto :goto_4

    .line 305
    .end local v8           #attr:I
    :cond_4
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    if-eqz v17, :cond_5

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/text/TextPaint;->setColor(I)V

    .line 311
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextRedPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    const/high16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/text/TextPaint;->setColor(I)V

    .line 314
    const/16 v19, 0x0

    .line 315
    .local v19, tf:Landroid/graphics/Typeface;
    packed-switch v20, :pswitch_data_2

    .line 329
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 331
    if-eqz v15, :cond_6

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v9, v10, v15}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 334
    :cond_6
    return-void

    .line 317
    :pswitch_c
    sget-object v19, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 318
    goto :goto_5

    .line 321
    :pswitch_d
    sget-object v19, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 322
    goto :goto_5

    .line 325
    :pswitch_e
    sget-object v19, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_5

    .line 217
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v6           #ap:I
    .end local v7           #appearance:Landroid/content/res/TypedArray;
    .end local v9           #dx:F
    .end local v10           #dy:F
    .end local v11           #i:I
    .end local v13           #n:I
    .end local v14           #r:F
    .end local v15           #shadowcolor:I
    .end local v16           #styleIndex:I
    .end local v17           #textColor:Landroid/content/res/ColorStateList;
    .end local v18           #textSize:I
    .end local v19           #tf:Landroid/graphics/Typeface;
    .end local v20           #typefaceIndex:I
    :catch_0
    move-exception v21

    goto/16 :goto_0

    .line 216
    :catch_1
    move-exception v21

    goto/16 :goto_0

    .line 204
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0xfft
        0x0t 0xa0t 0xa0t 0xfft
        0x20t 0x80t 0x80t 0xfft
        0x40t 0x80t 0x80t 0xfft
        0x60t 0x80t 0x80t 0xfft
        0x0t 0x80t 0x0t 0xfft
    .end array-data

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 270
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 315
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "levelh"
    .parameter "startX"
    .parameter "y"
    .parameter "curLevelPath"
    .parameter "lastX"
    .parameter "lastCharging"
    .parameter "lastScreenOn"
    .parameter "lastGpsOn"
    .parameter "lastWifiRunning"
    .parameter "lastWakeLock"
    .parameter "lastPath"

    .prologue
    .line 420
    if-eqz p6, :cond_2

    .line 421
    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    .line 422
    if-eqz p13, :cond_0

    .line 423
    int-to-float v1, p1

    int-to-float v2, p5

    move-object/from16 v0, p13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 425
    :cond_0
    int-to-float v1, p1

    int-to-float v2, p5

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 427
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 428
    int-to-float v1, p4

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 429
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 432
    :cond_2
    if-eqz p8, :cond_3

    .line 433
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 435
    :cond_3
    if-eqz p9, :cond_4

    .line 436
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 438
    :cond_4
    if-eqz p10, :cond_5

    .line 439
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 441
    :cond_5
    if-eqz p11, :cond_6

    .line 442
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 444
    :cond_6
    if-eqz p12, :cond_7

    .line 445
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 447
    :cond_7
    iget-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_8

    .line 448
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->finish(I)V

    .line 450
    :cond_8
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 676
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->getWidth()I

    move-result v14

    .line 679
    .local v14, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->getHeight()I

    move-result v11

    .line 681
    .local v11, height:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatLevelPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 682
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLargeMode:Z

    if-eqz v1, :cond_5

    .line 684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 685
    .local v15, withText:F
    add-int/lit8 v1, v14, -0xf

    int-to-float v1, v1

    cmpl-float v1, v15, v1

    if-lez v1, :cond_4

    .line 686
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mDurationString:Ljava/lang/String;

    const/4 v3, 0x1

    add-int/lit8 v5, v14, -0xf

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/text/TextPaint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v4

    .line 687
    .local v4, break_position:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mDurationString:Ljava/lang/String;

    const/16 v3, 0xa

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextAscent:I

    neg-int v1, v1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 694
    .end local v4           #break_position:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTotalDurationString:Ljava/lang/String;

    div-int/lit8 v2, v14, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTotalDurationStringWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextAscent:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 700
    .end local v15           #withText:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 703
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 706
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 707
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 733
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLargeMode:Z

    if-eqz v1, :cond_6

    .line 752
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v7, v1

    int-to-float v8, v14

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 754
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    int-to-float v7, v1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 759
    .local v13, powerSaveMode:I
    const/4 v12, 0x1

    .local v12, i:I
    :goto_2
    const/16 v1, 0xa

    if-ge v12, v1, :cond_6

    .line 760
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, v12

    div-int/lit8 v2, v2, 0xa

    add-int v16, v1, v2

    .line 761
    .local v16, y:I
    const/4 v6, 0x0

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v8, v1

    move/from16 v0, v16

    int-to-float v9, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 762
    const/4 v1, -0x1

    if-le v13, v1, :cond_3

    rsub-int/lit8 v1, v12, 0xa

    mul-int/lit8 v1, v1, 0xa

    if-ne v13, v1, :cond_3

    .line 763
    const/4 v6, 0x0

    move/from16 v0, v16

    int-to-float v7, v0

    int-to-float v8, v14

    move/from16 v0, v16

    int-to-float v9, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextRedPaint:Landroid/text/TextPaint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 759
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 691
    .end local v12           #i:I
    .end local v13           #powerSaveMode:I
    .end local v16           #y:I
    .restart local v15       #withText:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mDurationString:Ljava/lang/String;

    const/high16 v2, 0x4120

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextAscent:I

    neg-int v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 697
    .end local v15           #withText:F
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mDurationString:Ljava/lang/String;

    div-int/lit8 v2, v14, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mDurationStringWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-int/lit8 v3, v11, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextAscent:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextAscent:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 767
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 410
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 411
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mDurationStringWidth:I

    .line 412
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTotalDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTotalDurationStringWidth:I

    .line 413
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextAscent:I

    .line 414
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextDescent:I

    .line 415
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 38
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 454
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 456
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextAscent:I

    sub-int v26, v2, v3

    .line 457
    .local v26, textHeight:I
    const/4 v2, 0x1

    const/high16 v3, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    .line 459
    mul-int/lit8 v2, v26, 0x6

    move/from16 v0, p2

    if-le v0, v2, :cond_a

    .line 460
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLargeMode:Z

    .line 461
    mul-int/lit8 v2, v26, 0xf

    move/from16 v0, p2

    if-le v0, v2, :cond_9

    .line 463
    div-int/lit8 v2, v26, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    .line 468
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    add-int v2, v2, v26

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v36, 0x40

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v36, 0x40

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v36, 0x40

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v36, 0x40

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 482
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    .line 483
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 493
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLargeMode:Z

    if-eqz v2, :cond_e

    .line 494
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    add-int v17, v26, v2

    .line 495
    .local v17, barOffset:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingOffset:I

    .line 496
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnOffset:I

    .line 497
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockOffset:I

    .line 498
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningOffset:I

    .line 499
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHaveWifi:Z

    if-eqz v2, :cond_b

    move/from16 v2, v17

    :goto_2
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnOffset:I

    .line 500
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHaveGps:Z

    if-eqz v2, :cond_c

    move/from16 v2, v17

    :goto_3
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalOffset:I

    .line 501
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_d

    .end local v17           #barOffset:I
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelOffset:I

    .line 503
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_1

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->init(I)V

    .line 517
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 527
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHistStart:J

    move-wide/from16 v29, v0

    .line 528
    .local v29, timeStart:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHistEnd:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHistStart:J

    move-wide/from16 v36, v0

    sub-long v27, v2, v36

    .line 530
    .local v27, timeChange:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatLow:I

    move/from16 v19, v0

    .line 531
    .local v19, batLow:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatHigh:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatLow:I

    sub-int v18, v2, v3

    .line 533
    .local v18, batChange:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelOffset:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    sub-int v5, v2, v3

    .line 534
    .local v5, levelh:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelBottom:I

    .line 536
    const/16 v34, 0x0

    .local v34, x:I
    const/16 v35, 0x0

    .local v35, y:I
    const/4 v6, 0x0

    .local v6, startX:I
    const/4 v9, -0x1

    .local v9, lastX:I
    const/4 v7, -0x1

    .line 537
    .local v7, lastY:I
    const/16 v22, 0x0

    .line 538
    .local v22, i:I
    const/4 v8, 0x0

    .line 539
    .local v8, curLevelPath:Landroid/graphics/Path;
    const/4 v15, 0x0

    .line 540
    .local v15, lastLinePath:Landroid/graphics/Path;
    const/4 v10, 0x0

    .local v10, lastCharging:Z
    const/4 v11, 0x0

    .local v11, lastScreenOn:Z
    const/4 v12, 0x0

    .line 541
    .local v12, lastGpsOn:Z
    const/4 v13, 0x0

    .local v13, lastWifiRunning:Z
    const/4 v14, 0x0

    .line 542
    .local v14, lastWakeLock:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mNumHist:I

    move/from16 v16, v0

    .line 543
    .local v16, N:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 544
    new-instance v24, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v24 .. v24}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 545
    .end local v10           #lastCharging:Z
    .end local v11           #lastScreenOn:Z
    .end local v12           #lastGpsOn:Z
    .local v24, rec:Landroid/os/BatteryStats$HistoryItem;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_1e

    .line 546
    move-object/from16 v0, v24

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 547
    move-object/from16 v0, v24

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v2, v2, v29

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v36, v0

    mul-long v2, v2, v36

    div-long v2, v2, v27

    long-to-int v0, v2

    move/from16 v34, v0

    .line 548
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    add-int/2addr v2, v5

    move-object/from16 v0, v24

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v3, v3, v19

    add-int/lit8 v4, v5, -0x1

    mul-int/2addr v3, v4

    div-int v3, v3, v18

    sub-int v35, v2, v3

    .line 550
    move/from16 v0, v34

    if-eq v9, v0, :cond_8

    .line 552
    move/from16 v0, v35

    if-eq v7, v0, :cond_3

    .line 555
    move-object/from16 v0, v24

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v31, v0

    .line 556
    .local v31, value:B
    const/16 v2, 0xe

    move/from16 v0, v31

    if-gt v0, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    .line 560
    .local v23, path:Landroid/graphics/Path;
    :goto_7
    move-object/from16 v0, v23

    if-eq v0, v15, :cond_11

    .line 561
    if-eqz v15, :cond_2

    .line 562
    move/from16 v0, v34

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 564
    :cond_2
    move/from16 v0, v34

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 565
    move-object/from16 v15, v23

    .line 570
    :goto_8
    if-nez v8, :cond_12

    .line 571
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 572
    move/from16 v0, v34

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 573
    move/from16 v6, v34

    .line 577
    :goto_9
    move/from16 v9, v34

    .line 578
    move/from16 v7, v35

    .line 581
    .end local v23           #path:Landroid/graphics/Path;
    .end local v31           #value:B
    :cond_3
    move-object/from16 v0, v24

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    if-eqz v2, :cond_13

    const/16 v20, 0x1

    .line 583
    .local v20, charging:Z
    :goto_a
    move/from16 v0, v20

    if-eq v0, v10, :cond_4

    .line 584
    if-eqz v20, :cond_14

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 589
    :goto_b
    move/from16 v10, v20

    .line 592
    :cond_4
    move-object/from16 v0, v24

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_15

    const/16 v25, 0x1

    .line 594
    .local v25, screenOn:Z
    :goto_c
    move/from16 v0, v25

    if-eq v0, v11, :cond_5

    .line 595
    if-eqz v25, :cond_16

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 600
    :goto_d
    move/from16 v11, v25

    .line 603
    :cond_5
    move-object/from16 v0, v24

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_17

    const/16 v21, 0x1

    .line 605
    .local v21, gpsOn:Z
    :goto_e
    move/from16 v0, v21

    if-eq v0, v12, :cond_6

    .line 606
    if-eqz v21, :cond_18

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 611
    :goto_f
    move/from16 v12, v21

    .line 614
    :cond_6
    move-object/from16 v0, v24

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    if-eqz v2, :cond_19

    const/16 v33, 0x1

    .line 616
    .local v33, wifiRunning:Z
    :goto_10
    move/from16 v0, v33

    if-eq v0, v13, :cond_7

    .line 617
    if-eqz v33, :cond_1a

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 622
    :goto_11
    move/from16 v13, v33

    .line 625
    :cond_7
    move-object/from16 v0, v24

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1b

    const/16 v32, 0x1

    .line 627
    .local v32, wakeLock:Z
    :goto_12
    move/from16 v0, v32

    if-eq v0, v14, :cond_8

    .line 628
    if-eqz v32, :cond_1c

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 633
    :goto_13
    move/from16 v14, v32

    .line 665
    .end local v20           #charging:Z
    .end local v21           #gpsOn:Z
    .end local v25           #screenOn:Z
    .end local v32           #wakeLock:Z
    .end local v33           #wifiRunning:Z
    :cond_8
    :goto_14
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 466
    .end local v5           #levelh:I
    .end local v6           #startX:I
    .end local v7           #lastY:I
    .end local v8           #curLevelPath:Landroid/graphics/Path;
    .end local v9           #lastX:I
    .end local v13           #lastWifiRunning:Z
    .end local v14           #lastWakeLock:Z
    .end local v15           #lastLinePath:Landroid/graphics/Path;
    .end local v16           #N:I
    .end local v18           #batChange:I
    .end local v19           #batLow:I
    .end local v22           #i:I
    .end local v24           #rec:Landroid/os/BatteryStats$HistoryItem;
    .end local v27           #timeChange:J
    .end local v29           #timeStart:J
    .end local v34           #x:I
    .end local v35           #y:I
    :cond_9
    div-int/lit8 v2, v26, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    goto/16 :goto_0

    .line 474
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLargeMode:Z

    .line 475
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    .line 476
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v36, 0x0

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v36, 0x0

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v36, 0x0

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v36, 0x0

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_1

    .line 499
    .restart local v17       #barOffset:I
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 500
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 501
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 507
    .end local v17           #barOffset:I
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnOffset:I

    .line 509
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingOffset:I

    .line 510
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalOffset:I

    .line 511
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mLevelOffset:I

    .line 512
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_1

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->init(I)V

    goto/16 :goto_5

    .line 557
    .restart local v5       #levelh:I
    .restart local v6       #startX:I
    .restart local v7       #lastY:I
    .restart local v8       #curLevelPath:Landroid/graphics/Path;
    .restart local v9       #lastX:I
    .restart local v13       #lastWifiRunning:Z
    .restart local v14       #lastWakeLock:Z
    .restart local v15       #lastLinePath:Landroid/graphics/Path;
    .restart local v16       #N:I
    .restart local v18       #batChange:I
    .restart local v19       #batLow:I
    .restart local v22       #i:I
    .restart local v24       #rec:Landroid/os/BatteryStats$HistoryItem;
    .restart local v27       #timeChange:J
    .restart local v29       #timeStart:J
    .restart local v31       #value:B
    .restart local v34       #x:I
    .restart local v35       #y:I
    :cond_f
    const/16 v2, 0x1d

    move/from16 v0, v31

    if-gt v0, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    .restart local v23       #path:Landroid/graphics/Path;
    goto/16 :goto_7

    .line 558
    .end local v23           #path:Landroid/graphics/Path;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    .restart local v23       #path:Landroid/graphics/Path;
    goto/16 :goto_7

    .line 567
    :cond_11
    move/from16 v0, v34

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_8

    .line 575
    :cond_12
    move/from16 v0, v34

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .line 581
    .end local v23           #path:Landroid/graphics/Path;
    .end local v31           #value:B
    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_a

    .line 587
    .restart local v20       #charging:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    .line 592
    :cond_15
    const/16 v25, 0x0

    goto/16 :goto_c

    .line 598
    .restart local v25       #screenOn:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_d

    .line 603
    :cond_17
    const/16 v21, 0x0

    goto/16 :goto_e

    .line 609
    .restart local v21       #gpsOn:Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_f

    .line 614
    :cond_19
    const/16 v33, 0x0

    goto/16 :goto_10

    .line 620
    .restart local v33       #wifiRunning:Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_11

    .line 625
    :cond_1b
    const/16 v32, 0x0

    goto/16 :goto_12

    .line 631
    .restart local v32       #wakeLock:Z
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_13

    .line 653
    .end local v20           #charging:Z
    .end local v21           #gpsOn:Z
    .end local v25           #screenOn:Z
    .end local v32           #wakeLock:Z
    .end local v33           #wifiRunning:Z
    :cond_1d
    move-object/from16 v0, v24

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    .line 654
    if-eqz v8, :cond_8

    .line 655
    add-int/lit8 v3, v34, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v15}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 658
    const/4 v7, -0x1

    move v9, v7

    .line 659
    const/4 v8, 0x0

    .line 660
    const/4 v15, 0x0

    .line 661
    const/4 v14, 0x0

    move v12, v14

    .local v12, lastGpsOn:I
    move v11, v14

    .local v11, lastScreenOn:I
    move v10, v14

    .local v10, lastCharging:I
    goto/16 :goto_14

    .end local v10           #lastCharging:I
    .end local v11           #lastScreenOn:I
    .end local v12           #lastGpsOn:I
    .end local v24           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_1e
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    .line 669
    invoke-virtual/range {v2 .. v15}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 672
    return-void
.end method

.method setStats(Landroid/os/BatteryStats;)V
    .locals 14
    .parameter "stats"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mStats:Landroid/os/BatteryStats;

    .line 360
    iget-object v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mStats:Landroid/os/BatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v7

    .line 362
    .local v7, uSecTime:J
    iput-wide v7, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mStatsPeriod:J

    .line 363
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mStatsPeriod:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-double v10, v10

    invoke-static {v9, v10, v11}, Lcom/android/settings_ex/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, durationString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080508

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mDurationString:Ljava/lang/String;

    .line 366
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f08050a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mChargingLabel:Ljava/lang/String;

    .line 367
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f08050b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mScreenOnLabel:Ljava/lang/String;

    .line 368
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f08050c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mGpsOnLabel:Ljava/lang/String;

    .line 369
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f08050d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWifiRunningLabel:Ljava/lang/String;

    .line 370
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f08050e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mWakeLockLabel:Ljava/lang/String;

    .line 371
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f08050f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalLabel:Ljava/lang/String;

    .line 373
    const/4 v5, 0x0

    .line 374
    .local v5, pos:I
    const/4 v3, 0x0

    .line 375
    .local v3, lastInteresting:I
    const/4 v4, -0x1

    .line 376
    .local v4, lastLevel:B
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatLow:I

    .line 377
    const/16 v9, 0x64

    iput v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mBatHigh:I

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, aggrStates:I
    const/4 v2, 0x1

    .line 380
    .local v2, first:Z
    invoke-virtual {p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 381
    new-instance v6, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v6}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 382
    .local v6, rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_0
    invoke-virtual {p1, v6}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 383
    add-int/lit8 v5, v5, 0x1

    .line 384
    iget-byte v9, v6, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 385
    if-eqz v2, :cond_1

    .line 386
    const/4 v2, 0x0

    .line 387
    iget-wide v9, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHistStart:J

    .line 389
    :cond_1
    iget-byte v9, v6, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v9, v4, :cond_2

    const/4 v9, 0x1

    if-ne v5, v9, :cond_3

    .line 390
    :cond_2
    iget-byte v4, v6, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 392
    :cond_3
    move v3, v5

    .line 393
    iget-wide v9, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHistEnd:J

    .line 394
    iget v9, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v0, v9

    goto :goto_0

    .line 398
    .end local v6           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_4
    iput v3, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mNumHist:I

    .line 399
    const/high16 v9, 0x1000

    and-int/2addr v9, v0

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHaveGps:Z

    .line 400
    const/high16 v9, 0x400

    and-int/2addr v9, v0

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHaveWifi:Z

    .line 401
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 402
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHavePhoneSignal:Z

    .line 404
    :cond_5
    iget-wide v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHistEnd:J

    iget-wide v11, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHistStart:J

    cmp-long v9, v9, v11

    if-gtz v9, :cond_6

    iget-wide v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHistStart:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHistEnd:J

    .line 405
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHistEnd:J

    iget-wide v12, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mHistStart:J

    sub-long/2addr v10, v12

    long-to-double v10, v10

    invoke-static {v9, v10, v11}, Lcom/android/settings_ex/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTotalDurationString:Ljava/lang/String;

    .line 406
    return-void

    .line 399
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 400
    :cond_8
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 337
    if-lez p2, :cond_4

    .line 338
    if-nez p1, :cond_1

    .line 339
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 344
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 346
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 347
    .local v1, typefaceStyle:I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 348
    .local v0, need:I
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 349
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x4180

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 355
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_3
    return-void

    .line 341
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 346
    goto :goto_1

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_3
    move v2, v3

    .line 349
    goto :goto_2

    .line 351
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 352
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 353
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3
.end method
