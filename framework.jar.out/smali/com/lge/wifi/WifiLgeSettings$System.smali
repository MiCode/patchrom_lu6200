.class public final Lcom/lge/wifi/WifiLgeSettings$System;
.super Ljava/lang/Object;
.source "WifiLgeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/WifiLgeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final TETHERING_TIME:Ljava/lang/String; = "tethering_time"

.field public static final WIFI_ACTIVATION_WHILE_CHARGING:Ljava/lang/String; = "wifi_activation_while_charging"

.field public static final WIFI_ACTIVATION_WHILE_CHARGING_OFF:I = 0x0

.field public static final WIFI_ACTIVATION_WHILE_CHARGING_ON:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
