.class public Lcom/zte/heartyservice/privacy/CallRecordListItem;
.super Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
.source "CallRecordListItem.java"


# instance fields
.field private _id:I

.field private date:J

.field private duration:I

.field private mode_id:I

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IJII)V
    .locals 0
    .parameter "_id"
    .parameter "name"
    .parameter "number"
    .parameter "duration"
    .parameter "date"
    .parameter "type"
    .parameter "mode_id"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;-><init>()V

    .line 12
    iput p1, p0, Lcom/zte/heartyservice/privacy/CallRecordListItem;->_id:I

    .line 13
    invoke-virtual {p0, p2}, Lcom/zte/heartyservice/privacy/CallRecordListItem;->setRefName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p3}, Lcom/zte/heartyservice/privacy/CallRecordListItem;->setNumber(Ljava/lang/String;)V

    .line 15
    iput p4, p0, Lcom/zte/heartyservice/privacy/CallRecordListItem;->duration:I

    .line 16
    iput-wide p5, p0, Lcom/zte/heartyservice/privacy/CallRecordListItem;->date:J

    .line 17
    iput p7, p0, Lcom/zte/heartyservice/privacy/CallRecordListItem;->type:I

    .line 18
    iput p8, p0, Lcom/zte/heartyservice/privacy/CallRecordListItem;->mode_id:I

    .line 19
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/zte/heartyservice/privacy/CallRecordListItem;->date:J

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/zte/heartyservice/privacy/CallRecordListItem;->duration:I

    return v0
.end method

.method public getMode_id()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/zte/heartyservice/privacy/CallRecordListItem;->mode_id:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/zte/heartyservice/privacy/CallRecordListItem;->type:I

    return v0
.end method

.method public get_id()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/zte/heartyservice/privacy/CallRecordListItem;->_id:I

    return v0
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/zte/heartyservice/privacy/CallRecordListItem;->date:J

    .line 43
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 34
    iput p1, p0, Lcom/zte/heartyservice/privacy/CallRecordListItem;->duration:I

    .line 35
    return-void
.end method

.method public setMode_id(I)V
    .locals 0
    .parameter "mode_id"

    .prologue
    .line 58
    iput p1, p0, Lcom/zte/heartyservice/privacy/CallRecordListItem;->mode_id:I

    .line 59
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 50
    iput p1, p0, Lcom/zte/heartyservice/privacy/CallRecordListItem;->type:I

    .line 51
    return-void
.end method

.method public set_id(I)V
    .locals 0
    .parameter "_id"

    .prologue
    .line 26
    iput p1, p0, Lcom/zte/heartyservice/privacy/CallRecordListItem;->_id:I

    .line 27
    return-void
.end method
