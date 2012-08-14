.class public final Lcom/android/internal/telephony/cdma/EriManager;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/EriManager$EriCrcCalculator;,
        Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
        Lcom/android/internal/telephony/cdma/EriManager$EriImg;,
        Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;,
        Lcom/android/internal/telephony/cdma/EriManager$EriFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final ENCODING_ASCII:I = 0x2

.field public static final ENCODING_GSM7:I = 0x9

.field public static final ENCODING_IA5:I = 0x3

.field public static final ENCODING_IS_91:I = 0x1

.field public static final ENCODING_KOREAN:I = 0x6

.field public static final ENCODING_LATIN:I = 0x8

.field public static final ENCODING_LATIN_HEBREW:I = 0x7

.field public static final ENCODING_OCTET:I = 0x0

.field public static final ENCODING_OTHERS:I = 0xa

.field public static final ENCODING_SHIFT_JIS:I = 0x5

.field public static final ENCODING_UNICODE:I = 0x4

.field public static final ERI_FROM_FILE_SYSTEM:I = 0x1

.field public static final ERI_FROM_MODEM:I = 0x2

.field public static final ERI_FROM_XML:I = 0x0

.field public static final LENGTH_BITS_CALL_PROMPT_AMOUNT_OF_TEXT_DATA:I = 0x8

.field public static final LENGTH_BITS_CALL_PROMPT_CALL_PROMPT_ID:I = 0x4

.field public static final LENGTH_BITS_CALL_PROMPT_CHARACTER_ENCODING_TYPE:I = 0x5

.field public static final LENGTH_BITS_CALL_PROMPT_RESERVED_BITS1:I = 0x8

.field public static final LENGTH_BITS_CALL_PROMPT_RESERVED_BITS2:I = 0x4

.field public static final LENGTH_BITS_CALL_PROMPT_RESERVED_BITS3:I = 0x3

.field public static final LENGTH_BITS_CALL_PROMPT_TEXT_DATA:I = 0x0

.field public static final LENGTH_BITS_ERI_FILE_CRC:I = 0x10

.field public static final LENGTH_BITS_ERI_TYPE:I = 0x3

.field public static final LENGTH_BITS_ICON_IMAGE_AMOUNT_OF_TEXT_DATA:I = 0x8

.field public static final LENGTH_BITS_ICON_IMAGE_ICON_FILE_NAME:I = 0x0

.field public static final LENGTH_BITS_ICON_IMAGE_IMAGE_ID:I = 0x4

.field public static final LENGTH_BITS_ICON_IMAGE_RESERVED_BITS:I = 0x4

.field public static final LENGTH_BITS_ICON_IMAGE_TYPE:I = 0x3

.field public static final LENGTH_BITS_NUMBER_OF_ERI_ENTRIES:I = 0x6

.field public static final LENGTH_BITS_NUMBER_OF_ICON_IMAGES:I = 0x4

.field public static final LENGTH_BITS_RESERVED_PAD_BITS:I = 0x8

.field public static final LENGTH_BITS_ROAMING_INDICATOR_ALERT_ID:I = 0x3

.field public static final LENGTH_BITS_ROAMING_INDICATOR_AMOUNT_OF_TEXT_DATA:I = 0x8

.field public static final LENGTH_BITS_ROAMING_INDICATOR_CALL_PROMPT_ID:I = 0x2

.field public static final LENGTH_BITS_ROAMING_INDICATOR_CHARACTER_ENCODING_TYPE:I = 0x5

.field public static final LENGTH_BITS_ROAMING_INDICATOR_ERI_TEXT:I = 0x0

.field public static final LENGTH_BITS_ROAMING_INDICATOR_ICON_INDEX:I = 0x4

.field public static final LENGTH_BITS_ROAMING_INDICATOR_ICON_MODE:I = 0x2

.field public static final LENGTH_BITS_ROAMING_INDICATOR_ROAMING_INDICATOR:I = 0x8

.field public static final LENGTH_BITS_VERSION_NUMBER:I = 0x10

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final VDBG:Z


# instance fields
.field private indexofhomesystem:Ljava/lang/String;

.field private isEriFileLoaded:Z

.field private mContext:Landroid/content/Context;

