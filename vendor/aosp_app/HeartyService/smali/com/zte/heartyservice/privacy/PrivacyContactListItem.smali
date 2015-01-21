.class public Lcom/zte/heartyservice/privacy/PrivacyContactListItem;
.super Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
.source "PrivacyContactListItem.java"


# instance fields
.field private _ID:I

.field private ac:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "_ID"
    .parameter "name"
    .parameter "number"
    .parameter "ac"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;-><init>()V

    .line 10
    iput p1, p0, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;->_ID:I

    .line 11
    invoke-virtual {p0, p2}, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;->setRefName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p3}, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;->setNumber(Ljava/lang/String;)V

    .line 13
    iput-object p4, p0, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;->ac:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getAc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public get_ID()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;->_ID:I

    return v0
.end method

.method public setAc(Ljava/lang/String;)V
    .locals 0
    .parameter "ac"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;->ac:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public set_ID(I)V
    .locals 0
    .parameter "_ID"

    .prologue
    .line 21
    iput p1, p0, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;->_ID:I

    .line 22
    return-void
.end method
