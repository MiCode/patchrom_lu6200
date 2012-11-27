.class final Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;
.super Ljava/lang/Object;
.source "CompatibilityMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/settings/compatmode/CompatibilityMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackageListItemCache"
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public checkBox:Landroid/widget/CheckBox;

.field public iconView:Landroid/widget/ImageView;

.field public nameView:Landroid/widget/TextView;

.field public packageName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
