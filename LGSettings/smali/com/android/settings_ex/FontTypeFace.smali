.class public Lcom/android/settings_ex/FontTypeFace;
.super Ljava/lang/Object;
.source "FontTypeFace.java"


# static fields
.field private static _CAPP_FONTS:Ljava/lang/reflect/Field;

.field private static _certifyNewDownloadFontApp:Ljava/lang/reflect/Method;

.field private static _countCertifiedDownloadFontApps:Ljava/lang/reflect/Method;

.field private static _countNewDownloadFontApps:Ljava/lang/reflect/Method;

.field private static _getCertifiedDownloadFontAppFacename:Ljava/lang/reflect/Method;

.field private static _getCertifiedDownloadFontAppFontname:Ljava/lang/reflect/Method;

.field private static _getCertifiedDownloadFontAppName:Ljava/lang/reflect/Method;

.field private static _getCurrentDefaultFontIndex:Ljava/lang/reflect/Method;

.field private static _getDefaultFontCount:Ljava/lang/reflect/Method;

.field private static _getDefaultFontFaceName:Ljava/lang/reflect/Method;

.field private static _getFontFullPathName:Ljava/lang/reflect/Method;

.field private static _getNewDownloadFontAppName:Ljava/lang/reflect/Method;

.field private static _getNewDownloadFontAppsDstPath:Ljava/lang/reflect/Method;

.field private static _getNewDownloadFontAppsSrcPath:Ljava/lang/reflect/Method;

.field private static _getSystemDefaultFamilyIndex:Ljava/lang/reflect/Method;

.field private static _saveNewDownloadFontApps:Ljava/lang/reflect/Method;

.field private static _searchNewDownloadFontApps:Ljava/lang/reflect/Method;

.field private static _selectDefaultFont:Ljava/lang/reflect/Method;

.field private static _setIgnoreSysFont:Ljava/lang/reflect/Method;

