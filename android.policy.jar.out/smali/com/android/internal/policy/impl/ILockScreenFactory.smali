.class public interface abstract Lcom/android/internal/policy/impl/ILockScreenFactory;
.super Ljava/lang/Object;
.source "ILockScreenFactory.java"


# virtual methods
.method public abstract createAccountUnlockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract createLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract createPasswordUnlockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract createPatternUnlockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;ILandroid/content/Context;)Landroid/view/View;
.end method

.method public abstract createPouchLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getVersionNumber()I
.end method

.method public abstract isHardwareAccelerated()Z
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDestory()V
.end method

.method public abstract onKeyguardDone()V
.end method
