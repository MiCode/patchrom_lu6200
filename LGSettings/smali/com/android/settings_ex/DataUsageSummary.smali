.class public Lcom/android/settings_ex/DataUsageSummary;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DataUsageSummary$UidDetailTask;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmDataRoamingFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/settings_ex/DataUsageSummary$AppUsageItem;,
        Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;,
        Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;,
        Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field private static confirmDialogShowed:Z

.field private static isDataDisable:Z

.field private static mMobileDataEnabled:Ljava/lang/Boolean;

.field private static mPopupdisable:Z

.field private static positiveResult:Z

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppDetailUids:[I

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

.field private mAppRestrict:Landroid/widget/CheckBox;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSettingsListener:Landroid/view/View$OnClickListener;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mBinding:Z

.field private mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/settings_ex/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings_ex/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDataEnabledView:Landroid/view/View;

.field private mDisableAtLimit:Landroid/widget/CheckBox;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitView:Landroid/view/View;

.field private mDisclaimer:Landroid/widget/TextView;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuDataRoaming:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

.field private mPolicyService:Landroid/net/INetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

.field private mUsageSummary:Landroid/widget/TextView;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->mPopupdisable:Z

    sput-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->isDataDisable:Z

    sput-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->confirmDialogShowed:Z

    sput-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->positiveResult:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1485
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetailUids:[I

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$2;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$3;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$4;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$5;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$6;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$7;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$8;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$9;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$10;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$11;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$12;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$13;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$14;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$14;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$1300(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->setConfirmDialogShowed(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->hasLimitedNetworks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/UidDetailProvider;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/net/ChartData;)Lcom/android/settings_ex/net/ChartData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings_ex/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3000()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->getPopupdisable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->setPopupdisable(Z)V

    return-void
.end method

.method static synthetic access$3200([II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->contains([II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3302(Lcom/android/settings_ex/DataUsageSummary;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetailUids:[I

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$3600()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->isDataDisable:Z

    return v0
.end method

.method static synthetic access$3602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/settings_ex/DataUsageSummary;->isDataDisable:Z

    return p0
.end method

.method static synthetic access$3700(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->setPositiveResult(Z)V

    return-void
.end method

.method static synthetic access$3800()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->isPositiveResult()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setDataRoaming(Z)V

    return-void
.end method

.method static synthetic access$400()Landroid/animation/LayoutTransition;
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$4202(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/DataUsageSummary;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/DataUsageSummary;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 654
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 658
    .local v0, transition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 659
    return-object v0
.end method

.method private buildLimitedNetworksList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2499
    const v2, 0x7f080658

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2501
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2502
    const v2, 0x7f080657

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2504
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2505
    const v0, 0x7f080656

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2507
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2508
    const v0, 0x7f080653

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2510
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2511
    const v0, 0x7f080654

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2514
    :cond_4
    return-object v1
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"
    .parameter "titleRes"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2309
    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 2310
    if-nez v0, :cond_0

    move-object v0, v1

    .line 2322
    :goto_0
    return-object v0

    .line 2312
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 2322
    goto :goto_0

    .line 2314
    :pswitch_0
    const-string v0, "3g"

    goto :goto_0

    .line 2316
    :pswitch_1
    const-string v0, "4g"

    goto :goto_0

    .line 2318
    :pswitch_2
    const-string v0, "mobile"

    goto :goto_0

    .line 2320
    :pswitch_3
    const-string v0, "wifi"

    goto :goto_0

    .line 2312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static contains([II)Z
    .locals 5
    .parameter "haystack"
    .parameter "needle"

    .prologue
    .line 2555
    move-object v0, p0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 2556
    .local v3, value:I
    if-ne v3, p1, :cond_0

    .line 2557
    const/4 v4, 0x1

    .line 2560
    .end local v3           #value:I
    :goto_1
    return v4

    .line 2555
    .restart local v3       #value:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2560
    .end local v3           #value:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static convertArabNum(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1515
    .line 1516
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    .line 1517
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1519
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1520
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1521
    if-ltz v2, :cond_0

    const/16 v3, 0x9

    if-gt v2, v3, :cond_0

    .line 1522
    new-instance v3, Ljava/lang/Character;

    add-int/lit16 v2, v2, 0x660

    int-to-char v2, v2

    invoke-direct {v3, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    .line 1519
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1524
    :cond_0
    new-instance v2, Ljava/lang/Character;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_1

    .line 1527
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 1528
    if-eqz p1, :cond_2

    .line 1531
    :goto_2
    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-eqz p5, :cond_0

    const-string v7, "UTC"

    :goto_0
    sget-object v8, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1498
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/settings_ex/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10014

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->convertArabNum(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    .line 1502
    :goto_1
    return-object v0

    .line 1490
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1502
    :cond_1
    sget-object v1, Lcom/android/settings_ex/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10014

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    goto :goto_1

    .line 1507
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1407
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1409
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppDetailPrimaryUid()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetailUids:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->getAppDetailPrimaryUid()I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1008
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1003
    :catch_0
    move-exception v0

    .line 1005
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "problem reading network policy"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1008
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDataRoaming()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 963
    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static getPopupdisable()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->mPopupdisable:Z

    return v0
.end method

.method private getRestrictBackground()Z
    .locals 4

    .prologue
    .line 976
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 979
    :goto_0
    return v0

    .line 977
    :catch_0
    move-exception v0

    .line 978
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasEthernet(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2441
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2443
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private hasLimitedNetworks()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 2404
    const/4 v0, 0x0

    return v0
.end method

.method private static hasMobileRadio(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2394
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2396
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2428
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2430
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2460
    const v0, 0x7f04003a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2462
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2463
    return-object v0
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 2451
    const v0, 0x7f04006a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2452
    const v0, 0x1020018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2454
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2455
    return-object v1
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .parameter "view"
    .parameter "insetSide"

    .prologue
    .line 2522
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2523
    .local v1, selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2527
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .local v2, stub:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2565
    const-string v1, "Airplanemodeenabler"

    const-string v2, "isAirplaneModeOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetailUids:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 954
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 957
    :goto_0
    return v0

    .line 955
    :catch_0
    move-exception v0

    .line 956
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isConfirmDialogShowed()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->confirmDialogShowed:Z

    return v0
.end method

.method private isMobileDataEnabled()Z
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->isConfirmDialogShowed()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobilePolicySplit()Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .local v1, subscriberId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    .line 1397
    .end local v1           #subscriberId:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 2
    .parameter "policy"

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isPositiveResult()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->positiveResult:Z

    return v0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .parameter

    .prologue
    const-string v0, "DataUsage"

    const-string v1, "setAppRestrictBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->getAppDetailPrimaryUid()I

    move-result v1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v1, v0}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to save policy"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static setConfirmDialogShowed(Z)V
    .locals 0
    .parameter "showed"

    .prologue
    sput-boolean p0, Lcom/android/settings_ex/DataUsageSummary;->confirmDialogShowed:Z

    return-void
.end method

.method private setDataRoaming(Z)V
    .locals 3
    .parameter

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 970
    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    const-string v0, "DataUsage"

    const-string v1, "setMobileDataEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method private setMobilePolicySplit(Z)V
    .locals 2
    .parameter "split"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .local v0, subscriberId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setMobilePolicySplit(Ljava/lang/String;Z)V

    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 2
    .parameter

    .prologue
    const-string v0, "DataUsage"

    const-string v1, "setPolicyLimitBytes()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 2
    .parameter

    .prologue
    const-string v0, "DataUsage"

    const-string v1, "setPolicyWarningBytes()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method private static setPopupdisable(Z)V
    .locals 0
    .parameter "popupdisable"

    .prologue
    sput-boolean p0, Lcom/android/settings_ex/DataUsageSummary;->mPopupdisable:Z

    return-void
.end method

.method private static setPositiveResult(Z)V
    .locals 0
    .parameter "result"

    .prologue
    sput-boolean p0, Lcom/android/settings_ex/DataUsageSummary;->positiveResult:Z

    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2549
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2550
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2551
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2552
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .parameter "parent"
    .parameter "resId"

    .prologue
    .line 2540
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2541
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2542
    return-void
.end method

.method private setRestrictBackground(Z)V
    .locals 4
    .parameter

    .prologue
    .line 984
    const-string v0, "DataUsage"

    const-string v1, "setRestrictBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_network_user_background_setting_data"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateAppDetail()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v2, v12}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->getAppDetailPrimaryUid()I

    move-result v6

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-virtual {v2, v6, v0}, Lcom/android/settings_ex/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings_ex/net/UidDetail;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/android/settings_ex/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v7, v2, Lcom/android/settings_ex/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/android/settings_ex/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    array-length v8, v7

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_2

    aget-object v9, v7, v2

    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-static {v5, v11, v9}, Lcom/android/settings_ex/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    :goto_1
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v2, v2, Lcom/android/settings_ex/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v5, v8, v2}, Lcom/android/settings_ex/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 851
    :cond_2
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 852
    if-eqz v2, :cond_4

    array-length v5, v2

    if-lez v5, :cond_4

    .line 853
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    aget-object v2, v2, v1

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v4, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_3
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    invoke-static {v3, v6}, Landroid/net/NetworkPolicyManager;->isUidValidForPolicy(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f08065e

    invoke-static {v0, v2}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->hasLimitedNetworks()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f08065f

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iput-object v12, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f080660

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 883
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateBody()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    iput-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "DataUsage"

    const-string v1, "no tab selected; hiding body"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_2
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBody() with currentTab="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    const-string v2, "mobile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 754
    const-string v1, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v7, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0807f1

    invoke-static {v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f08064f

    invoke-static {v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 794
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetailUids:[I

    invoke-static {v2, v3}, Lcom/android/settings_ex/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;[I)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f08065a

    invoke-static {v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    goto :goto_1

    .line 763
    :cond_4
    const-string v2, "3g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f08065b

    invoke-static {v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f080651

    invoke-static {v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_2

    .line 769
    :cond_5
    const-string v2, "4g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f08065c

    invoke-static {v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f080650

    invoke-static {v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_2

    .line 775
    :cond_6
    const-string v0, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 781
    :cond_7
    const-string v0, "ethernet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 788
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tab: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 14
    .parameter

    .prologue
    const-wide v9, 0x7fffffffffffffffL

    const-wide/high16 v4, -0x8000

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->clear()V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v0, v0, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v0, v0, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    .line 1097
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1098
    cmp-long v0, v7, v9

    if-nez v0, :cond_7

    move-wide v9, v12

    .line 1099
    :goto_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const-wide/16 v2, 0x1

    add-long v7, v12, v2

    .line 1102
    :goto_2
    if-eqz p1, :cond_5

    .line 1104
    invoke-static {v7, v8, p1}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    move v0, v11

    .line 1107
    :goto_3
    cmp-long v2, v4, v9

    if-lez v2, :cond_0

    .line 1108
    invoke-static {v4, v5, p1}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 1109
    const-string v0, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generating cs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to ce="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " waiting for hs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1113
    const/4 v0, 0x1

    move-wide v4, v2

    .line 1114
    goto :goto_3

    .line 1117
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    :goto_4
    if-nez v0, :cond_2

    move-wide v4, v7

    :goto_5
    cmp-long v0, v4, v9

    if-lez v0, :cond_1

    const-wide v2, 0x90321000L

    sub-long v2, v4, v2

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v7, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    move-wide v4, v2

    goto :goto_5

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/settings_ex/DataUsageSummary$CycleItem;)I

    move-result v3

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    invoke-static {v0, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :goto_6
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    :cond_5
    move v0, v11

    goto :goto_4

    :cond_6
    move-wide v7, v2

    goto/16 :goto_2

    :cond_7
    move-wide v9, v7

    goto/16 :goto_1

    :cond_8
    move-wide v2, v4

    move-wide v7, v9

    goto/16 :goto_0
.end method

.method private updateDetailData()V
    .locals 15

    .prologue
    const-string v0, "DataUsage"

    const-string v1, "updateDetailData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v0, v0, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v0, v0, Lcom/android/settings_ex/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v9, v11

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v0, v0, Lcom/android/settings_ex/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    iget-wide v11, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v11, v13

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    const/16 v7, 0xaf

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/widget/PieChartView;->setOriginAngle(I)V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/PieChartView;->removeAllSlices()V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    const-string v7, "#d88d3a"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v11, v12, v7}, Lcom/android/settings_ex/widget/PieChartView;->addSlice(JI)V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    const-string v7, "#666666"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v9, v10, v7}, Lcom/android/settings_ex/widget/PieChartView;->addSlice(JI)V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/PieChartView;->generatePath()V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    invoke-static {v8, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v0, v0, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1327
    :goto_0
    if-eqz v7, :cond_2

    iget-wide v5, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v5, v9

    .line 1328
    :goto_1
    invoke-static {v8, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 1329
    const/4 v5, 0x0

    move-object v0, v8

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const v2, 0x7f080671

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v0, v0, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1323
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v6, v1, v2, v3, v4}, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v5, v6, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1327
    :cond_2
    const-wide/16 v5, 0x0

    goto :goto_1
.end method

.method private updatePolicy(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    const-string v2, "mobile"

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iput-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v2, v5, v3}, Lcom/android/settings_ex/MDMSettingsAdapter;->setDataUsageSwitch(Landroid/content/ComponentName;Landroid/widget/Switch;)Z

    .line 1048
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v2, :cond_7

    iget-wide v4, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1057
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    :cond_5
    return-void

    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_2
.end method

.method private updateTabs()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->hasMobile4gRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "3g"

    const v5, 0x7f080657

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "4g"

    const v5, 0x7f080656

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 678
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "wifi"

    const v5, 0x7f080653

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 681
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "ethernet"

    const v4, 0x7f080654

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 685
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    if-le v2, v0, :cond_5

    .line 686
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v0, :cond_6

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    :cond_3
    return-void

    :cond_4
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "mobile"

    const v5, 0x7f080655

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 685
    goto :goto_1

    .line 686
    :cond_6
    const/16 v1, 0x8

    goto :goto_2

    .line 692
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 279
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 281
    const-string v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 283
    const-string v1, "netpolicy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "data_usage"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;-><init>(Landroid/net/INetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-virtual {v1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->read()V

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "show_wifi"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "show_ethernet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->setHasOptionsMenu(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.skt.intent.action.USER_BACKG_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 515
    const/high16 v0, 0x7f10

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 516
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 316
    .local v0, context:Landroid/content/Context;
    const v5, 0x7f040042

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 318
    .local v4, view:Landroid/view/View;
    new-instance v5, Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-direct {v5, v0}, Lcom/android/settings_ex/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->tm:Landroid/telephony/TelephonyManager;

    const v5, 0x1020012

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 323
    const v5, 0x7f0b0090

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 324
    const v5, 0x1020013

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TabWidget;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 325
    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v5

    const/high16 v6, 0x200

    if-ne v5, v6, :cond_8

    const/4 v3, 0x1

    .local v3, shouldInset:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_0

    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->setup()V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    const v5, 0x7f040040

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    invoke-static {v5, v6}, Lcom/android/settings_ex/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 365
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0b008c

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0b008d

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 369
    new-instance v5, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v5, v6}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-static {p1, v5, v6}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v5, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 387
    :cond_2
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 388
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, ev:Landroid/widget/TextView;
    const v5, -0x777778

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, lv:Landroid/widget/TextView;
    const v5, -0x777778

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .end local v1           #ev:Landroid/widget/TextView;
    .end local v2           #lv:Landroid/widget/TextView;
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0b0083

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v6, 0x7f0b0084

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-direct {v5, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0b007a

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/widget/ChartDataUsageView;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setListener(Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0b0085

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0b0004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0b0086

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0b0089

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/widget/PieChartView;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppPieChart:Lcom/android/settings_ex/widget/PieChartView;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0b0087

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0b0088

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0b008b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0b008a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-static {p1, v5, v6}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0b008e

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v5, 0x1

    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_PRADAUI:Z

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0b008f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisclaimer:Landroid/widget/TextView;

    const/4 v5, 0x1

    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_PRADAUI:Z

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisclaimer:Landroid/widget/TextView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x1020004

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    const/4 v5, 0x1

    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_PRADAUI:Z

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v5, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    iget v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    invoke-direct {v5, v6, v7}, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;-><init>(Lcom/android/settings_ex/net/UidDetailProvider;I)V

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v4

    .end local v3           #shouldInset:Z
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0

    .restart local v3       #shouldInset:Z
    :cond_9
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #ev:Landroid/widget/TextView;
    const v5, -0x777778

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .restart local v2       #lv:Landroid/widget/TextView;
    const v5, -0x777778

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appDetails"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 629
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 630
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settings_ex/net/UidDetailProvider;->clearCache()V

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 621
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 560
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v3, v1

    .line 607
    :goto_0
    return v3

    .line 562
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v3

    .local v0, dataRoaming:Z
    :goto_1
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataRoamingFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_0

    .end local v0           #dataRoaming:Z
    :cond_0
    move v0, v1

    goto :goto_1

    .restart local v0       #dataRoaming:Z
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->setDataRoaming(Z)V

    goto :goto_0

    .end local v0           #dataRoaming:Z
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .local v2, restrictBackground:Z
    :goto_2
    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->hasLimitedNetworks()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_0

    .end local v2           #restrictBackground:Z
    :cond_2
    move v2, v1

    goto :goto_2

    .restart local v2       #restrictBackground:Z
    :cond_3
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .end local v2           #restrictBackground:Z
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v3

    .local v1, mobileSplit:Z
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->setMobilePolicySplit(Z)V

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v4

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .end local v1           #mobileSplit:Z
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_6

    move v1, v3

    :cond_6
    iput-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "show_wifi"

    iget-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-boolean v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    goto :goto_0

    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_7

    move v1, v3

    :cond_7
    iput-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "show_ethernet"

    iget-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-boolean v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b02a1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .local v1, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .local v0, appDetailMode:Z
    const v5, 0x7f0b02a1

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_1

    move v5, v6

    :goto_0
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->getDataRoaming()Z

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 527
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v5

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-virtual {v5, v8, v9}, Lcom/android/settings_ex/MDMSettingsAdapter;->setDataUsageRoamingMenu(Landroid/content/ComponentName;Landroid/view/MenuItem;)Z

    .line 531
    :cond_0
    const v5, 0x7f0b02a2

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    move v5, v6

    :goto_1
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->getRestrictBackground()Z

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 535
    const v5, 0x7f0b02a3

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 536
    .local v4, split4g:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasMobile4gRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v0, :cond_3

    move v5, v6

    :goto_2
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v5, 0x7f0b02a4

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .local v3, showWifi:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 541
    if-nez v0, :cond_4

    move v5, v6

    :goto_3
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_4
    const v5, 0x7f0b02a5

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 549
    .local v2, showEthernet:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v0, :cond_6

    :goto_5
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_6
    return-void

    .end local v2           #showEthernet:Landroid/view/MenuItem;
    .end local v3           #showWifi:Landroid/view/MenuItem;
    .end local v4           #split4g:Landroid/view/MenuItem;
    :cond_1
    move v5, v7

    goto/16 :goto_0

    :cond_2
    move v5, v7

    goto :goto_1

    .restart local v4       #split4g:Landroid/view/MenuItem;
    :cond_3
    move v5, v7

    goto :goto_2

    .restart local v3       #showWifi:Landroid/view/MenuItem;
    :cond_4
    move v5, v7

    goto :goto_3

    :cond_5
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    goto :goto_4

    .restart local v2       #showEthernet:Landroid/view/MenuItem;
    :cond_6
    move v6, v7

    goto :goto_5

    :cond_7
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    goto :goto_6
.end method

.method public onResume()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 484
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    new-instance v1, Lcom/android/settings_ex/DataUsageSummary$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DataUsageSummary$1;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/DataUsageSummary$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 511
    return-void
.end method
