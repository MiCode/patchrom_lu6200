.class Lcom/android/settings_ex/UserDictionarySettings$7;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/UserDictionarySettings;->deleteWord(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/UserDictionarySettings;

.field final synthetic val$word:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/UserDictionarySettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/UserDictionarySettings$7;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    iput-object p2, p0, Lcom/android/settings_ex/UserDictionarySettings$7;->val$word:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$7;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "word=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/UserDictionarySettings$7;->val$word:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$7;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080b89

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$7;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    #setter for: Lcom/android/settings_ex/UserDictionarySettings;->dig_status:I
    invoke-static {v0, v5}, Lcom/android/settings_ex/UserDictionarySettings;->access$202(Lcom/android/settings_ex/UserDictionarySettings;I)I

    return-void
.end method
