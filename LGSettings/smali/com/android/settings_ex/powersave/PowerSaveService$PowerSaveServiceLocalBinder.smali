.class public Lcom/android/settings_ex/powersave/PowerSaveService$PowerSaveServiceLocalBinder;
.super Landroid/os/Binder;
.source "PowerSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/powersave/PowerSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PowerSaveServiceLocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersave/PowerSaveService;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/powersave/PowerSaveService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/powersave/PowerSaveService$PowerSaveServiceLocalBinder;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
