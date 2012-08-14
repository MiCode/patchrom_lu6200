.class Lcom/android/internal/app/RingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/RingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 136
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    #setter for: Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I
    invoke-static {v0, p2}, Lcom/android/internal/app/RingtonePickerActivity;->access$002(Lcom/android/internal/app/RingtonePickerActivity;I)I

    .line 139
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    #setter for: Lcom/android/internal/app/RingtonePickerActivity;->mSelected:Z
    invoke-static {v0, v1}, Lcom/android/internal/app/RingtonePickerActivity;->access$102(Lcom/android/internal/app/RingtonePickerActivity;Z)Z

    .line 140
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    #setter for: Lcom/android/internal/app/RingtonePickerActivity;->mDrmRingtone:Z
    invoke-static {v0, v1}, Lcom/android/internal/app/RingtonePickerActivity;->access$202(Lcom/android/internal/app/RingtonePickerActivity;Z)Z

    .line 144
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V
    invoke-static {v0, p2, v1}, Lcom/android/internal/app/RingtonePickerActivity;->access$300(Lcom/android/internal/app/RingtonePickerActivity;II)V

    .line 145
    return-void
.end method