.field private static _updateNewDownloadFontApp:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 47
    :try_start_0
    const-class v0, Lcom/lge/config/ConfigBuildFlags;

    const-string v1, "CAPP_FONTS"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_CAPP_FONTS:Ljava/lang/reflect/Field;

    .line 49
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "selectDefaultFont"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_selectDefaultFont:Ljava/lang/reflect/Method;

    .line 50
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "getCurrentDefaultFontIndex"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_getCurrentDefaultFontIndex:Ljava/lang/reflect/Method;

    .line 51
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "getDefaultFontCount"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_getDefaultFontCount:Ljava/lang/reflect/Method;

    .line 53
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "getDefaultFontFaceName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_getDefaultFontFaceName:Ljava/lang/reflect/Method;

    .line 55
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "getFontFullPathName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_getFontFullPathName:Ljava/lang/reflect/Method;

    .line 58
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "setIgnoreSysFont"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_setIgnoreSysFont:Ljava/lang/reflect/Method;

    .line 59
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "searchNewDownloadFontApps"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_searchNewDownloadFontApps:Ljava/lang/reflect/Method;

    .line 60
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "countNewDownloadFontApps"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_countNewDownloadFontApps:Ljava/lang/reflect/Method;

    .line 61
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "getNewDownloadFontAppName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_getNewDownloadFontAppName:Ljava/lang/reflect/Method;

    .line 62
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "getNewDownloadFontAppsSrcPath"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_getNewDownloadFontAppsSrcPath:Ljava/lang/reflect/Method;

    .line 63
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "getNewDownloadFontAppsDstPath"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_getNewDownloadFontAppsDstPath:Ljava/lang/reflect/Method;

    .line 64
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "certifyNewDownloadFontApp"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_certifyNewDownloadFontApp:Ljava/lang/reflect/Method;

    .line 65
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "updateNewDownloadFontApp"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_updateNewDownloadFontApp:Ljava/lang/reflect/Method;

    .line 66
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "saveNewDownloadFontApps"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_saveNewDownloadFontApps:Ljava/lang/reflect/Method;

    .line 67
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "countCertifiedDownloadFontApps"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_countCertifiedDownloadFontApps:Ljava/lang/reflect/Method;

    .line 68
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "getCertifiedDownloadFontAppName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_getCertifiedDownloadFontAppName:Ljava/lang/reflect/Method;

    .line 69
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "getCertifiedDownloadFontAppFacename"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_getCertifiedDownloadFontAppFacename:Ljava/lang/reflect/Method;

    .line 70
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "getCertifiedDownloadFontAppFontname"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_getCertifiedDownloadFontAppFontname:Ljava/lang/reflect/Method;

    .line 71
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "getSystemDefaultFamilyIndex"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/FontTypeFace;->_getSystemDefaultFamilyIndex:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static certifyNewDownloadFontApp(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_certifyNewDownloadFontApp:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_certifyNewDownloadFontApp:Ljava/lang/reflect/Method;

    const-class v2, Landroid/graphics/Typeface;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 265
    :goto_0
    return v0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    const-string v0, "FontTypeFace"

    const-string v2, "Error : not support font api."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 265
    goto :goto_0
.end method

.method public static countCertifiedDownloadFontApps()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_countCertifiedDownloadFontApps:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_countCertifiedDownloadFontApps:Ljava/lang/reflect/Method;

    const-class v2, Landroid/graphics/Typeface;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 297
    :goto_0
    return v0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    const-string v0, "FontTypeFace"

    const-string v2, "Error : not support font api."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 297
    goto :goto_0
.end method

.method public static countNewDownloadFontApps()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_countNewDownloadFontApps:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_countNewDownloadFontApps:Ljava/lang/reflect/Method;

    const-class v2, Landroid/graphics/Typeface;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 221
    :goto_0
    return v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string v0, "FontTypeFace"

    const-string v2, "Error : not support font api."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 221
    goto :goto_0
.end method

.method public static getCertifiedDownloadFontAppFontname(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getCertifiedDownloadFontAppFontname:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getCertifiedDownloadFontAppFontname:Ljava/lang/reflect/Method;

    const-class v1, Landroid/graphics/Typeface;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "FontTypeFace"

    const-string v1, "Error : not support font api."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FontTypeFace"

    const-string v1, "Notice : use getDefaultFontFaceName api."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/settings_ex/FontTypeFace;->getDefaultFontFaceName(I)Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentDefaultFontIndex()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getCurrentDefaultFontIndex:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getCurrentDefaultFontIndex:Ljava/lang/reflect/Method;

    const-class v2, Landroid/graphics/Typeface;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 102
    :goto_0
    return v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v0, "FontTypeFace"

    const-string v2, "Error : not support font api."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 102
    goto :goto_0
.end method

.method public static getDefaultFontCount()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getDefaultFontCount:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getDefaultFontCount:Ljava/lang/reflect/Method;

    const-class v2, Landroid/graphics/Typeface;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 113
    :goto_0
    return v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string v0, "FontTypeFace"

    const-string v2, "Error : not support font api."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public static getDefaultFontFaceName(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getDefaultFontFaceName:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getDefaultFontFaceName:Ljava/lang/reflect/Method;

    const-class v1, Landroid/graphics/Typeface;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v0, "FontTypeFace"

    const-string v1, "Error : not support font api."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNewDownloadFontAppName(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getNewDownloadFontAppName:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getNewDownloadFontAppName:Ljava/lang/reflect/Method;

    const-class v1, Landroid/graphics/Typeface;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string v0, "FontTypeFace"

    const-string v1, "Error : not support font api."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNewDownloadFontAppsDstPath()Ljava/lang/String;
    .locals 3

    .prologue
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getNewDownloadFontAppsDstPath:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getNewDownloadFontAppsDstPath:Ljava/lang/reflect/Method;

    const-class v1, Landroid/graphics/Typeface;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-object v0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    const-string v0, "FontTypeFace"

    const-string v1, "Error : not support font api."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNewDownloadFontAppsSrcPath()Ljava/lang/String;
    .locals 3

    .prologue
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getNewDownloadFontAppsSrcPath:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getNewDownloadFontAppsSrcPath:Ljava/lang/reflect/Method;

    const-class v1, Landroid/graphics/Typeface;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-object v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string v0, "FontTypeFace"

    const-string v1, "Error : not support font api."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSystemDefaultFamilyIndex()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getSystemDefaultFamilyIndex:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_getSystemDefaultFamilyIndex:Ljava/lang/reflect/Method;

    const-class v2, Landroid/graphics/Typeface;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 160
    :goto_0
    return v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string v0, "FontTypeFace"

    const-string v2, "Error : not support font api."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 160
    goto :goto_0
.end method

.method public static getUseCappFonts()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/android/settings_ex/FontTypeFace;->_CAPP_FONTS:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/android/settings_ex/FontTypeFace;->_CAPP_FONTS:Ljava/lang/reflect/Field;

    const-class v2, Lcom/lge/config/ConfigBuildFlags;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    const-string v1, "FontTypeFace"

    const-string v2, "Error : not support capp fonts."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static saveNewDownloadFontApps()V
    .locals 3

    .prologue
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_saveNewDownloadFontApps:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_saveNewDownloadFontApps:Ljava/lang/reflect/Method;

    const-class v1, Landroid/graphics/Typeface;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    const-string v0, "FontTypeFace"

    const-string v1, "Error : not support font api."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static searchNewDownloadFontApps()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_searchNewDownloadFontApps:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_searchNewDownloadFontApps:Ljava/lang/reflect/Method;

    const-class v2, Landroid/graphics/Typeface;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 210
    :goto_0
    return v0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const-string v0, "FontTypeFace"

    const-string v2, "Error : not support font api."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 210
    goto :goto_0
.end method

.method public static selectDefaultFont(I)V
    .locals 5
    .parameter

    .prologue
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_selectDefaultFont:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_selectDefaultFont:Ljava/lang/reflect/Method;

    const-class v1, Landroid/graphics/Typeface;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string v0, "FontTypeFace"

    const-string v1, "Error : not support font api."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateNewDownloadFontApp(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_updateNewDownloadFontApp:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/FontTypeFace;->_updateNewDownloadFontApp:Ljava/lang/reflect/Method;

    const-class v2, Landroid/graphics/Typeface;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 276
    :goto_0
    return v0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    const-string v0, "FontTypeFace"

    const-string v2, "Error : not support font api."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 276
    goto :goto_0
.end method
