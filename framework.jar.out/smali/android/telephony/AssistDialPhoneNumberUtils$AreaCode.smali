.class Landroid/telephony/AssistDialPhoneNumberUtils$AreaCode;
.super Ljava/lang/Object;
.source "AssistDialPhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/AssistDialPhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AreaCode"
.end annotation


# instance fields
.field private areacode:Ljava/lang/String;

.field private cityname:Ljava/lang/String;

.field final synthetic this$0:Landroid/telephony/AssistDialPhoneNumberUtils;


# direct methods
.method private constructor <init>(Landroid/telephony/AssistDialPhoneNumberUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "areacode"
    .parameter "cityname"

    .prologue
    .line 1882
    iput-object p1, p0, Landroid/telephony/AssistDialPhoneNumberUtils$AreaCode;->this$0:Landroid/telephony/AssistDialPhoneNumberUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1883
    iput-object p2, p0, Landroid/telephony/AssistDialPhoneNumberUtils$AreaCode;->areacode:Ljava/lang/String;

    .line 1884
    iput-object p3, p0, Landroid/telephony/AssistDialPhoneNumberUtils$AreaCode;->cityname:Ljava/lang/String;

    .line 1886
    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/AssistDialPhoneNumberUtils;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/AssistDialPhoneNumberUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1869
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/AssistDialPhoneNumberUtils$AreaCode;-><init>(Landroid/telephony/AssistDialPhoneNumberUtils;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAreacode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1874
    iget-object v0, p0, Landroid/telephony/AssistDialPhoneNumberUtils$AreaCode;->areacode:Ljava/lang/String;

    return-object v0
.end method

.method public getCityname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Landroid/telephony/AssistDialPhoneNumberUtils$AreaCode;->cityname:Ljava/lang/String;

    return-object v0
.end method
