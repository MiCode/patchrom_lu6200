.class public Lcom/android/settings_ex/wifi/ByteLengthFilter;
.super Ljava/lang/Object;
.source "ByteLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/ByteLengthFilter$OnMaxLengthListener;
    }
.end annotation


# static fields
.field private static check:Z


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEncode:Ljava/lang/String;

.field protected mMax:I

.field private mOnMaxLength:Lcom/android/settings_ex/wifi/ByteLengthFilter$OnMaxLengthListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/wifi/ByteLengthFilter;->check:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "max"
    .parameter "encode"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings_ex/wifi/ByteLengthFilter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings_ex/wifi/ByteLengthFilter;->mMax:I

    iput-object p3, p0, Lcom/android/settings_ex/wifi/ByteLengthFilter;->mEncode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 14
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 42
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_1

    const/4 v7, 0x0

    .line 117
    :cond_0
    :goto_0
    return-object v7

    .line 44
    :cond_1
    iget v10, p0, Lcom/android/settings_ex/wifi/ByteLengthFilter;->mMax:I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/wifi/ByteLengthFilter;->getByteLength(Ljava/lang/String;)I

    move-result v11

    sub-int v4, v10, v11

    .line 46
    .local v4, keep:I
    const-string v10, "ByteLengthFilter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dest : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", dstart = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", dend = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/wifi/ByteLengthFilter;->getByteLength(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v10, "ByteLengthFilter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "source : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", start = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", end = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/wifi/ByteLengthFilter;->getByteLength(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v10, "ByteLengthFilter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dest.subSequence(0, dstart).toString() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v12, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",  getByteLength(dest.subSequence(0, dstart).toString()) "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v12, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/wifi/ByteLengthFilter;->getByteLength(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v10, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v10, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/ByteLengthFilter;->getByteLength(Ljava/lang/String;)I

    move-result v6

    .line 53
    .local v6, nLength:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/ByteLengthFilter;->getByteLength(Ljava/lang/String;)I

    move-result v5

    .line 54
    .local v5, nInputLength:I
    const/4 v2, 0x0

    .line 56
    .local v2, bUniMax:Z
    sub-int v10, p6, p5

    if-lez v10, :cond_2

    .line 57
    invoke-interface/range {p4 .. p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/ByteLengthFilter;->getByteLength(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v4, v10

    .line 60
    :cond_2
    int-to-double v10, v6

    const-wide/high16 v12, 0x4000

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    .line 62
    .local v9, uniMax:I
    iget v10, p0, Lcom/android/settings_ex/wifi/ByteLengthFilter;->mMax:I

    div-int/lit8 v10, v10, 0x2

    if-ne v9, v10, :cond_3

    const/4 v10, 0x2

    if-ne v5, v10, :cond_3

    const/4 v2, 0x1

    .line 64
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/ByteLengthFilter;->getByteLength(Ljava/lang/String;)I

    move-result v10

    iget v11, p0, Lcom/android/settings_ex/wifi/ByteLengthFilter;->mMax:I

    if-lt v10, v11, :cond_4

    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/settings_ex/wifi/ByteLengthFilter;->check:Z

    .line 68
    :cond_4
    if-lez v4, :cond_5

    if-eqz v2, :cond_7

    .line 70
    :cond_5
    iget-object v10, p0, Lcom/android/settings_ex/wifi/ByteLengthFilter;->mOnMaxLength:Lcom/android/settings_ex/wifi/ByteLengthFilter$OnMaxLengthListener;

    if-eqz v10, :cond_6

    sget-boolean v10, Lcom/android/settings_ex/wifi/ByteLengthFilter;->check:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/settings_ex/wifi/ByteLengthFilter;->mOnMaxLength:Lcom/android/settings_ex/wifi/ByteLengthFilter$OnMaxLengthListener;

    invoke-interface {v10}, Lcom/android/settings_ex/wifi/ByteLengthFilter$OnMaxLengthListener;->onMaxLength()V

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings_ex/wifi/ByteLengthFilter;->check:Z

    :cond_6
    const-string v7, ""

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_8

    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/settings_ex/wifi/ByteLengthFilter;->check:Z

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/ByteLengthFilter;->getByteLength(Ljava/lang/String;)I

    move-result v10

    if-gt v10, v4, :cond_9

    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/settings_ex/wifi/ByteLengthFilter;->check:Z

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_9
    add-int v3, p2, v4

    .local v3, idx:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .local v8, srcLen:I
    if-le v3, v8, :cond_a

    move v3, v8

    :cond_a
    :goto_1
    move/from16 v0, p2

    if-le v3, v0, :cond_c

    move/from16 v0, p2

    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .local v7, ret:Ljava/lang/CharSequence;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/ByteLengthFilter;->getByteLength(Ljava/lang/String;)I

    move-result v10

    if-gt v10, v4, :cond_b

    iget-object v10, p0, Lcom/android/settings_ex/wifi/ByteLengthFilter;->mOnMaxLength:Lcom/android/settings_ex/wifi/ByteLengthFilter$OnMaxLengthListener;

    if-eqz v10, :cond_0

    sget-boolean v10, Lcom/android/settings_ex/wifi/ByteLengthFilter;->check:Z

    if-eqz v10, :cond_0

    const-string v10, "ByteLengthFilter"

    const-string v11, "1.dialog called.."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings_ex/wifi/ByteLengthFilter;->mOnMaxLength:Lcom/android/settings_ex/wifi/ByteLengthFilter$OnMaxLengthListener;

    invoke-interface {v10}, Lcom/android/settings_ex/wifi/ByteLengthFilter$OnMaxLengthListener;->onMaxLength()V

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings_ex/wifi/ByteLengthFilter;->check:Z

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v7           #ret:Ljava/lang/CharSequence;
    :cond_c
    const-string v7, ""

    goto/16 :goto_0
.end method

.method protected getByteLength(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/ByteLengthFilter;->mEncode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 127
    const/4 v1, -0x1

    goto :goto_0
.end method
