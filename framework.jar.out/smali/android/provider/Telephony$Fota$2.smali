.class final Landroid/provider/Telephony$Fota$2;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/provider/Telephony$Fota;->setSoundRingtone(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5449
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 5451
    #calls: Landroid/provider/Telephony$Fota;->cleanupPlayer(Landroid/media/MediaPlayer;)V
    invoke-static {p1}, Landroid/provider/Telephony$Fota;->access$000(Landroid/media/MediaPlayer;)V

    .line 5452
    const/4 v0, 0x1

    return v0
.end method
