.class public Lcom/android/internal/telephony/ProfileParser;
.super Ljava/lang/Object;
.source "ProfileParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ProfileParser$NameValueProfile;,
        Lcom/android/internal/telephony/ProfileParser$ProfileData;
    }
.end annotation


# static fields
.field private static final ATTR_NAME_COUNTRY:Ljava/lang/String; = "country"

.field private static final ATTR_NAME_DEFAULT:Ljava/lang/String; = "default"

.field private static final ATTR_NAME_GID:Ljava/lang/String; = "gid"

.field private static final ATTR_NAME_IMSI_RANGE:Ljava/lang/String; = "imsi"

.field private static final ATTR_NAME_KEY:Ljava/lang/String; = "name"

.field private static final ATTR_NAME_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_NAME_MNC:Ljava/lang/String; = "mnc"

.field private static final ATTR_NAME_OPERATOR:Ljava/lang/String; = "operator"

.field private static final ATTR_NAME_SPN:Ljava/lang/String; = "spn"

.field private static final DBG:Z = false

.field private static final ELEMENT_NAME_COMMONPROFILE:Ljava/lang/String; = "CommonProfile"

.field private static final ELEMENT_NAME_FEATURESET:Ljava/lang/String; = "FeatureSet"

.field private static final ELEMENT_NAME_ITEM:Ljava/lang/String; = "item"

.field private static final ELEMENT_NAME_PROFILE:Ljava/lang/String; = "Profile"

.field private static final ELEMENT_NAME_PROFILES:Ljava/lang/String; = "Profiles"

.field private static final TAG:Ljava/lang/String; = "TELProfiling"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 438
    return-void
.end method


# virtual methods
.method protected final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 5
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 55
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, type:I
    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 59
    :cond_1
    if-eq v1, v3, :cond_2

    .line 60
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, first:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 65
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected start tag: found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_3
    return-void
.end method

