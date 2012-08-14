.class public Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;
.super Ljava/lang/Object;
.source "SKT_WZoneFMC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$1;,
        Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$SKT_WZoneFMCHolder;,
        Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;
    }
.end annotation


# static fields
.field public static final ACTION_EXIT_NAME_ANSWER_VOIP:Ljava/lang/String; = "answer_voip"

.field public static final ACTION_EXIT_NAME_HANGUP_VOIP:Ljava/lang/String; = "hangup_voip"

.field public static final ACTION_EXIT_NAME_MOVETOTOP_VOIP:Ljava/lang/String; = "movetotop_voip"


# instance fields
.field private mActionExtName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSActionintent:Ljava/lang/String;

.field private mState:Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->IDLE:Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    iput-object v0, p0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;->mState:Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$SKT_WZoneFMCHolder;->mSKT_WZoneFMC:Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;

    return-object v0
.end method


# virtual methods
.method public cleanCurrentVoIP()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;->mActionExtName:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;->mSActionintent:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;->mPhoneNumber:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->IDLE:Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    iput-object v0, p0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;->mState:Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    .line 82
    return-void
.end method

.method public getActionExtName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;->mActionExtName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSActionintent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;->mSActionintent:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;->mState:Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    return-object v0
.end method

.method public setCurrentVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "actionExtName"
    .parameter "sActionintent"
    .parameter "PhoneNumber"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;->mActionExtName:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;->mSActionintent:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;->mPhoneNumber:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setState(Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC;->mState:Lcom/android/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    .line 67
    return-void
.end method
