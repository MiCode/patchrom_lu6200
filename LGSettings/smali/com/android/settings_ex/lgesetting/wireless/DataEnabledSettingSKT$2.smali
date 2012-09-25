.class Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$2;
.super Ljava/lang/Object;
.source "DataEnabledSettingSKT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 96
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;

    invoke-virtual {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->finish()V

    .line 100
    return-void
.end method
