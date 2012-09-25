.class public Lcom/broadcom/bt/app/opp/contact/ContactGroupSelectorManager;
.super Ljava/lang/Object;
.source "ContactGroupSelectorManager.java"


# static fields
.field public static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/app/opp/contact/ContactGroupSelectorManager;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroupSelector(I)Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;
    .locals 1
    .parameter "groupType"

    .prologue
    .line 40
    packed-switch p0, :pswitch_data_0

    .line 48
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    new-instance v0, Lcom/broadcom/bt/app/opp/contact/AllContactsGroupSelector;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/contact/AllContactsGroupSelector;-><init>()V

    goto :goto_0

    .line 44
    :pswitch_1
    new-instance v0, Lcom/broadcom/bt/app/opp/contact/ContactsWithPhoneNumberGroupSelector;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/contact/ContactsWithPhoneNumberGroupSelector;-><init>()V

    goto :goto_0

    .line 46
    :pswitch_2
    new-instance v0, Lcom/broadcom/bt/app/opp/contact/StarredContactsGroupSelector;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/contact/StarredContactsGroupSelector;-><init>()V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
