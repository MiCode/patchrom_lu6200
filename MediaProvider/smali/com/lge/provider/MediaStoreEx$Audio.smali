.class public final Lcom/lge/provider/MediaStoreEx$Audio;
.super Ljava/lang/Object;
.source "MediaStoreEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/MediaStoreEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation


# static fields
.field static final ChoSung:[C

.field static final hangul_ChoSung:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x13

    .line 154
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/provider/MediaStoreEx$Audio;->ChoSung:[C

    .line 157
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\ufffd\ufffd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/provider/MediaStoreEx$Audio;->hangul_ChoSung:[Ljava/lang/String;

    return-void

    .line 154
    :array_0
    .array-data 0x2
        0x31t 0x31t
        0x31t 0x31t
        0x34t 0x31t
        0x37t 0x31t
        0x37t 0x31t
        0x39t 0x31t
        0x41t 0x31t
        0x42t 0x31t
        0x42t 0x31t
        0x45t 0x31t
        0x45t 0x31t
        0x47t 0x31t
        0x48t 0x31t
        0x48t 0x31t
        0x4at 0x31t
        0x4bt 0x31t
        0x4ct 0x31t
        0x4dt 0x31t
        0x4et 0x31t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 406
    return-void
.end method

.method public static indexKeyFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "name_title"

    .prologue
    const v11, 0xac00

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 179
    move-object v3, p0

    .line 183
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_15

    .line 184
    const/4 v5, 0x0

    .line 186
    .local v5, sortfirst:Z
    const-string v7, "<unknown>"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 187
    const-string v4, "#"

    .line 303
    .end local v5           #sortfirst:Z
    :cond_0
    :goto_0
    return-object v4

    .line 192
    .restart local v5       #sortfirst:Z
    :cond_1
    const-string v7, "\u0001"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 193
    const/4 v5, 0x1

    .line 195
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 197
    const-string v7, "the "

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 198
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 201
    :cond_3
    const-string v7, "an "

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 202
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    :cond_4
    const-string v7, "a "

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 206
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    :cond_5
    const-string v7, ", the"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, ",the"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, ", an"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, ",an"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, ", a"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, ",a"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 212
    :cond_6
    const/16 v7, 0x2c

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v3, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 214
    :cond_7
    const-string v7, "[\\[\\]\\(\\)\"\'.,?!]"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v9, v7, :cond_8

    const v7, 0xfeff

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_8

    .line 219
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    :cond_8
    move-object v2, v3

    .line 226
    .local v2, key:Ljava/lang/String;
    const-string v4, ""

    .line 230
    .local v4, result:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 233
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v9, :cond_9

    .line 234
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 239
    .local v0, ch:C
    :goto_1
    if-lt v0, v11, :cond_a

    const v7, 0xd7a3

    if-gt v0, v7, :cond_a

    .line 241
    sub-int v7, v0, v11

    int-to-char v6, v7

    .line 242
    .local v6, uniVal:C
    rem-int/lit8 v7, v6, 0x1c

    sub-int v7, v6, v7

    div-int/lit8 v7, v7, 0x1c

    div-int/lit8 v7, v7, 0x15

    int-to-char v1, v7

    .line 243
    .local v1, cho:C
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/lge/provider/MediaStoreEx$Audio;->ChoSung:[C

    aget-char v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    goto/16 :goto_0

    .line 236
    .end local v0           #ch:C
    .end local v1           #cho:C
    .end local v6           #uniVal:C
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #ch:C
    goto :goto_1

    .line 247
    :cond_a
    const/16 v7, 0xe0

    if-lt v0, v7, :cond_b

    const/16 v7, 0xe6

    if-gt v0, v7, :cond_b

    .line 249
    const-string v4, "a"

    goto/16 :goto_0

    .line 252
    :cond_b
    const/16 v7, 0xe7

    if-ne v0, v7, :cond_c

    .line 254
    const-string v4, "c"

    goto/16 :goto_0

    .line 257
    :cond_c
    const/16 v7, 0xe8

    if-lt v0, v7, :cond_d

    const/16 v7, 0xeb

    if-gt v0, v7, :cond_d

    .line 259
    const-string v4, "e"

    goto/16 :goto_0

    .line 262
    :cond_d
    const/16 v7, 0xec

    if-lt v0, v7, :cond_e

    const/16 v7, 0xef

    if-gt v0, v7, :cond_e

    .line 264
    const-string v4, "i"

    goto/16 :goto_0

    .line 267
    :cond_e
    const/16 v7, 0xf1

    if-ne v0, v7, :cond_f

    .line 269
    const-string v4, "n"

    goto/16 :goto_0

    .line 272
    :cond_f
    const/16 v7, 0xf2

    if-lt v0, v7, :cond_10

    const/16 v7, 0xf8

    if-gt v0, v7, :cond_10

    .line 274
    const-string v4, "o"

    goto/16 :goto_0

    .line 277
    :cond_10
    const/16 v7, 0xf9

    if-lt v0, v7, :cond_11

    const/16 v7, 0xfc

    if-gt v0, v7, :cond_11

    .line 279
    const-string v4, "u"

    goto/16 :goto_0

    .line 282
    :cond_11
    const/16 v7, 0xfd

    if-lt v0, v7, :cond_12

    const/16 v7, 0xff

    if-gt v0, v7, :cond_12

    .line 284
    const-string v4, "y"

    goto/16 :goto_0

    .line 287
    :cond_12
    const-string v7, "0123456789!\"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~\u00a0\u00a1\u00a2\u00a3\u00a4\u00a5\u00a6\u00a7\u00a8\u00a9\u00aa\u00ab\u00ac\u00ad\u00ae\u00af\u00b0\u00b1\u00b2\u00b3\u00b0\u00b1\u00b2\u00b3\u00b4\u00b5\u00b6\u00b7\u00b8\u00b9\u00ba\u00bb\u00bc\u00bd\u00be\u00bf\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\u009f"

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_13

    .line 289
    const-string v4, "#"

    goto/16 :goto_0

    .line 294
    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v9, :cond_14

    .line 295
    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 297
    :cond_14
    const-string v4, "#"

    goto/16 :goto_0

    .line 303
    .end local v0           #ch:C
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #sortfirst:Z
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_0
.end method
