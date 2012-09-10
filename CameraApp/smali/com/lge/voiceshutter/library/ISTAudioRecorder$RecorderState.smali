.class public final enum Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;
.super Ljava/lang/Enum;
.source "ISTAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/voiceshutter/library/ISTAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecorderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

.field public static final enum ERROR:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

.field public static final enum INITIALIZING:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

.field public static final enum READY:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

.field public static final enum RECORDING:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

.field public static final enum STOPPED:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v2}, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->INITIALIZING:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    new-instance v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->READY:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    new-instance v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v4}, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->RECORDING:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    new-instance v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->ERROR:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    new-instance v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v6}, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->STOPPED:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    sget-object v1, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->INITIALIZING:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->READY:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->RECORDING:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->ERROR:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->STOPPED:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->$VALUES:[Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    return-object v0
.end method

.method public static values()[Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->$VALUES:[Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    invoke-virtual {v0}, [Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    return-object v0
.end method
