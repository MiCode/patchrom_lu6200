.class public final Lcom/lge/lgdrm/DrmContentMetaData;
.super Ljava/lang/Object;
.source "DrmContentMetaData.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public album:Ljava/lang/StringBuffer;

.field public author:Ljava/lang/StringBuffer;

.field public category:Ljava/lang/StringBuffer;

.field public classification:Ljava/lang/StringBuffer;

.field public copyRight:Ljava/lang/StringBuffer;

.field public coverURI:Ljava/lang/StringBuffer;

.field public description:Ljava/lang/StringBuffer;

.field public duration:Ljava/lang/StringBuffer;

.field public lyricsURI:Ljava/lang/StringBuffer;

.field public performer:Ljava/lang/StringBuffer;

.field public recordingYear:Ljava/lang/StringBuffer;

.field public title:Ljava/lang/StringBuffer;

.field public trackNumber:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "DrmCmtMeta"

    sput-object v0, Lcom/lge/lgdrm/DrmContentMetaData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public getData(I)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, data:Ljava/lang/StringBuffer;
    packed-switch p1, :pswitch_data_0

    .line 230
    :goto_0
    if-nez v0, :cond_0

    .line 231
    const/4 v1, 0x0

    .line 234
    :goto_1
    return-object v1

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->title:Ljava/lang/StringBuffer;

    .line 191
    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->description:Ljava/lang/StringBuffer;

    .line 194
    goto :goto_0

    .line 196
    :pswitch_2
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->copyRight:Ljava/lang/StringBuffer;

    .line 197
    goto :goto_0

    .line 199
    :pswitch_3
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->performer:Ljava/lang/StringBuffer;

    .line 200
    goto :goto_0

    .line 202
    :pswitch_4
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->author:Ljava/lang/StringBuffer;

    .line 203
    goto :goto_0

    .line 205
    :pswitch_5
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->category:Ljava/lang/StringBuffer;

    .line 206
    goto :goto_0

    .line 208
    :pswitch_6
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->classification:Ljava/lang/StringBuffer;

    .line 209
    goto :goto_0

    .line 211
    :pswitch_7
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->album:Ljava/lang/StringBuffer;

    .line 212
    goto :goto_0

    .line 214
    :pswitch_8
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->recordingYear:Ljava/lang/StringBuffer;

    .line 215
    goto :goto_0

    .line 217
    :pswitch_9
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->coverURI:Ljava/lang/StringBuffer;

    .line 218
    goto :goto_0

    .line 220
    :pswitch_a
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->lyricsURI:Ljava/lang/StringBuffer;

    .line 221
    goto :goto_0

    .line 223
    :pswitch_b
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->trackNumber:Ljava/lang/StringBuffer;

    .line 224
    goto :goto_0

    .line 226
    :pswitch_c
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->duration:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
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
.end method

.method public getDataList()[I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, count:I
    const/16 v4, 0xe

    new-array v2, v4, [I

    .line 98
    .local v2, tmp:[I
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentMetaData;->title:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_0

    .line 99
    const/4 v4, 0x1

    aput v4, v2, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentMetaData;->description:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_1

    .line 103
    const/4 v4, 0x2

    aput v4, v2, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    .line 106
    :cond_1
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentMetaData;->copyRight:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_2

    .line 107
    const/4 v4, 0x3

    aput v4, v2, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 110
    :cond_2
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentMetaData;->performer:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_3

    .line 111
    const/4 v4, 0x4

    aput v4, v2, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 114
    :cond_3
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentMetaData;->author:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_4

    .line 115
    const/4 v4, 0x5

    aput v4, v2, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 118
    :cond_4
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentMetaData;->category:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_5

    .line 119
    const/4 v4, 0x6

    aput v4, v2, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 122
    :cond_5
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentMetaData;->classification:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_6

    .line 123
    const/4 v4, 0x7

    aput v4, v2, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 126
    :cond_6
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentMetaData;->album:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_7

    .line 127
    const/16 v4, 0x8

    aput v4, v2, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    .line 130
    :cond_7
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentMetaData;->recordingYear:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_8

    .line 131
    const/16 v4, 0x9

    aput v4, v2, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 134
    :cond_8
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentMetaData;->coverURI:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_9

    .line 135
    const/16 v4, 0xa

    aput v4, v2, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 138
    :cond_9
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentMetaData;->lyricsURI:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_a

    .line 139
    const/16 v4, 0xb

    aput v4, v2, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 142
    :cond_a
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentMetaData;->trackNumber:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_b

    .line 143
    const/16 v4, 0xc

    aput v4, v2, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    .line 146
    :cond_b
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentMetaData;->duration:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_c

    .line 147
    const/16 v4, 0xd

    aput v4, v2, v0

    .line 148
    add-int/lit8 v0, v0, 0x1

    .line 151
    :cond_c
    if-nez v0, :cond_d

    move-object v1, v3

    .line 162
    :goto_0
    return-object v1

    .line 155
    :cond_d
    new-array v1, v0, [I

    .line 156
    .local v1, list:[I
    if-nez v1, :cond_e

    move-object v1, v3

    .line 157
    goto :goto_0

    .line 160
    :cond_e
    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setData(ILjava/lang/String;)I
    .locals 3
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v0, -0x1

    .line 266
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0xe

    if-lt p1, v1, :cond_1

    .line 267
    :cond_0
    sget-object v1, Lcom/lge/lgdrm/DrmContentMetaData;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setData() : Type is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_0
    return v0

    .line 270
    :cond_1
    if-nez p2, :cond_2

    .line 271
    sget-object v1, Lcom/lge/lgdrm/DrmContentMetaData;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setData() : Value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 318
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 278
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->title:Ljava/lang/StringBuffer;

    goto :goto_1

    .line 281
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->description:Ljava/lang/StringBuffer;

    goto :goto_1

    .line 284
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->copyRight:Ljava/lang/StringBuffer;

    goto :goto_1

    .line 287
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->performer:Ljava/lang/StringBuffer;

    goto :goto_1

    .line 290
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->author:Ljava/lang/StringBuffer;

    goto :goto_1

    .line 293
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->category:Ljava/lang/StringBuffer;

    goto :goto_1

    .line 296
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->classification:Ljava/lang/StringBuffer;

    goto :goto_1

    .line 299
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->album:Ljava/lang/StringBuffer;

    goto :goto_1

    .line 302
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->recordingYear:Ljava/lang/StringBuffer;

    goto :goto_1

    .line 305
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->coverURI:Ljava/lang/StringBuffer;

    goto :goto_1

    .line 308
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->lyricsURI:Ljava/lang/StringBuffer;

    goto :goto_1

    .line 311
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->trackNumber:Ljava/lang/StringBuffer;

    goto :goto_1

    .line 314
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentMetaData;->duration:Ljava/lang/StringBuffer;

    goto :goto_1

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.end method
