.class public Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
.super Ljava/lang/Object;
.source "WifiVZWConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiVZWConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnterpriseField"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiVZWConfiguration;

.field private value:Ljava/lang/String;

.field private varName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "varName"

    .prologue
    .line 58
    iput-object p1, p0, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;->this$0:Landroid/net/wifi/WifiVZWConfiguration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;->varName:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;->value:Ljava/lang/String;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 64
    iput-object p1, p0, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;->value:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;->value:Ljava/lang/String;

    return-object v0
.end method

.method public varName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;->varName:Ljava/lang/String;

    return-object v0
.end method
