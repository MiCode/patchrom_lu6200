.class Lcom/android/internal/policy/impl/LockScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "LockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 728
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$QueryHandler;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    .line 729
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 730
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 737
    packed-switch p1, :pswitch_data_0

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 740
    :pswitch_0
    if-eqz p3, :cond_0

    .line 744
    const/4 v0, -0x1

    .line 745
    .local v0, missedcount:I
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 746
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 747
    if-ltz v0, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$QueryHandler;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->setMissedCallCount(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;I)V

    goto :goto_0

    .line 737
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 755
    return-void
.end method
