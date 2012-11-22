.class Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$5;
.super Ljava/lang/Object;
.source "DataEnabledSettingSKT.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->createCustomViewDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$5;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$5;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;

    const v1, 0x7f080879

    const/4 v2, 0x0

    #calls: Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->showAlertDialog(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->access$200(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;IZ)V

    .line 130
    return-void
.end method