.method protected existInTokens(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "string"
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 114
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v0, st:Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected existInTokens(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .parameter "string"
    .parameter "v"
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 126
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v4

    .line 128
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 131
    .local v3, xml_length:I
    if-le v3, p3, :cond_2

    .line 132
    move v0, p3

    .line 138
    .local v0, final_length:I
    :goto_1
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, fixed_xml_gid:Ljava/lang/String;
    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, fixed_sim_gid:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    const/4 v4, 0x1

    goto :goto_0

    .line 134
    .end local v0           #final_length:I
    .end local v1           #fixed_sim_gid:Ljava/lang/String;
    .end local v2           #fixed_xml_gid:Ljava/lang/String;
    :cond_2
    move v0, v3

    .restart local v0       #final_length:I
    goto :goto_1
.end method

.method public getMatchedProfile(Landroid/content/Context;ILcom/android/internal/telephony/SimInfo;Landroid/content/SharedPreferences$Editor;)Lcom/android/internal/telephony/ProfileParser$ProfileData;
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "sim"
    .parameter "edit"

    .prologue
    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, matchedProfile:Lcom/android/internal/telephony/ProfileParser$ProfileData;
    const/4 v2, 0x0

    .line 386
    .local v2, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 387
    .local v3, r:Landroid/content/res/Resources;
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 389
    invoke-virtual {p0, v2, p3, p4}, Lcom/android/internal/telephony/ProfileParser;->getMatchedProfile(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/telephony/SimInfo;Landroid/content/SharedPreferences$Editor;)Lcom/android/internal/telephony/ProfileParser$ProfileData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 393
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 396
    .end local v3           #r:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v1

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v4
.end method

.method public getMatchedProfile(Ljava/lang/String;Lcom/android/internal/telephony/SimInfo;Landroid/content/SharedPreferences$Editor;)Lcom/android/internal/telephony/ProfileParser$ProfileData;
    .locals 8
    .parameter "filename"
    .parameter "sim"
    .parameter "edit"

    .prologue
    .line 407
    const/4 v5, 0x0

    .line 410
    .local v5, matchedProfile:Lcom/android/internal/telephony/ProfileParser$ProfileData;
    const/4 v3, 0x0

    .line 411
    .local v3, in:Ljava/io/FileReader;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {v0, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 413
    .local v0, confFile:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 415
    .end local v3           #in:Ljava/io/FileReader;
    .local v4, in:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 416
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 417
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 419
    invoke-virtual {p0, v6, p2, p3}, Lcom/android/internal/telephony/ProfileParser;->getMatchedProfile(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/telephony/SimInfo;Landroid/content/SharedPreferences$Editor;)Lcom/android/internal/telephony/ProfileParser$ProfileData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v5

    .line 426
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 432
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4           #in:Ljava/io/FileReader;
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #in:Ljava/io/FileReader;
    :cond_1
    :goto_0
    return-object v5

    .line 427
    .end local v3           #in:Ljava/io/FileReader;
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4       #in:Ljava/io/FileReader;
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 428
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 430
    .end local v4           #in:Ljava/io/FileReader;
    .restart local v3       #in:Ljava/io/FileReader;
    goto :goto_0

    .line 420
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 421
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 426
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 427
    :catch_2
    move-exception v1

    .line 428
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 422
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 423
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 426
    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 427
    :catch_4
    move-exception v1

    .line 428
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 426
    :goto_3
    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 429
    :cond_2
    :goto_4
    throw v7

    .line 427
    :catch_5
    move-exception v1

    .line 428
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 425
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #in:Ljava/io/FileReader;
    .restart local v4       #in:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileReader;
    .restart local v3       #in:Ljava/io/FileReader;
    goto :goto_3

    .line 422
    .end local v3           #in:Ljava/io/FileReader;
    .restart local v4       #in:Ljava/io/FileReader;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileReader;
    .restart local v3       #in:Ljava/io/FileReader;
    goto :goto_2

    .line 420
    .end local v3           #in:Ljava/io/FileReader;
    .restart local v4       #in:Ljava/io/FileReader;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileReader;
    .restart local v3       #in:Ljava/io/FileReader;
    goto :goto_1
.end method

.method public getMatchedProfile(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/telephony/SimInfo;Landroid/content/SharedPreferences$Editor;)Lcom/android/internal/telephony/ProfileParser$ProfileData;
    .locals 23
    .parameter "parser"
    .parameter "sim"
    .parameter "edit"

    .prologue
    .line 251
    const/4 v13, 0x0

    .line 252
    .local v13, commonProfile:Lcom/android/internal/telephony/ProfileParser$ProfileData;
    const/4 v11, 0x0

    .line 253
    .local v11, bestMatchedProfile:Lcom/android/internal/telephony/ProfileParser$ProfileData;
    const/4 v12, 0x0

    .line 254
    .local v12, candidateProfile:Lcom/android/internal/telephony/ProfileParser$ProfileData;
    const/4 v14, 0x0

    .line 255
    .local v14, defaultProfile:Lcom/android/internal/telephony/ProfileParser$ProfileData;
    const/16 v16, 0x0

    .line 257
    .local v16, featureProfile:Lcom/android/internal/telephony/ProfileParser$ProfileData;
    if-nez p1, :cond_0

    .line 258
    const/4 v5, 0x0

    .line 367
    :goto_0
    return-object v5

    .line 263
    :cond_0
    :try_start_0
    const-string v5, "Profiles"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/ProfileParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 267
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/ProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 269
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 367
    :goto_1
    if-eqz v11, :cond_c

    move-object v5, v11

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v5, v1}, Lcom/android/internal/telephony/ProfileParser;->mergeProfileIfNeeded(Lcom/android/internal/telephony/ProfileParser$ProfileData;Lcom/android/internal/telephony/ProfileParser$ProfileData;Lcom/android/internal/telephony/ProfileParser$ProfileData;)Lcom/android/internal/telephony/ProfileParser$ProfileData;

    move-result-object v5

    goto :goto_0

    .line 273
    :cond_2
    :try_start_1
    const-string v5, "Profile"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 274
    const/4 v5, 0x0

    const-string/jumbo v6, "mcc"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, mccValue:Ljava/lang/String;
    const/4 v5, 0x0

    const-string/jumbo v6, "mnc"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 276
    .local v8, mncValue:Ljava/lang/String;
    const/4 v5, 0x0

    const-string/jumbo v6, "operator"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 277
    .local v9, operatorValue:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "country"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 278
    .local v10, countryValue:Ljava/lang/String;
    const-string/jumbo v5, "true"

    const/4 v6, 0x0

    const-string v22, "default"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 287
    .local v19, isDefault:Z
    const/16 v20, 0x0

    .line 289
    .local v20, p:Lcom/android/internal/telephony/ProfileParser$ProfileData;
    if-eqz v19, :cond_3

    .line 291
    if-nez v14, :cond_3

    .line 293
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/ProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/ProfileParser$ProfileData;

    move-result-object v20

    .line 294
    move-object/from16 v14, v20

    :cond_3
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    .line 298
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/ProfileParser;->matchMccMnc(Lcom/android/internal/telephony/SimInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 300
    if-nez v12, :cond_5

    .line 301
    if-nez v20, :cond_4

    .line 303
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/ProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/ProfileParser$ProfileData;

    move-result-object v20

    .line 305
    :cond_4
    move-object/from16 v12, v20

    .line 308
    :cond_5
    const/4 v5, 0x0

    const-string v6, "gid"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 309
    .local v17, gidValue:Ljava/lang/String;
    const/4 v5, 0x0

    const-string/jumbo v6, "spn"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 310
    .local v21, spnValue:Ljava/lang/String;
    const/4 v5, 0x0

    const-string/jumbo v6, "imsi"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 316
    .local v18, imsiValue:Ljava/lang/String;
    if-nez v11, :cond_7

    .line 318
    if-nez v17, :cond_6

    if-nez v21, :cond_6

    if-eqz v18, :cond_7

    .line 319
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v21

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ProfileParser;->matchExtension(Lcom/android/internal/telephony/SimInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 321
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/ProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/ProfileParser$ProfileData;

    move-result-object v20

    .line 322
    move-object/from16 v11, v20

    .line 329
    .end local v17           #gidValue:Ljava/lang/String;
    .end local v18           #imsiValue:Ljava/lang/String;
    .end local v21           #spnValue:Ljava/lang/String;
    :cond_7
    if-nez v20, :cond_8

    .line 330
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/ProfileParser;->skipCurrentElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 350
    .end local v7           #mccValue:Ljava/lang/String;
    .end local v8           #mncValue:Ljava/lang/String;
    .end local v9           #operatorValue:Ljava/lang/String;
    .end local v10           #countryValue:Ljava/lang/String;
    .end local v19           #isDefault:Z
    .end local v20           #p:Lcom/android/internal/telephony/ProfileParser$ProfileData;
    :cond_8
    :goto_3
    if-eqz v11, :cond_1

    goto/16 :goto_1

    .line 333
    :cond_9
    const-string v5, "CommonProfile"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 334
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/ProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/ProfileParser$ProfileData;

    move-result-object v13

    goto :goto_3

    .line 335
    :cond_a
    const-string v5, "FeatureSet"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 336
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/ProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/ProfileParser$ProfileData;

    move-result-object v16

    goto :goto_3

    .line 339
    :cond_b
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unexpected tag: found "

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 361
    :catch_0
    move-exception v15

    .line 362
    .local v15, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v15}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_1

    .line 363
    .end local v15           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v15

    .line 364
    .local v15, e:Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 367
    .end local v15           #e:Ljava/io/IOException;
    :cond_c
    if-eqz v12, :cond_d

    move-object v5, v12

    goto/16 :goto_2

    :cond_d
    move-object v5, v14

    goto/16 :goto_2
.end method

.method protected matchExtension(Lcom/android/internal/telephony/SimInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "sim"
    .parameter "gid"
    .parameter "spn"
    .parameter "imsi_range"

    .prologue
    const/4 v8, 0x0

    .line 191
    if-nez p1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v8

    .line 194
    :cond_1
    iget-object v9, p1, Lcom/android/internal/telephony/SimInfo;->gid:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 195
    iget-object v9, p1, Lcom/android/internal/telephony/SimInfo;->gid:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    .line 196
    .local v2, gid_length:I
    if-eqz p2, :cond_2

    iget-object v9, p1, Lcom/android/internal/telephony/SimInfo;->gid:Ljava/lang/String;

    invoke-virtual {p0, p2, v9, v2}, Lcom/android/internal/telephony/ProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 201
    .end local v2           #gid_length:I
    :cond_2
    if-eqz p3, :cond_3

    iget-object v9, p1, Lcom/android/internal/telephony/SimInfo;->spn:Ljava/lang/String;

    invoke-virtual {p0, p3, v9}, Lcom/android/internal/telephony/ProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 206
    :cond_3
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_8

    .line 208
    iget-object v9, p1, Lcom/android/internal/telephony/SimInfo;->imsi:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, found:Z
    iget-object v9, p1, Lcom/android/internal/telephony/SimInfo;->imsi:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 213
    .local v4, imsi_length:I
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v9, ","

    invoke-direct {v6, p4, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v6, st:Ljava/util/StringTokenizer;
    :cond_4
    :goto_1
    if-nez v1, :cond_7

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 215
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, t:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 218
    .local v5, len:I
    if-gt v5, v4, :cond_4

    .line 224
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v5, :cond_5

    .line 225
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 226
    .local v0, c:C
    const/16 v9, 0x78

    if-eq v0, v9, :cond_6

    iget-object v9, p1, Lcom/android/internal/telephony/SimInfo;->imsi:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v0, v9, :cond_6

    .line 230
    .end local v0           #c:C
    :cond_5
    if-ne v3, v5, :cond_4

    .line 231
    const/4 v1, 0x1

    goto :goto_1

    .line 224
    .restart local v0       #c:C
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 235
    .end local v0           #c:C
    .end local v3           #i:I
    .end local v5           #len:I
    .end local v7           #t:Ljava/lang/String;
    :cond_7
    if-eqz v1, :cond_0

    .line 239
    .end local v1           #found:Z
    .end local v4           #imsi_length:I
    .end local v6           #st:Ljava/util/StringTokenizer;
    :cond_8
    const/4 v8, 0x1

    goto :goto_0
.end method

.method protected matchMccMnc(Lcom/android/internal/telephony/SimInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "sim"
    .parameter "mcc"
    .parameter "mnc"
    .parameter "operator"
    .parameter "country"

    .prologue
    const/4 v0, 0x0

    .line 149
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/SimInfo;->mcc:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/internal/telephony/SimInfo;->mnc:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/SimInfo;->mcc:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p1, Lcom/android/internal/telephony/SimInfo;->mcc:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/telephony/ProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/SimInfo;->mnc:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 163
    iget-object v1, p1, Lcom/android/internal/telephony/SimInfo;->mnc:Ljava/lang/String;

    invoke-virtual {p0, p3, v1}, Lcom/android/internal/telephony/ProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected mergeProfile(Lcom/android/internal/telephony/ProfileParser$ProfileData;Lcom/android/internal/telephony/ProfileParser$ProfileData;Lcom/android/internal/telephony/ProfileParser$ProfileData;)Lcom/android/internal/telephony/ProfileParser$ProfileData;
    .locals 8
    .parameter "commonProfile"
    .parameter "matchedProfile"
    .parameter "featureProfile"

    .prologue
    .line 573
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;

    .local v0, cp:Lcom/android/internal/telephony/ProfileParser$NameValueProfile;
    move-object v4, p2

    .line 574
    check-cast v4, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;

    .local v4, mp:Lcom/android/internal/telephony/ProfileParser$NameValueProfile;
    move-object v1, p3

    .line 575
    check-cast v1, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;

    .line 580
    .local v1, fp:Lcom/android/internal/telephony/ProfileParser$NameValueProfile;
    if-eqz v0, :cond_1

    .line 582
    #getter for: Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/ProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 583
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 585
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 586
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 587
    .local v2, key:Ljava/lang/String;
    #getter for: Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/ProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 588
    #getter for: Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/ProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 593
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    if-eqz v1, :cond_3

    .line 595
    #getter for: Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/ProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 596
    .restart local v5       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 598
    .restart local v3       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 599
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 600
    .restart local v2       #key:Ljava/lang/String;
    #getter for: Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/ProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 601
    #getter for: Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/ProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 606
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    return-object v4
.end method

.method protected mergeProfileIfNeeded(Lcom/android/internal/telephony/ProfileParser$ProfileData;Lcom/android/internal/telephony/ProfileParser$ProfileData;Lcom/android/internal/telephony/ProfileParser$ProfileData;)Lcom/android/internal/telephony/ProfileParser$ProfileData;
    .locals 1
    .parameter "globalProfile"
    .parameter "matchedProfile"
    .parameter "featureProfile"

    .prologue
    const/4 v0, 0x0

    .line 92
    if-nez p1, :cond_1

    if-nez p3, :cond_1

    if-nez p2, :cond_1

    move-object p1, v0

    .line 109
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 97
    .restart local p1
    :cond_1
    if-nez p2, :cond_2

    .line 100
    if-eqz p3, :cond_0

    .line 101
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/internal/telephony/ProfileParser;->mergeProfile(Lcom/android/internal/telephony/ProfileParser$ProfileData;Lcom/android/internal/telephony/ProfileParser$ProfileData;Lcom/android/internal/telephony/ProfileParser$ProfileData;)Lcom/android/internal/telephony/ProfileParser$ProfileData;

    move-result-object p1

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/ProfileParser;->mergeProfile(Lcom/android/internal/telephony/ProfileParser$ProfileData;Lcom/android/internal/telephony/ProfileParser$ProfileData;Lcom/android/internal/telephony/ProfileParser$ProfileData;)Lcom/android/internal/telephony/ProfileParser$ProfileData;

    move-result-object p1

    goto :goto_0
.end method

.method protected final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    :cond_1
    return-void
.end method

.method protected readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/ProfileParser$ProfileData;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    new-instance v2, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;

    invoke-direct {v2}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;-><init>()V

    .line 487
    .local v2, p:Lcom/android/internal/telephony/ProfileParser$NameValueProfile;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 491
    .local v0, depth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, type:I
    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_2

    :cond_1
    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    .line 493
    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 497
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, tag:Ljava/lang/String;
    const-string/jumbo v6, "item"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 500
    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 502
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 503
    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    .line 504
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 505
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v2, v1, v5}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method protected readProfile(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/SharedPreferences$Editor;)Lcom/android/internal/telephony/ProfileParser$ProfileData;
    .locals 8
    .parameter "parser"
    .parameter "edit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    new-instance v2, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;

    invoke-direct {v2}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;-><init>()V

    .line 531
    .local v2, p:Lcom/android/internal/telephony/ProfileParser$NameValueProfile;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 535
    .local v0, depth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, type:I
    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_2

    :cond_1
    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    .line 537
    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 541
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 543
    .local v3, tag:Ljava/lang/String;
    const-string/jumbo v6, "item"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 544
    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 546
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 547
    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    .line 548
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, value:Ljava/lang/String;
    invoke-interface {p2, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 550
    invoke-virtual {v2, v1, v5}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 561
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method protected final skipCurrentElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 83
    .local v0, depth:I
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, type:I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 86
    :cond_1
    return-void
.end method
