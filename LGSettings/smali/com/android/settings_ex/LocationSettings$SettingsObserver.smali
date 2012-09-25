.class final Lcom/android/settings_ex/LocationSettings$SettingsObserver;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/LocationSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings_ex/LocationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/LocationSettings;Lcom/android/settings_ex/LocationSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings_ex/LocationSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/LocationSettings;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/LocationSettings;

    #calls: Lcom/android/settings_ex/LocationSettings;->updateLocationToggles()V
    invoke-static {v0}, Lcom/android/settings_ex/LocationSettings;->access$000(Lcom/android/settings_ex/LocationSettings;)V

    .line 99
    return-void
.end method
