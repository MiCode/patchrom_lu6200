.class Lcom/android/settings_ex/tts/TextToSpeechSettings$5;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/tts/TextToSpeechSettings;->ttsInstallNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/tts/TextToSpeechSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings_ex/tts/TextToSpeechSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 647
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 648
    return-void
.end method
