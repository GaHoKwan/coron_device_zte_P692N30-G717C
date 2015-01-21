.class public Lcom/zte/heartyservice/privacy/SmsRecordListItem;
.super Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
.source "SmsRecordListItem.java"


# instance fields
.field private _id:I

.field private body:Ljava/lang/String;

.field private date:J

.field private sub_id:I

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 0
    .parameter "_id"
    .parameter "name"
    .parameter "number"
    .parameter "body"
    .parameter "date"
    .parameter "type"
    .parameter "sub_id"

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;-><init>()V

    .line 11
    iput p1, p0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->_id:I

    .line 12
    invoke-virtual {p0, p2}, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->setRefName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p3}, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->setNumber(Ljava/lang/String;)V

    .line 14
    iput-object p4, p0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->body:Ljava/lang/String;

    .line 15
    iput-wide p5, p0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->date:J

    .line 16
    iput p7, p0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->type:I

    .line 17
    iput p8, p0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->sub_id:I

    .line 18
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->date:J

    return-wide v0
.end method

.method public getSub_id()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->sub_id:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->type:I

    return v0
.end method

.method public get_id()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->_id:I

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->body:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->date:J

    .line 42
    return-void
.end method

.method public setSub_id(I)V
    .locals 0
    .parameter "sub_id"

    .prologue
    .line 57
    iput p1, p0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->sub_id:I

    .line 58
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 49
    iput p1, p0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->type:I

    .line 50
    return-void
.end method

.method public set_id(I)V
    .locals 0
    .parameter "_id"

    .prologue
    .line 25
    iput p1, p0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->_id:I

    .line 26
    return-void
.end method
