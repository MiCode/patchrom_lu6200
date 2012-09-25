.class public Lcom/broadcom/bt/app/opp/contact/StarredContactsGroupSelector;
.super Ljava/lang/Object;
.source "StarredContactsGroupSelector.java"

# interfaces
.implements Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;


# static fields
.field public static final GROUP_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "content://com.broadcom.bt.app.opp/groups/2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/app/opp/contact/StarredContactsGroupSelector;->GROUP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContactSelector()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "starred=1"

    return-object v0
.end method

.method public getGroupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/broadcom/bt/app/opp/contact/StarredContactsGroupSelector;->GROUP_URI:Landroid/net/Uri;

    return-object v0
.end method
