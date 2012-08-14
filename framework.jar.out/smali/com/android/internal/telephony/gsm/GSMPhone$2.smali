.class Lcom/android/internal/telephony/gsm/GSMPhone$2;
.super Landroid/content/BroadcastReceiver;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 2751
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 2756
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2758
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2759
    const-string/jumbo v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2760
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2761
    invoke-static {p1}, Lcom/android/internal/telephony/ProfileSettings;->init(Landroid/content/Context;)V

    .line 2762
    invoke-static {p1}, Lcom/android/internal/telephony/lgeAutoProfiling;->setContext(Landroid/content/Context;)V

    .line 2763
    invoke-static {}, Lcom/android/internal/telephony/ProfileSettings;->getInstance()Lcom/android/internal/telephony/ProfileSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ProfileSettings;->isAutoProfileEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2765
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v3, "/etc/telephony.xml"

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->StartProfiling(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2786
    .end local v1           #stateExtra:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2767
    .restart local v1       #stateExtra:Ljava/lang/String;
    :cond_1
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2769
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/ProfileSettings;->init(Landroid/content/Context;)V

    .line 2770
    invoke-static {p1}, Lcom/android/internal/telephony/lgeAutoProfiling;->setContext(Landroid/content/Context;)V

    .line 2771
    invoke-static {}, Lcom/android/internal/telephony/ProfileSettings;->getInstance()Lcom/android/internal/telephony/ProfileSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ProfileSettings;->isAutoProfileEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2773
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v3, "/etc/telephony.xml"

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->StartProfiling(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2776
    :cond_3
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2777
    const-string/jumbo v2, "seperate_processing_sms_uicc"

    invoke-static {p1, v2}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2778
    const-string v2, "TEL-FRW"

    const-string v3, "[SMS-FRW] NO SIM - Empty SIM DB"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #getter for: Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$100(Lcom/android/internal/telephony/gsm/GSMPhone;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #getter for: Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$200(Lcom/android/internal/telephony/gsm/GSMPhone;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->ICC_URI:Landroid/net/Uri;

    invoke-static {v2, v3, v4, v5, v5}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2780
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #getter for: Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$300(Lcom/android/internal/telephony/gsm/GSMPhone;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #getter for: Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$400(Lcom/android/internal/telephony/gsm/GSMPhone;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://sms/concatpart"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v3, v4, v5, v5}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
