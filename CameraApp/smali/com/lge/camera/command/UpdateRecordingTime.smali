.class public Lcom/lge/camera/command/UpdateRecordingTime;
.super Lcom/lge/camera/command/Command;
.source "UpdateRecordingTime.java"


# instance fields
.field protected mMediator:Lcom/lge/camera/CamcorderMediator;

.field private mRecBlink:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mRecBlink:Z

    .line 24
    check-cast p1, Lcom/lge/camera/CamcorderMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    .line 25
    return-void
.end method

.method private updateRecordingTimeStateIdle()V
    .locals 8

    .prologue
    .line 73
    iget-object v6, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const v7, 0x7f0900a9

    invoke-virtual {v6, v7}, Lcom/lge/camera/CamcorderMediator;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 74
    .local v5, recTimeText:Landroid/widget/TextView;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v0

    .line 75
    .local v0, currentCarrierCode:I
    iget-object v6, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v3

    .line 76
    .local v3, isMMSMode:Z
    iget-object v6, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v1

    .line 77
    .local v1, isAttachIntent:Z
    iget-object v6, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v2

    .line 79
    .local v2, isAttachMode:Z
    if-nez v3, :cond_0

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    :cond_0
    const/4 v6, 0x6

    if-ne v0, v6, :cond_1

    .line 80
    const-string v6, "00/60"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_0
    const v6, 0x7f0900ad

    invoke-virtual {p0, v6}, Lcom/lge/camera/command/UpdateRecordingTime;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RecProgressBar;

    .line 85
    .local v4, recProgress:Lcom/lge/camera/components/RecProgressBar;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    .line 86
    return-void

    .line 82
    .end local v4           #recProgress:Lcom/lge/camera/components/RecProgressBar;
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b012c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateRecordingTimeStateRecording(J)V
    .locals 32
    .parameter "seconds"

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    move-object/from16 v28, v0

    const v29, 0x7f0900a9

    invoke-virtual/range {v28 .. v29}, Lcom/lge/camera/CamcorderMediator;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 91
    .local v14, recTimeText:Landroid/widget/TextView;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    const-wide/16 v28, 0x3c

    div-long v10, p1, v28

    .line 94
    .local v10, minutes:J
    const-wide/16 v28, 0x3c

    div-long v4, v10, v28

    .line 95
    .local v4, hours:J
    const-wide/16 v28, 0x3c

    mul-long v28, v28, v4

    sub-long v20, v10, v28

    .line 96
    .local v20, remainderMinutes:J
    const-wide/16 v28, 0x3c

    mul-long v28, v28, v10

    sub-long v22, p1, v28

    .line 98
    .local v22, remainderSeconds:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v7

    .line 99
    .local v7, isAttachMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v9

    .line 100
    .local v9, isMMSMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v6

    .line 102
    .local v6, isAttachIntent:Z
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v3

    .line 103
    .local v3, currentCarrierCode:I
    if-nez v9, :cond_0

    if-nez v6, :cond_6

    if-eqz v7, :cond_6

    :cond_0
    const/16 v28, 0x6

    move/from16 v0, v28

    if-ne v3, v0, :cond_6

    .line 104
    const-string v28, "%02d/60"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 105
    .local v24, timeTextMMS:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const-wide/16 v28, 0x1

    cmp-long v28, v20, v28

    if-nez v28, :cond_1

    .line 108
    const-string v28, "60/60"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .end local v24           #timeTextMMS:Ljava/lang/String;
    :cond_1
    :goto_0
    const v28, 0x7f0900aa

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/UpdateRecordingTime;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 114
    .local v13, recIcon:Landroid/widget/ImageView;
    const v28, 0x7f020178

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mRecBlink:Z

    move/from16 v28, v0

    if-eqz v28, :cond_7

    .line 116
    const/16 v28, 0x4

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/camera/command/UpdateRecordingTime;->mRecBlink:Z

    .line 123
    :goto_1
    const/4 v12, 0x0

    .line 124
    .local v12, progress:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/lge/camera/controller/camcorder/RecordingController;->getIsFileSizeLimitReached()Z

    move-result v8

    .line 125
    .local v8, isFileSizeLimitReached:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/lge/camera/controller/camcorder/RecordingController;->getRecordingSizeLimit()J

    move-result-wide v18

    .line 126
    .local v18, recordingSizeLimit:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/lge/camera/controller/camcorder/RecordingController;->getRecordingDurationLimit()J

    move-result-wide v15

    .line 127
    .local v15, recordingDurationLimit:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFileSize()J

    move-result-wide v26

    .line 128
    .local v26, videoFileSize:J
    const v28, 0x7f0900ad

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/UpdateRecordingTime;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/lge/camera/components/RecProgressBar;

    .line 130
    .local v17, recordingProgressBar:Lcom/lge/camera/components/RecProgressBar;
    if-nez v9, :cond_2

    if-nez v6, :cond_9

    if-eqz v7, :cond_9

    :cond_2
    const/16 v28, 0x6

    move/from16 v0, v28

    if-eq v3, v0, :cond_3

    const/16 v28, 0xa

    move/from16 v0, v28

    if-ne v3, v0, :cond_9

    .line 132
    :cond_3
    if-eqz v8, :cond_8

    .line 133
    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v12

    .line 134
    const-string v28, "CameraApp"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Limit reached! barmax:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_4
    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    .line 141
    if-eqz v8, :cond_5

    .line 142
    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/components/RecProgressBar;->invalidate()V

    .line 177
    :cond_5
    :goto_3
    return-void

    .line 111
    .end local v8           #isFileSizeLimitReached:Z
    .end local v12           #progress:I
    .end local v13           #recIcon:Landroid/widget/ImageView;
    .end local v15           #recordingDurationLimit:J
    .end local v17           #recordingProgressBar:Lcom/lge/camera/components/RecProgressBar;
    .end local v18           #recordingSizeLimit:J
    .end local v26           #videoFileSize:J
    :cond_6
    const-string v28, "%02d:%02d:%02d"

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 119
    .restart local v13       #recIcon:Landroid/widget/ImageView;
    :cond_7
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/camera/command/UpdateRecordingTime;->mRecBlink:Z

    goto/16 :goto_1

    .line 136
    .restart local v8       #isFileSizeLimitReached:Z
    .restart local v12       #progress:I
    .restart local v15       #recordingDurationLimit:J
    .restart local v17       #recordingProgressBar:Lcom/lge/camera/components/RecProgressBar;
    .restart local v18       #recordingSizeLimit:J
    .restart local v26       #videoFileSize:J
    :cond_8
    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v28, v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMMSMaxDuration()I

    move-result v29

    move/from16 v0, v29

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v12, v0

    .line 137
    const-wide/16 v28, 0x0

    cmp-long v28, v22, v28

    if-nez v28, :cond_4

    .line 138
    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v12

    goto :goto_2

    .line 145
    :cond_9
    if-nez v9, :cond_a

    if-eqz v7, :cond_d

    :cond_a
    const-wide/16 v28, 0x0

    cmp-long v28, v18, v28

    if-eqz v28, :cond_d

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v25

    .line 147
    .local v25, videoFile:Ljava/io/File;
    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RecProgressBar;->setVisibility(I)V

    .line 148
    if-eqz v8, :cond_c

    .line 149
    move-wide/from16 v26, v18

    .line 150
    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v12

    .line 151
    const-string v28, "CameraApp"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Limit reached! barmax:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_b
    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    .line 160
    if-eqz v8, :cond_5

    .line 161
    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/components/RecProgressBar;->invalidate()V

    goto/16 :goto_3

    .line 153
    :cond_c
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_b

    .line 154
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v26

    .line 155
    const-string v28, "CameraApp"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "FileSize: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    mul-long v28, v28, v26

    div-long v28, v28, v18

    move-wide/from16 v0, v28

    long-to-int v12, v0

    goto :goto_4

    .line 164
    .end local v25           #videoFile:Ljava/io/File;
    :cond_d
    if-eqz v7, :cond_5

    const-wide/16 v28, 0x0

    cmp-long v28, v15, v28

    if-eqz v28, :cond_5

    .line 166
    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RecProgressBar;->setVisibility(I)V

    .line 167
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, p1

    cmp-long v28, v28, v15

    if-ltz v28, :cond_e

    .line 168
    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v12

    .line 169
    const-string v28, "CameraApp"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Limit reached! barmax:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    goto/16 :goto_3

    .line 171
    :cond_e
    const-string v28, "CameraApp"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "rectime: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, p1

    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    mul-long v28, v28, v30

    div-long v28, v28, v15

    move-wide/from16 v0, v28

    long-to-int v12, v0

    goto :goto_5