.field private mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

.field private mEriFileSource:I

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V
    .locals 1
    .parameter "phone"
    .parameter "context"
    .parameter "eriFileSource"

    .prologue
    .line 268
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 266
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;

    .line 269
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 270
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 271
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 272
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 273
    return-void
.end method

.method private getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .locals 12
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    const v11, 0x1040103

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 777
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    if-eqz v4, :cond_0

    .line 778
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v1

    .line 779
    .local v1, eriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    if-eqz v1, :cond_0

    .line 781
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v4, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iget v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iget-object v6, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .local v2, ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    move-object v3, v2

    .line 1041
    .end local v1           #eriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .local v3, ret:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 789
    .end local v3           #ret:Ljava/lang/Object;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 914
    const/16 v4, 0x63

    if-ne p1, v4, :cond_4

    .line 915
    const-string/jumbo v4, "vzw_eri"

    invoke-static {v9, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 916
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, ""

    invoke-direct {v2, p0, v7, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 920
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    const-string v4, "CDMA"

    const-string v5, "create Eriinfo for femto(99)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v3, v2

    .line 1041
    .restart local v3       #ret:Ljava/lang/Object;
    goto :goto_0

    .line 793
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .end local v3           #ret:Ljava/lang/Object;
    :pswitch_0
    const-string/jumbo v4, "vzw_eri"

    invoke-static {v9, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 794
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, ""

    invoke-direct {v2, p0, v7, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 800
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v7, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 805
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 809
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_1
    const-string/jumbo v4, "vzw_eri"

    invoke-static {v9, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 810
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, ""

    invoke-direct {v2, p0, v8, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 816
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040104

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v8, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 821
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 825
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_2
    const-string/jumbo v4, "vzw_eri"

    invoke-static {v9, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 826
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, ""

    invoke-direct {v2, p0, v10, v8, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 832
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040105

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v10, v8, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 837
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 842
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_3
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040106

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 846
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 849
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_4
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040107

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 853
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 856
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_5
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040108

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 860
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 863
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_6
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040109

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 867
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 870
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_7
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x104010a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 874
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 877
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_8
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x104010b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 881
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 884
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_9
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x104010c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 888
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 891
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_a
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x104010d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 895
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 898
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_b
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x104010e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 902
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 905
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_c
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x104010f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 909
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 925
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    if-nez v4, :cond_9

    .line 927
    const-string v4, "CDMA"

    const-string v5, "ERI File not loaded"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    if-le p2, v10, :cond_5

    .line 930
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040105

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v10, v8, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 937
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_5
    packed-switch p2, :pswitch_data_1

    .line 990
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-string v6, "ERI text"

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 940
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_d
    const-string/jumbo v4, "vzw_eri"

    invoke-static {v9, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 941
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, ""

    invoke-direct {v2, p0, v7, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 947
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_6
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v7, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 953
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 957
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_e
    const-string/jumbo v4, "vzw_eri"

    invoke-static {v9, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 958
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, ""

    invoke-direct {v2, p0, v8, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 964
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_7
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040104

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v8, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 970
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 974
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_f
    const-string/jumbo v4, "vzw_eri"

    invoke-static {v9, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 975
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, ""

    invoke-direct {v2, p0, v10, v8, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 981
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_8
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x1040105

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v10, v8, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 987
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 995
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v1

    .line 996
    .restart local v1       #eriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    .line 997
    .local v0, defEriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    if-nez v1, :cond_c

    .line 1002
    if-nez v0, :cond_b

    .line 1003
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERI defRoamInd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found in ERI file ...on"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const-string/jumbo v4, "vzw_eri"

    invoke-static {v9, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1007
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v10, v8, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 1013
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_a
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v7, v7, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 1025
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_b
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v4, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iget v5, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 1032
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_c
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v4, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iget v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iget-object v6, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 789
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 937
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;
    .locals 2
    .parameter "roamingIndicator"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/EriInfo;

    .line 769
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadEriFileFromFileSystem()V
    .locals 13

    .prologue
    .line 586
    const-string v0, "/data/eri/eri.bin"

    .line 587
    .local v0, ERI_FILE_NAME:Ljava/lang/String;
    const/4 v8, 0x0

    .line 588
    .local v8, stream:Ljava/io/FileInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    .line 589
    .local v4, eriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;
    const/4 v2, 0x0

    .line 592
    .local v2, count:I
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    const-string v10, "/data/eri/eri.bin"

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 593
    .end local v8           #stream:Ljava/io/FileInputStream;
    .local v9, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 594
    new-array v5, v2, [B

    .line 596
    .local v5, eriRawData:[B
    :cond_0
    invoke-virtual {v9, v5}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    .line 600
    :try_start_2
    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/cdma/EriManager;->xlateEriData([BLcom/android/internal/telephony/cdma/EriManager$EriFile;)V

    .line 602
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;

    .line 603
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",64,65,76,77,78,79,80,81,82,83,99"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 618
    :goto_0
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v8, v9

    .line 625
    .end local v5           #eriRawData:[B
    .end local v9           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :goto_1
    return-void

    .line 604
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v5       #eriRawData:[B
    .restart local v9       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 606
    .local v1, ae:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :try_start_4
    const-string v10, "CDMA"

    const-string/jumbo v11, "loadEriFileFromFileSystem : acess exception"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_0

    .line 609
    .end local v1           #ae:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .end local v5           #eriRawData:[B
    :catch_1
    move-exception v6

    move-object v8, v9

    .line 611
    .end local v9           #stream:Ljava/io/FileInputStream;
    .local v6, fnfe:Ljava/io/FileNotFoundException;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    const-string v10, "CDMA"

    const-string/jumbo v11, "loadEriFileFromFileSystem : file not found"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 618
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 619
    :catch_2
    move-exception v3

    .line 621
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "CDMA"

    const-string/jumbo v11, "loadEriFileFromFileSystem : exception"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 619
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #fnfe:Ljava/io/FileNotFoundException;
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v5       #eriRawData:[B
    .restart local v9       #stream:Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    .line 621
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v10, "CDMA"

    const-string/jumbo v11, "loadEriFileFromFileSystem : exception"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 623
    .end local v9           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    goto :goto_1

    .line 613
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #eriRawData:[B
    :catch_4
    move-exception v7

    .line 615
    .local v7, ioe:Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v10, "CDMA"

    const-string/jumbo v11, "loadEriFileFromFileSystem : IO exception"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 618
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 619
    :catch_5
    move-exception v3

    .line 621
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v10, "CDMA"

    const-string/jumbo v11, "loadEriFileFromFileSystem : exception"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 617
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 618
    :goto_4
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 622
    :goto_5
    throw v10

    .line 619
    :catch_6
    move-exception v3

    .line 621
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "CDMA"

    const-string/jumbo v12, "loadEriFileFromFileSystem : exception"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 617
    .end local v3           #e:Ljava/lang/Exception;
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 613
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v7

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 609
    :catch_8
    move-exception v6

    goto :goto_2
.end method

.method private loadEriFileFromModem()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method private loadEriFileFromXml()V
    .locals 20

    .prologue
    .line 632
    const/4 v13, 0x0

    .line 633
    .local v13, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v15, 0x0

    .line 634
    .local v15, stream:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 637
    .local v14, r:Landroid/content/res/Resources;
    :try_start_0
    const-string v2, "CDMA"

    const-string/jumbo v18, "loadEriFileFromXml: check for alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    new-instance v16, Ljava/io/FileInputStream;

    const v2, 0x1040461

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 640
    .end local v15           #stream:Ljava/io/FileInputStream;
    .local v16, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 641
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 642
    const-string v2, "CDMA"

    const-string/jumbo v18, "loadEriFileFromXml: opened alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6

    move-object/from16 v15, v16

    .line 651
    .end local v16           #stream:Ljava/io/FileInputStream;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    :goto_0
    if-nez v13, :cond_0

    .line 652
    const-string v2, "CDMA"

    const-string/jumbo v18, "loadEriFileFromXml: open normal file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const v2, 0x10f0002

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    .line 657
    :cond_0
    :try_start_2
    const-string v2, "EriFile"

    invoke-static {v13, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 659
    const/4 v2, 0x0

    const-string/jumbo v18, "vzw_eri"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/16 v18, -0x1

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 661
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/EriManager;->sendEriWrite(I)V

    .line 664
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/16 v18, 0x0

    const-string v19, "VersionNumber"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/16 v18, 0x0

    const-string v19, "NumberOfEriEntries"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/16 v18, 0x0

    const-string v19, "EriFileType"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    .line 671
    const/4 v12, 0x0

    .line 673
    .local v12, parsedEriEntries:I
    :cond_2
    :goto_1
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 674
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 675
    .local v11, name:Ljava/lang/String;
    if-nez v11, :cond_7

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    if-eq v12, v2, :cond_3

    .line 677
    const-string v2, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error Parsing ERI file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " defined, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " parsed!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_3
    const/4 v2, 0x0

    const-string/jumbo v18, "vzw_eri"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v18, ",64,65,76,77,78,79,80,81,82,83"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;

    .line 711
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 716
    instance-of v2, v13, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_5

    .line 717
    check-cast v13, Landroid/content/res/XmlResourceParser;

    .end local v13           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 720
    :cond_5
    if-eqz v15, :cond_6

    .line 721
    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 727
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #parsedEriEntries:I
    :cond_6
    :goto_2
    return-void

    .line 643
    .restart local v13       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v9

    .line 644
    .local v9, e:Ljava/io/FileNotFoundException;
    :goto_3
    const-string v2, "CDMA"

    const-string/jumbo v18, "loadEriFileFromXml: no alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v13, 0x0

    .line 649
    goto/16 :goto_0

    .line 646
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    .line 647
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    const-string v2, "CDMA"

    const-string/jumbo v18, "loadEriFileFromXml: no parser for alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 680
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v11       #name:Ljava/lang/String;
    .restart local v12       #parsedEriEntries:I
    :cond_7
    :try_start_4
    const-string v2, "CallPromptId"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 681
    const/4 v2, 0x0

    const-string v18, "Id"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 682
    .local v10, id:I
    const/4 v2, 0x0

    const-string v18, "CallPromptText"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 683
    .local v17, text:Ljava/lang/String;
    if-ltz v10, :cond_9

    const/4 v2, 0x2

    if-gt v10, v2, :cond_9

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    aput-object v17, v2, v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 713
    .end local v10           #id:I
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #parsedEriEntries:I
    .end local v17           #text:Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 714
    .local v9, e:Ljava/lang/Exception;
    :try_start_5
    const-string v2, "CDMA"

    const-string v18, "Got exception while loading ERI file."

    move-object/from16 v0, v18

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 716
    instance-of v2, v13, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_8

    .line 717
    check-cast v13, Landroid/content/res/XmlResourceParser;

    .end local v13           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 720
    :cond_8
    if-eqz v15, :cond_6

    .line 721
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 723
    :catch_3
    move-exception v2

    goto :goto_2

    .line 686
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v10       #id:I
    .restart local v11       #name:Ljava/lang/String;
    .restart local v12       #parsedEriEntries:I
    .restart local v13       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17       #text:Ljava/lang/String;
    :cond_9
    :try_start_7
    const-string v2, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error Parsing ERI file: found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " CallPromptId"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 716
    .end local v10           #id:I
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #parsedEriEntries:I
    .end local v17           #text:Ljava/lang/String;
    :catchall_0
    move-exception v2

    instance-of v0, v13, Landroid/content/res/XmlResourceParser;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 717
    check-cast v13, Landroid/content/res/XmlResourceParser;

    .end local v13           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 720
    :cond_a
    if-eqz v15, :cond_b

    .line 721
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 725
    :cond_b
    :goto_5
    throw v2

    .line 689
    .restart local v11       #name:Ljava/lang/String;
    .restart local v12       #parsedEriEntries:I
    .restart local v13       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_c
    :try_start_9
    const-string v2, "EriInfo"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 690
    const/4 v2, 0x0

    const-string v18, "RoamingIndicator"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 692
    .local v3, roamingIndicator:I
    const/4 v2, 0x0

    const-string v18, "IconIndex"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 693
    .local v4, iconIndex:I
    const/4 v2, 0x0

    const-string v18, "IconMode"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 694
    .local v5, iconMode:I
    const/4 v2, 0x0

    const-string v18, "EriText"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 695
    .local v6, eriText:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v18, "CallPromptId"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 697
    .local v7, callPromptId:I
    const/4 v2, 0x0

    const-string v18, "AlertId"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 698
    .local v8, alertId:I
    add-int/lit8 v12, v12, 0x1

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    new-instance v2, Lcom/android/internal/telephony/cdma/EriInfo;

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 723
    .end local v3           #roamingIndicator:I
    .end local v4           #iconIndex:I
    .end local v5           #iconMode:I
    .end local v6           #eriText:Ljava/lang/String;
    .end local v7           #callPromptId:I
    .end local v8           #alertId:I
    .end local v13           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v2

    goto/16 :goto_2

    .end local v11           #name:Ljava/lang/String;
    .end local v12           #parsedEriEntries:I
    :catch_5
    move-exception v18

    goto :goto_5

    .line 646
    .end local v15           #stream:Ljava/io/FileInputStream;
    .restart local v13       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v9

    move-object/from16 v15, v16

    .end local v16           #stream:Ljava/io/FileInputStream;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 643
    .end local v15           #stream:Ljava/io/FileInputStream;
    .restart local v16       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v9

    move-object/from16 v15, v16

    .end local v16           #stream:Ljava/io/FileInputStream;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private xlateEriData([BLcom/android/internal/telephony/cdma/EriManager$EriFile;)V
    .locals 31
    .parameter "eri_data_ptr"
    .parameter "eri_ptr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v24, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 313
    .local v24, bis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v27, 0x0

    .line 317
    .local v27, data_pos:I
    const/16 v30, 0x0

    .line 318
    .local v30, num_reserved_padbits:I
    const/16 v26, 0x0

    .line 321
    .local v26, crc_calc:C
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p2

    iput v2, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 323
    add-int/lit8 v27, v27, 0x10

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    iput v3, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 328
    const-string v2, "CDMA"

    const-string/jumbo v3, "sendEriWrite"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v2, 0x6

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 332
    add-int/lit8 v27, v27, 0x6

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    iput v3, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 336
    const/4 v2, 0x3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    .line 338
    add-int/lit8 v27, v27, 0x3

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    iput v3, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    .line 342
    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfIconImages:I

    .line 344
    add-int/lit8 v27, v27, 0x4

    .line 346
    const/4 v2, 0x3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mIconImageType:I

    .line 348
    add-int/lit8 v27, v27, 0x3

    .line 350
    const/16 v28, 0x0

    .local v28, i:I
    :goto_0
    const/4 v2, 0x3

    move/from16 v0, v28

    if-ge v0, v2, :cond_1

    .line 357
    const-string v10, ""

    .line 360
    .local v10, textData:Ljava/lang/String;
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    .line 362
    .local v4, reservedBits1:I
    add-int/lit8 v27, v27, 0x8

    .line 365
    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 367
    .local v5, callPromptId:I
    add-int/lit8 v27, v27, 0x4

    .line 370
    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 372
    .local v6, reservedBits2:I
    add-int/lit8 v27, v27, 0x4

    .line 375
    const/4 v2, 0x3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 377
    .local v7, reservedBits3:I
    add-int/lit8 v27, v27, 0x3

    .line 380
    const/4 v2, 0x5

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 382
    .local v8, characterEncodingType:I
    add-int/lit8 v27, v27, 0x5

    .line 384
    packed-switch v8, :pswitch_data_0

    .line 401
    :pswitch_0
    const/16 v25, 0x0

    .line 406
    .local v25, char_bit_len:B
    :goto_1
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    .line 408
    .local v9, amountOfTextData:I
    add-int/lit8 v27, v27, 0x8

    .line 411
    const/16 v29, 0x0

    .local v29, j:I
    :goto_2
    move/from16 v0, v29

    if-ge v0, v9, :cond_0

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 414
    add-int v27, v27, v25

    .line 411
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 387
    .end local v9           #amountOfTextData:I
    .end local v25           #char_bit_len:B
    .end local v29           #j:I
    :pswitch_1
    const/16 v25, 0x8

    .line 388
    .restart local v25       #char_bit_len:B
    goto :goto_1

    .line 393
    .end local v25           #char_bit_len:B
    :pswitch_2
    const/16 v25, 0x8

    .line 394
    .restart local v25       #char_bit_len:B
    goto :goto_1

    .line 397
    .end local v25           #char_bit_len:B
    :pswitch_3
    const/16 v25, 0x10

    .line 398
    .restart local v25       #char_bit_len:B
    goto :goto_1

    .line 417
    .restart local v9       #amountOfTextData:I
    .restart local v29       #j:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v11, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPrmptTable:Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IIIIIILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0

    .line 427
    .end local v4           #reservedBits1:I
    .end local v5           #callPromptId:I
    .end local v6           #reservedBits2:I
    .end local v7           #reservedBits3:I
    .end local v8           #characterEncodingType:I
    .end local v9           #amountOfTextData:I
    .end local v10           #textData:Ljava/lang/String;
    .end local v25           #char_bit_len:B
    .end local v29           #j:I
    :cond_1
    const/16 v28, 0x0

    :goto_3
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    move/from16 v0, v28

    if-ge v0, v2, :cond_3

    .line 431
    const-string v15, ""

    .line 438
    .local v15, eriText:Ljava/lang/String;
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 440
    .local v12, roamingIndicator:I
    add-int/lit8 v27, v27, 0x8

    .line 443
    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    .line 445
    .local v13, iconIndex:I
    add-int/lit8 v27, v27, 0x4

    .line 448
    const/4 v2, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    .line 450
    .local v14, iconMode:I
    add-int/lit8 v27, v27, 0x2

    .line 453
    const/4 v2, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 455
    .restart local v5       #callPromptId:I
    add-int/lit8 v27, v27, 0x2

    .line 458
    const/4 v2, 0x3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    .line 460
    .local v17, alertId:I
    add-int/lit8 v27, v27, 0x3

    .line 463
    const/4 v2, 0x5

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 465
    .restart local v8       #characterEncodingType:I
    add-int/lit8 v27, v27, 0x5

    .line 467
    packed-switch v8, :pswitch_data_1

    .line 484
    :pswitch_4
    const/16 v25, 0x0

    .line 488
    .restart local v25       #char_bit_len:B
    :goto_4
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    .line 490
    .restart local v9       #amountOfTextData:I
    add-int/lit8 v27, v27, 0x8

    .line 493
    const/16 v29, 0x0

    .restart local v29       #j:I
    :goto_5
    move/from16 v0, v29

    if-ge v0, v9, :cond_2

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 496
    add-int v27, v27, v25

    .line 493
    add-int/lit8 v29, v29, 0x1

    goto :goto_5

    .line 470
    .end local v9           #amountOfTextData:I
    .end local v25           #char_bit_len:B
    .end local v29           #j:I
    :pswitch_5
    const/16 v25, 0x8

    .line 471
    .restart local v25       #char_bit_len:B
    goto :goto_4

    .line 476
    .end local v25           #char_bit_len:B
    :pswitch_6
    const/16 v25, 0x8

    .line 477
    .restart local v25       #char_bit_len:B
    goto :goto_4

    .line 480
    .end local v25           #char_bit_len:B
    :pswitch_7
    const/16 v25, 0x10

    .line 481
    .restart local v25       #char_bit_len:B
    goto :goto_4

    .line 500
    .restart local v9       #amountOfTextData:I
    .restart local v29       #j:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v11, Lcom/android/internal/telephony/cdma/EriInfo;

    move/from16 v16, v5

    invoke-direct/range {v11 .. v17}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;II)V

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_3

    .line 509
    .end local v5           #callPromptId:I
    .end local v8           #characterEncodingType:I
    .end local v9           #amountOfTextData:I
    .end local v12           #roamingIndicator:I
    .end local v13           #iconIndex:I
    .end local v14           #iconMode:I
    .end local v15           #eriText:Ljava/lang/String;
    .end local v17           #alertId:I
    .end local v25           #char_bit_len:B
    .end local v29           #j:I
    :cond_3
    const/16 v28, 0x0

    :goto_6
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfIconImages:I

    move/from16 v0, v28

    if-ge v0, v2, :cond_5

    .line 513
    const-string v23, ""

    .line 516
    .local v23, iconFileName:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v20

    .line 518
    .local v20, imageId:I
    add-int/lit8 v27, v27, 0x4

    .line 521
    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    .line 523
    .local v21, reservedBits:I
    add-int/lit8 v27, v27, 0x4

    .line 526
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    .line 528
    .restart local v9       #amountOfTextData:I
    add-int/lit8 v27, v27, 0x8

    .line 530
    const/16 v25, 0x8

    .line 533
    .restart local v25       #char_bit_len:B
    const/16 v29, 0x0

    .restart local v29       #j:I
    :goto_7
    move/from16 v0, v29

    if-ge v0, v9, :cond_4

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 536
    add-int v27, v27, v25

    .line 533
    add-int/lit8 v29, v29, 0x1

    goto :goto_7

    .line 539
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mIconImgTable:Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v18, Lcom/android/internal/telephony/cdma/EriManager$EriImg;

    move-object/from16 v19, p0

    move/from16 v22, v9

    invoke-direct/range {v18 .. v23}, Lcom/android/internal/telephony/cdma/EriManager$EriImg;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IIILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 546
    .end local v9           #amountOfTextData:I
    .end local v20           #imageId:I
    .end local v21           #reservedBits:I
    .end local v23           #iconFileName:Ljava/lang/String;
    .end local v25           #char_bit_len:B
    .end local v29           #j:I
    :cond_5
    rem-int/lit8 v2, v27, 0x8

    rsub-int/lit8 v30, v2, 0x8

    .line 547
    const/16 v2, 0x8

    move/from16 v0, v30

    if-ne v0, v2, :cond_6

    .line 548
    const/16 v30, 0x0

    .line 552
    :cond_6
    if-eqz v30, :cond_7

    .line 553
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mReservedPadBits:I

    .line 555
    add-int v27, v27, v30

    .line 559
    :cond_7
    const/16 v2, 0x8

    :try_start_0
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p2

    iput v2, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileCrc:I

    .line 563
    const/16 v26, 0x0

    .line 564
    div-int/lit8 v2, v27, 0x8

    int-to-char v2, v2

    move/from16 v0, v26

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/EriManager$EriCrcCalculator;->crc_16_step(C[BC)C

    move-result v26

    .line 566
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileCrc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v26

    if-eq v0, v2, :cond_8

    .line 573
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    .line 575
    :goto_8
    return-void

    .line 569
    :catch_0
    move-exception v2

    .line 573
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    goto :goto_8

    :catchall_0
    move-exception v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    throw v2

    .line 384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 467
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    .line 278
    return-void
.end method

.method public getAlertId(II)I
    .locals 4
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 1057
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    .line 1058
    .local v0, eriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    if-nez v0, :cond_0

    .line 1059
    const/4 v1, -0x1

    .line 1062
    :goto_0
    return v1

    .line 1061
    :cond_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eriInfo.mAlertId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mAlertId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget v1, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mAlertId:I

    goto :goto_0
.end method

.method public getCdmaEriHomeSystems()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;

    return-object v0
.end method

.method public getCdmaEriIconIndex(II)I
    .locals 1
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 1045
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode(II)I
    .locals 1
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 1049
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    return v0
.end method

.method public getCdmaEriText(II)Ljava/lang/String;
    .locals 1
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 1053
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    return-object v0
.end method

.method public getEriFileType()I
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    return v0
.end method

.method public getEriFileVersion()I
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    return v0
.end method

.method public getEriNumberOfEntries()I
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    return v0
.end method

.method public isEriFileLoaded()Z
    .locals 1

    .prologue
    .line 758
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    return v0
.end method

.method public loadEriFile()V
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    packed-switch v0, :pswitch_data_0

    .line 293
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V

    .line 296
    :goto_0
    return-void

    .line 284
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromModem()V

    goto :goto_0

    .line 288
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromFileSystem()V

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method sendEriWrite(I)V
    .locals 4
    .parameter "eri_version"

    .prologue
    .line 1070
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ERI_VERSION_WRITE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LG_SYS_VZW_ERI_VERSION : (sendEriWrite) ERI version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const-string/jumbo v1, "phoneEriVersionWrite"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1073
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1074
    return-void
.end method
