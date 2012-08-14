.class final enum Landroid/webkit/WebTextView$WritingDirection;
.super Ljava/lang/Enum;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WritingDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/WebTextView$WritingDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/WebTextView$WritingDirection;

.field public static final enum LEFT_TO_RIGHT:Landroid/webkit/WebTextView$WritingDirection;

.field public static final enum NATURAL:Landroid/webkit/WebTextView$WritingDirection;

.field public static final enum RIGHT_TO_LEFT:Landroid/webkit/WebTextView$WritingDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1351
    new-instance v0, Landroid/webkit/WebTextView$WritingDirection;

    const-string v1, "NATURAL"

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebTextView$WritingDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebTextView$WritingDirection;->NATURAL:Landroid/webkit/WebTextView$WritingDirection;

    .line 1352
    new-instance v0, Landroid/webkit/WebTextView$WritingDirection;

    const-string v1, "LEFT_TO_RIGHT"

    invoke-direct {v0, v1, v3}, Landroid/webkit/WebTextView$WritingDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebTextView$WritingDirection;->LEFT_TO_RIGHT:Landroid/webkit/WebTextView$WritingDirection;

    .line 1353
    new-instance v0, Landroid/webkit/WebTextView$WritingDirection;

    const-string v1, "RIGHT_TO_LEFT"

    invoke-direct {v0, v1, v4}, Landroid/webkit/WebTextView$WritingDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebTextView$WritingDirection;->RIGHT_TO_LEFT:Landroid/webkit/WebTextView$WritingDirection;

    .line 1350
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/webkit/WebTextView$WritingDirection;

    sget-object v1, Landroid/webkit/WebTextView$WritingDirection;->NATURAL:Landroid/webkit/WebTextView$WritingDirection;

    aput-object v1, v0, v2

    sget-object v1, Landroid/webkit/WebTextView$WritingDirection;->LEFT_TO_RIGHT:Landroid/webkit/WebTextView$WritingDirection;

    aput-object v1, v0, v3

    sget-object v1, Landroid/webkit/WebTextView$WritingDirection;->RIGHT_TO_LEFT:Landroid/webkit/WebTextView$WritingDirection;

    aput-object v1, v0, v4

    sput-object v0, Landroid/webkit/WebTextView$WritingDirection;->$VALUES:[Landroid/webkit/WebTextView$WritingDirection;

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
    .line 1350
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/WebTextView$WritingDirection;
    .locals 1
    .parameter "name"

    .prologue
    .line 1350
    const-class v0, Landroid/webkit/WebTextView$WritingDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebTextView$WritingDirection;

    return-object v0
.end method

.method public static values()[Landroid/webkit/WebTextView$WritingDirection;
    .locals 1

    .prologue
    .line 1350
    sget-object v0, Landroid/webkit/WebTextView$WritingDirection;->$VALUES:[Landroid/webkit/WebTextView$WritingDirection;

    invoke-virtual {v0}, [Landroid/webkit/WebTextView$WritingDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebTextView$WritingDirection;

    return-object v0
.end method
