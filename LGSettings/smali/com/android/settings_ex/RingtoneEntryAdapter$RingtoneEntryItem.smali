.class public Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneEntryItem;
.super Ljava/lang/Object;
.source "RingtoneEntryAdapter.java"

# interfaces
.implements Lcom/android/settings_ex/RingtoneItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RingtoneEntryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RingtoneEntryItem"
.end annotation


# instance fields
.field public final title:Ljava/lang/String;

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "uri"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneEntryItem;->title:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneEntryItem;->uri:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public isSection()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method
