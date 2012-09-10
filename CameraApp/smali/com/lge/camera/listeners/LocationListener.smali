.class public Lcom/lge/camera/listeners/LocationListener;
.super Ljava/lang/Object;
.source "LocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mMediator:Lcom/lge/camera/Mediator;

.field mProvider:Ljava/lang/String;

.field mValid:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;Ljava/lang/String;)V
    .locals 2
    .parameter "mediator"
    .parameter "provider"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/listeners/LocationListener;->mValid:Z

    .line 22
    iput-object p1, p0, Lcom/lge/camera/listeners/LocationListener;->mMediator:Lcom/lge/camera/Mediator;

    .line 23
    iput-object p2, p0, Lcom/lge/camera/listeners/LocationListener;->mProvider:Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/lge/camera/listeners/LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/listeners/LocationListener;->mLastLocation:Landroid/location/Location;

    .line 25
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/lge/camera/listeners/LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter "newLocation"

    .prologue
    .line 28
    const-string v1, "CameraApp"

    const-string v2, "LocationListener onLocationChanged"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 31
    .local v0, Location:Ljava/lang/Double;
    iget-object v1, p0, Lcom/lge/camera/listeners/LocationListener;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/listeners/LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/listeners/LocationListener;->mValid:Z

    .line 37
    iget-object v1, p0, Lcom/lge/camera/listeners/LocationListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_camera_tag_location"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v1

    if-nez v1, :cond_2

    .line 42
    const-string v1, "CameraApp"

    const-string v2, "newLocation.getLatitude(), newLocation.getLongitude() is 0.0f"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/listeners/LocationListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getRecordLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "gps"

    iget-object v2, p0, Lcom/lge/camera/listeners/LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "network"

    iget-object v2, p0, Lcom/lge/camera/listeners/LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/listeners/LocationListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/IndicatorController;->updateGpsIndicator()V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/listeners/LocationListener;->mValid:Z

    .line 60
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 56
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 63
    const-string v0, "CameraApp"

    const-string v1, "LocationListener onStatusChanged"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/lge/camera/listeners/LocationListener;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/listeners/LocationListener;->mValid:Z

    .line 73
    iget-object v0, p0, Lcom/lge/camera/listeners/LocationListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getRecordLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gps"

    iget-object v1, p0, Lcom/lge/camera/listeners/LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "network"

    iget-object v1, p0, Lcom/lge/camera/listeners/LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/listeners/LocationListener;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateGpsIndicator()V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
