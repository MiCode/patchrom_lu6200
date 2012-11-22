.class public final enum Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseBackupPinX3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

.field public static final enum Introduction:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;


# instance fields
.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x7f0801a1

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    const-string v1, "Introduction"

    const v2, 0x7f0808aa

    const v3, 0x7f080197

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    new-instance v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    const-string v1, "NeedToConfirm"

    const v2, 0x7f0808ab

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    new-instance v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    const-string v1, "ConfirmWrong"

    const v2, 0x7f0808f6

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->$VALUES:[Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "hintInNumeric"
    .parameter "nextButtonText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->numericHint:I

    iput p4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->buttonText:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;
    .locals 1
    .parameter

    .prologue
    const-class v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->$VALUES:[Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    return-object v0
.end method
