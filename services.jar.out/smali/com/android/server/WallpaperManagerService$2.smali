.class Lcom/android/server/WallpaperManagerService$2;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$2;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 190
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v0

    .line 191
    .local v0, drmType:I
    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/16 v2, 0x3000

    if-gt v0, v2, :cond_0

    .line 193
    :try_start_0
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$2;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v1

    .line 194
    .local v1, session:Lcom/lge/lgdrm/DrmContentSession;
    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    const-string v2, "WallpaperService"

    const-string v3, "mDrmTask : Expired. Notify all"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$2;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/WallpaperManagerService;->mDrmJob:Z
    invoke-static {v2, v3}, Lcom/android/server/WallpaperManagerService;->access$202(Lcom/android/server/WallpaperManagerService;Z)Z

    .line 197
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$2;->this$0:Lcom/android/server/WallpaperManagerService;

    #calls: Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V
    invoke-static {v2}, Lcom/android/server/WallpaperManagerService;->access$000(Lcom/android/server/WallpaperManagerService;)V

    .line 198
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$2;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$2;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    .line 200
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$2;->this$0:Lcom/android/server/WallpaperManagerService;

    #calls: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V
    invoke-static {v2}, Lcom/android/server/WallpaperManagerService;->access$100(Lcom/android/server/WallpaperManagerService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v1           #session:Lcom/lge/lgdrm/DrmContentSession;
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v2

    goto :goto_0
.end method
