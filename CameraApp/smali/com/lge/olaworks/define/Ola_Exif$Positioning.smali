.class public Lcom/lge/olaworks/define/Ola_Exif$Positioning;
.super Ljava/lang/Object;
.source "Ola_Exif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/olaworks/define/Ola_Exif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Positioning"
.end annotation


# static fields
.field public static final CENTERED:I = 0x1

.field public static final COSITED:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/lge/olaworks/define/Ola_Exif;


# direct methods
.method public constructor <init>(Lcom/lge/olaworks/define/Ola_Exif;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lge/olaworks/define/Ola_Exif$Positioning;->this$0:Lcom/lge/olaworks/define/Ola_Exif;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
