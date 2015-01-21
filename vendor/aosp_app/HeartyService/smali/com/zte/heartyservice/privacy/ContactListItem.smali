.class public Lcom/zte/heartyservice/privacy/ContactListItem;
.super Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
.source "ContactListItem.java"


# instance fields
.field private _id:I

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "_id"
    .parameter "name"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;-><init>()V

    .line 8
    iput p1, p0, Lcom/zte/heartyservice/privacy/ContactListItem;->_id:I

    .line 9
    invoke-virtual {p0, p2}, Lcom/zte/heartyservice/privacy/ContactListItem;->setRefName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p3}, Lcom/zte/heartyservice/privacy/ContactListItem;->setNumber(Ljava/lang/String;)V

    .line 11
    iput p4, p0, Lcom/zte/heartyservice/privacy/ContactListItem;->type:I

    .line 12
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/zte/heartyservice/privacy/ContactListItem;->type:I

    return v0
.end method

.method public get_id()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/zte/heartyservice/privacy/ContactListItem;->_id:I

    return v0
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 27
    iput p1, p0, Lcom/zte/heartyservice/privacy/ContactListItem;->type:I

    .line 28
    return-void
.end method

.method public set_id(I)V
    .locals 0
    .parameter "_id"

    .prologue
    .line 19
    iput p1, p0, Lcom/zte/heartyservice/privacy/ContactListItem;->_id:I

    .line 20
    return-void
.end method
