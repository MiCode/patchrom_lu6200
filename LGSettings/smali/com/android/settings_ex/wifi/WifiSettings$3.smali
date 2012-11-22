.class Lcom/android/settings_ex/wifi/WifiSettings$3;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$3;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$3;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$3;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->showConfigUi(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$400(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    .line 819
    return-void
.end method