.end method


# virtual methods
.method public execute()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x3e8

    .line 29
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UpdateRecordingTime, video state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v8, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 50
    :goto_0
    :pswitch_0
    return-void

    .line 33
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 34
    .local v4, now:J
    iget-object v8, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->getStartTime()J

    move-result-wide v8

    sub-long v0, v4, v8

    .line 36
    .local v0, delta:J
    rem-long v8, v0, v11

    sub-long v2, v11, v8

    .line 37
    .local v2, next_update_delay:J
    div-long v6, v0, v11

    .line 39
    .local v6, seconds:J
    invoke-direct {p0, v6, v7}, Lcom/lge/camera/command/UpdateRecordingTime;->updateRecordingTimeStateRecording(J)V

    .line 41
    iget-object v8, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v9, "com.lge.camera.command.UpdateRecordingTime"

    invoke-virtual {v8, v9, v2, v3}, Lcom/lge/camera/CamcorderMediator;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0

    .line 46
    .end local v0           #delta:J
    .end local v2           #next_update_delay:J
    .end local v4           #now:J
    .end local v6           #seconds:J
    :pswitch_2
    invoke-direct {p0}, Lcom/lge/camera/command/UpdateRecordingTime;->updateRecordingTimeStateIdle()V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 4
    .parameter "time"

    .prologue
    .line 55
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 56
    .local v0, iTime:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    .line 58
    .local v1, seconds:J
    iget-object v3, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 70
    :goto_0
    :pswitch_0
    return-void

    .line 60
    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/lge/camera/command/UpdateRecordingTime;->updateRecordingTimeStateRecording(J)V

    goto :goto_0

    .line 66
    :pswitch_2
    invoke-direct {p0}, Lcom/lge/camera/command/UpdateRecordingTime;->updateRecordingTimeStateIdle()V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
