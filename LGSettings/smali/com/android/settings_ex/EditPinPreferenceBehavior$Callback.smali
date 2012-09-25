.class public interface abstract Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;
.super Ljava/lang/Object;
.source "EditPinPreferenceBehavior.java"

# interfaces
.implements Lcom/android/settings_ex/PreferenceVirtualDisabler$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/EditPinPreferenceBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract handleUserReasonablePinEntered(ILjava/lang/String;)I
.end method

.method public abstract onSetEnabled(Lcom/android/settings_ex/EditPinPreferenceBehavior;Z)V
.end method

.method public abstract onShowNotifyAndReturnStage(Lcom/android/settings_ex/EditPinPreferenceBehavior;II)V
.end method

.method public abstract onValidPinEntered(Lcom/android/settings_ex/EditPinPreferenceBehavior;ILjava/lang/String;Ljava/lang/String;)I
.end method
