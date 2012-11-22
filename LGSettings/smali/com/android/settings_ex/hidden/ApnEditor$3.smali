.class Lcom/android/settings_ex/hidden/ApnEditor$3;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/hidden/ApnEditor;->deleteApn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/hidden/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/hidden/ApnEditor;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/hidden/ApnEditor$3;->this$0:Lcom/android/settings_ex/hidden/ApnEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/hidden/ApnEditor$3;->this$0:Lcom/android/settings_ex/hidden/ApnEditor;

    invoke-virtual {v0}, Lcom/android/settings_ex/hidden/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/hidden/ApnEditor$3;->this$0:Lcom/android/settings_ex/hidden/ApnEditor;

    #getter for: Lcom/android/settings_ex/hidden/ApnEditor;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/settings_ex/hidden/ApnEditor;->access$100(Lcom/android/settings_ex/hidden/ApnEditor;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/hidden/ApnEditor$3;->this$0:Lcom/android/settings_ex/hidden/ApnEditor;

    invoke-virtual {v0}, Lcom/android/settings_ex/hidden/ApnEditor;->finish()V

    return-void
.end method
