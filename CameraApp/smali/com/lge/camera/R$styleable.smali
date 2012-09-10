.class public final Lcom/lge/camera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraPreference:[I = null

.field public static final CameraPreference_sharedPreferenceName:I = 0x0

.field public static final Gallery:[I = null

.field public static final Gallery_android_galleryItemBackground:I = 0x0

.field public static final ListPreference:[I = null

.field public static final ListPreference_defaultValue:I = 0x6

.field public static final ListPreference_entries:I = 0x7

.field public static final ListPreference_entryCommand:I = 0x5

.field public static final ListPreference_entryIcons:I = 0x9

.field public static final ListPreference_entryValues:I = 0x8

.field public static final ListPreference_entryViewIds:I = 0xa

.field public static final ListPreference_extraInfos:I = 0xc

.field public static final ListPreference_extraInfos2:I = 0xe

.field public static final ListPreference_extraInfos3:I = 0xf

.field public static final ListPreference_indicatorIcons:I = 0xb

.field public static final ListPreference_key:I = 0x0

.field public static final ListPreference_menuCommand:I = 0x4

.field public static final ListPreference_menuIcons:I = 0x3

.field public static final ListPreference_menuViewId:I = 0x2

.field public static final ListPreference_persist:I = 0xd

.field public static final ListPreference_title:I = 0x1

.field public static final Rotatable:[I = null

.field public static final Rotatable_background:I = 0x0

.field public static final Rotatable_ellipsis:I = 0xf

.field public static final Rotatable_pivotLeft:I = 0xd

.field public static final Rotatable_pivotTop:I = 0xe

.field public static final Rotatable_rotateIconOnly:I = 0xc

.field public static final Rotatable_rotateInsideView:I = 0xb

.field public static final Rotatable_text:I = 0x1

.field public static final Rotatable_textColor:I = 0x3

.field public static final Rotatable_textGravity:I = 0x8

.field public static final Rotatable_textPaddingBottom:I = 0x5

.field public static final Rotatable_textPaddingLeft:I = 0x6

.field public static final Rotatable_textPaddingRight:I = 0x7

.field public static final Rotatable_textPaddingTop:I = 0x4

.field public static final Rotatable_textShadowColor:I = 0x9

.field public static final Rotatable_textShadowRadius:I = 0xa

.field public static final Rotatable_textSize:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6382
    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/lge/camera/R$styleable;->CameraPreference:[I

    .line 6409
    new-array v0, v3, [I

    const v1, 0x101004c

    aput v1, v0, v2

    sput-object v0, Lcom/lge/camera/R$styleable;->Gallery:[I

    .line 6458
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/camera/R$styleable;->ListPreference:[I

    .line 6676
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lge/camera/R$styleable;->Rotatable:[I

    return-void

    .line 6458
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
    .end array-data

    .line 6676
    :array_1
    .array-data 0x4
        0x11t 0x0t 0x1t 0x7ft
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
        0x14t 0x0t 0x1t 0x7ft
        0x15t 0x0t 0x1t 0x7ft
        0x16t 0x0t 0x1t 0x7ft
        0x17t 0x0t 0x1t 0x7ft
        0x18t 0x0t 0x1t 0x7ft
        0x19t 0x0t 0x1t 0x7ft
        0x1at 0x0t 0x1t 0x7ft
        0x1bt 0x0t 0x1t 0x7ft
        0x1ct 0x0t 0x1t 0x7ft
        0x1dt 0x0t 0x1t 0x7ft
        0x1et 0x0t 0x1t 0x7ft
        0x1ft 0x0t 0x1t 0x7ft
        0x20t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6371
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
