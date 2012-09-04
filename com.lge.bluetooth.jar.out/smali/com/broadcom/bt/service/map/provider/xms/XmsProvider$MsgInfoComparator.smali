.class Lcom/broadcom/bt/service/map/provider/xms/XmsProvider$MsgInfoComparator;
.super Ljava/lang/Object;
.source "XmsProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/broadcom/bt/service/map/MessageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider$MsgInfoComparator;->this$0:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/MessageInfo;)I
    .locals 2
    .parameter "m1"
    .parameter "m2"

    .prologue
    .line 198
    iget-object v0, p1, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    iget-object v1, p2, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    check-cast p1, Lcom/broadcom/bt/service/map/MessageInfo;

    .end local p1
    check-cast p2, Lcom/broadcom/bt/service/map/MessageInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider$MsgInfoComparator;->compare(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/MessageInfo;)I

    move-result v0

    return v0
.end method
