.class public Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
.super Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
.source "PrivacySmsRecordListItem.java"


# instance fields
.field private _ID:I

.field private ac:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private date:J

.field private read:I

.field private sub_id:I

.field private subject:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "_ID"
    .parameter "name"
    .parameter "number"
    .parameter "date"
    .parameter "read"
    .parameter "type"
    .parameter "subject"
    .parameter "body"
    .parameter "sub_id"
    .parameter "ac"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;-><init>()V

    .line 18
    iput p1, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->_ID:I

    .line 19
    invoke-virtual {p0, p2}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->setRefName(Ljava/lang/String;)V

    .line 20
    if-eqz p3, :cond_0

    .line 21
    invoke-virtual {p0, p3}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->setNumber(Ljava/lang/String;)V

    .line 25
    :goto_0
    iput-wide p4, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->date:J

    .line 26
    iput p6, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->read:I

    .line 27
    iput p7, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->type:I

    .line 28
    if-eqz p8, :cond_1

    .line 29
    iput-object p8, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->subject:Ljava/lang/String;

    .line 33
    :goto_1
    if-eqz p9, :cond_2

    .line 34
    iput-object p9, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->body:Ljava/lang/String;

    .line 38
    :goto_2
    iput p10, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->sub_id:I

    .line 39
    iput-object p11, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->ac:Ljava/lang/String;

    .line 40
    return-void

    .line 23
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->setNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->subject:Ljava/lang/String;

    goto :goto_1

    .line 36
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->body:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public getAc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->date:J

    return-wide v0
.end method

.method public getRead()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->read:I

    return v0
.end method

.method public getSub_id()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->sub_id:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->type:I

    return v0
.end method

.method public get_ID()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->_ID:I

    return v0
.end method

.method public setAc(Ljava/lang/String;)V
    .locals 0
    .parameter "ac"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->ac:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->body:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->date:J

    .line 56
    return-void
.end method

.method public setRead(I)V
    .locals 0
    .parameter "read"

    .prologue
    .line 63
    iput p1, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->read:I

    .line 64
    return-void
.end method

.method public setSub_id(I)V
    .locals 0
    .parameter "sub_id"

    .prologue
    .line 95
    iput p1, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->sub_id:I

    .line 96
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->subject:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 71
    iput p1, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->type:I

    .line 72
    return-void
.end method

.method public set_ID(I)V
    .locals 0
    .parameter "_ID"

    .prologue
    .line 47
    iput p1, p0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->_ID:I

    .line 48
    return-void
.end method
