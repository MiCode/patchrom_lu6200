.class public final Lcom/lge/lgdrm/DrmCertManager;
.super Ljava/lang/Object;
.source "DrmCertManager.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getIndex()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 127
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 128
    const/4 v0, -0x1

    .line 135
    :goto_0
    return v0

    .line 131
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getInformation(I)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 175
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    .line 179
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    const/4 v0, 0x2

    if-le p0, v0, :cond_3

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_3
    invoke-static {p0}, Lcom/lge/lgdrm/DrmCertManager;->nativeGetCertificateInformation(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isTestSet()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 198
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_2

    .line 203
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_2
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 207
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static load(ZLjava/lang/String;)I
    .locals 3
    .parameter "loadOnDemand"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 227
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 228
    const/4 v0, -0x1

    .line 238
    :goto_0
    return v0

    .line 231
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    if-eqz p0, :cond_2

    .line 236
    const/4 v0, 0x4

    invoke-static {v0, v2, p1}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 238
    :cond_2
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static native nativeGetCertificateInformation(I)Ljava/lang/String;
.end method

.method private static native nativeManageCertificate(IILjava/lang/String;)I
.end method

.method private static native nativeWriteCertificate(I[B)I
.end method

.method public static reset()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 148
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 149
    const/4 v0, -0x1

    .line 156
    :goto_0
    return v0

    .line 152
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static setIndex(I)I
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 106
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 107
    const/4 v0, -0x1

    .line 114
    :goto_0
    return v0

    .line 110
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static verify()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 83
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 84
    const/4 v0, -0x1

    .line 91
    :goto_0
    return v0

    .line 87
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static write(I[B)I
    .locals 2
    .parameter "type"
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 52
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 53
    const/4 v0, -0x1

    .line 68
    :goto_0
    return v0

    .line 56
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    const/4 v0, 0x4

    if-le p0, v0, :cond_3

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_3
    if-nez p1, :cond_4

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_4
    invoke-static {p0, p1}, Lcom/lge/lgdrm/DrmCertManager;->nativeWriteCertificate(I[B)I

    move-result v0

    goto :goto_0
.end method
