.class Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$6;
.super Ljava/lang/Object;
.source "ConnectivitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

.field final synthetic val$bEnable:Z

.field final synthetic val$nSoftwareType:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$6;->this$1:Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

    iput-boolean p2, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$6;->val$bEnable:Z

    iput p3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$6;->val$nSoftwareType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$6;->this$1:Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

    iget-boolean v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$6;->val$bEnable:Z

    iget v2, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$6;->val$nSoftwareType:I

    #calls: Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->SendWIFIConnectionStatus(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->access$500(Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;ZI)V

    .line 569
    return-void
.end method
