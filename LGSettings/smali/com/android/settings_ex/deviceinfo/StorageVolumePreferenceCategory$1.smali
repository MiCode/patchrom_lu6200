.class Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;
.super Landroid/os/Handler;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .parameter "msg"

    .prologue
    .line 157
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 159
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    .line 160
    .local v22, bundle:Landroid/os/Bundle;
    const-string v1, "total_size"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 161
    .local v2, totalSize:J
    const-string v1, "avail_size"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 162
    .local v4, availSize:J
    const-string v1, "reserved_size"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 163
    .local v6, reservedSize:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateApproximate(JJJ)V

    goto :goto_0

    .line 167
    .end local v2           #totalSize:J
    .end local v4           #availSize:J
    .end local v6           #reservedSize:J
    .end local v22           #bundle:Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    .line 168
    .restart local v22       #bundle:Landroid/os/Bundle;
    const-string v1, "total_size"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 169
    .restart local v2       #totalSize:J
    const-string v1, "avail_size"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 170
    .restart local v4       #availSize:J
    const-string v1, "apps_used"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 171
    .local v13, appsUsed:J
    const-string v1, "downloads_size"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 172
    .local v15, downloadsSize:J
    const-string v1, "misc_size"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 173
    .local v17, miscSize:J
    const-string v1, "media_sizes"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v19

    .line 174
    .local v19, mediaSizes:[J
    const-string v1, "reserved_size"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 175
    .restart local v6       #reservedSize:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    move-wide v9, v2

    move-wide v11, v4

    move-wide/from16 v20, v6

    invoke-virtual/range {v8 .. v21}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateExact(JJJJJ[JJ)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
