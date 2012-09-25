.class Lcom/android/settings_ex/lge/RadioButtonPreference$1;
.super Ljava/lang/Object;
.source "RadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lge/RadioButtonPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lge/RadioButtonPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lge/RadioButtonPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings_ex/lge/RadioButtonPreference$1;->this$0:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/settings_ex/lge/RadioButtonPreference$1;->this$0:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/lge/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 49
    .local v0, newValue:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/lge/RadioButtonPreference$1;->this$0:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #calls: Lcom/android/settings_ex/lge/RadioButtonPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/lge/RadioButtonPreference;->access$000(Lcom/android/settings_ex/lge/RadioButtonPreference;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    :cond_0
    return-void

    .line 47
    .end local v0           #newValue:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
