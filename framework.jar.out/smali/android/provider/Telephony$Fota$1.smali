.class final Landroid/provider/Telephony$Fota$1;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 5444
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 5446
    #calls: Landroid/provider/Telephony$Fota;->cleanupPlayer(Landroid/media/MediaPlayer;)V
    invoke-static {p1}, Landroid/provider/Telephony$Fota;->access$000(Landroid/media/MediaPlayer;)V

    .line 5447
    return-void
.end method
