.class Lcom/android/settings_ex/UserDictionarySettings$5;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings_ex/UserDictionarySettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/UserDictionarySettings$5;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$5;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/UserDictionarySettings;->dig_status:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/UserDictionarySettings;->access$202(Lcom/android/settings_ex/UserDictionarySettings;I)I

    .line 540
    return-void
.end method
