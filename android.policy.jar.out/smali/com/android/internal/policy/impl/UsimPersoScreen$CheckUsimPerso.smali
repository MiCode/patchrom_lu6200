.class abstract Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso;
.super Ljava/lang/Thread;
.source "UsimPersoScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UsimPersoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckUsimPerso"
.end annotation


# static fields
.field private static final LOG_CHECKUSIMPERSO:Ljava/lang/String; = "CheckUsimPerso"


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/UsimPersoScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "pin"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 242
    iput-object p2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso;->mPin:Ljava/lang/String;

    .line 243
    return-void
.end method


# virtual methods
.method abstract onUsimPersoChangedResponse(Z)V
.end method

.method public run()V
    .locals 6

    .prologue
    .line 252
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso;->mPin:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, InputKey:Ljava/lang/String;
    const-string v3, "UsimPersoScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUsimPersoChangedResponse InputKey= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$100(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usim_perso_control_key"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 256
    .local v2, matched:Z
    const-string v3, "UsimPersoScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUsimPersoChangedResponse  matched == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    new-instance v4, Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso$1;

    invoke-direct {v4, p0, v2}, Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso$1;-><init>(Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso;Z)V

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0           #InputKey:Ljava/lang/String;
    .end local v2           #matched:Z
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    new-instance v4, Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso$2;-><init>(Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
