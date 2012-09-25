.class Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;
.super Ljava/lang/Object;
.source "PowerSaveBatteryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChartData"
.end annotation


# instance fields
.field mColors:[I

.field mLastBin:I

.field mNumTicks:I

.field mPaints:[Landroid/graphics/Paint;

.field mTicks:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addTick(II)V
    .locals 3
    .parameter "x"
    .parameter "bin"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mLastBin:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mNumTicks:I

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mTicks:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mTicks:[I

    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mNumTicks:I

    shl-int/lit8 v2, p2, 0x10

    or-int/2addr v2, p1

    aput v2, v0, v1

    .line 77
    iget v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mNumTicks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mNumTicks:I

    .line 78
    iput p2, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mLastBin:I

    .line 80
    :cond_0
    return-void
.end method

.method finish(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mLastBin:I

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->addTick(II)V

    .line 86
    :cond_0
    return-void
.end method

.method init(I)V
    .locals 2
    .parameter "width"

    .prologue
    const/4 v1, 0x0

    .line 65
    if-lez p1, :cond_0

    .line 66
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mTicks:[I

    .line 70
    :goto_0
    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mNumTicks:I

    .line 71
    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mLastBin:I

    .line 72
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mTicks:[I

    goto :goto_0
.end method

.method setColors([I)V
    .locals 3
    .parameter "colors"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mColors:[I

    .line 56
    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    .line 57
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    .line 59
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerSaveBatteryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method
