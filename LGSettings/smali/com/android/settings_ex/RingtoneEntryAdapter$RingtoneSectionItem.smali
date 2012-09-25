.class public Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneSectionItem;
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
    name = "RingtoneSectionItem"
.end annotation


# instance fields
.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneSectionItem;->title:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneSectionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSection()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
