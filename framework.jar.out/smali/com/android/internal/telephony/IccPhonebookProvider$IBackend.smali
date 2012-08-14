.class interface abstract Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;
.super Ljava/lang/Object;
.source "IccPhonebookProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhonebookProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IBackend"
.end annotation


# virtual methods
.method public abstract deleteEntry(Landroid/content/Context;I)I
.end method

.method public abstract deleteGroup(Landroid/content/Context;I)I
.end method

.method public abstract insertEntry(Landroid/content/Context;ILandroid/content/ContentValues;)I
.end method

.method public abstract insertGroup(Landroid/content/Context;Landroid/content/ContentValues;)I
.end method

.method public abstract readEntry(Landroid/content/Context;I)Landroid/database/Cursor;
.end method

.method public abstract readGroup(Landroid/content/Context;I)Landroid/database/Cursor;
.end method

.method public abstract readInfo(Landroid/content/Context;)Landroid/database/Cursor;
.end method

.method public abstract updateEntry(Landroid/content/Context;ILandroid/content/ContentValues;)I
.end method

.method public abstract updateGroup(Landroid/content/Context;ILandroid/content/ContentValues;)I
.end method
