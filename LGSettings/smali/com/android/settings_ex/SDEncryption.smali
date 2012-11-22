.class public Lcom/android/settings_ex/SDEncryption;
.super Ljava/lang/Object;
.source "SDEncryption.java"


# instance fields
.field isEnable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SDEncryption;->isEnable:Ljava/lang/Boolean;

    .line 11
    return-void
.end method


# virtual methods
.method protected getSDEncryptedSupport()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/SDEncryption;->isEnable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected getSDcardEncryptedMenuId()I
    .locals 1

    .prologue
    .line 17
    const v0, 0x7f060033

    return v0
.end method

.method protected getSDcardUnencryptedMenuId()I
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f06003a

    return v0
.end method
