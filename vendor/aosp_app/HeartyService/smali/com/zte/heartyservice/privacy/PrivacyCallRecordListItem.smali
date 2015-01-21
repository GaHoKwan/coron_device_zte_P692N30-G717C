.class public Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
.super Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
.source "PrivacyCallRecordListItem.java"


# instance fields
.field private _ID:I

.field private ac:Ljava/lang/String;

.field private date:J

.field private duration:I

.field private is_new:I

.field private mode_id:I

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JIIIILjava/lang/String;)V
    .locals 1
    .parameter "_ID"
    .parameter "name"
    .parameter "number"
    .parameter "date"
    .parameter "duration"
    .parameter "type"
    .parameter "is_new"
    .parameter "mode_id"
    .parameter "ac"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;-><init>()V

    .line 16
    iput p1, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->_ID:I

    .line 17
    invoke-virtual {p0, p2}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->setRefName(Ljava/lang/String;)V

    .line 18
    if-eqz p3, :cond_0

    .line 19
    invoke-virtual {p0, p3}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->setNumber(Ljava/lang/String;)V

    .line 23
    :goto_0
    iput-wide p4, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->date:J

    .line 24
    iput p6, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->duration:I

    .line 25
    iput p7, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->type:I

    .line 26
    iput p8, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->is_new:I

    .line 27
    iput p9, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->mode_id:I

    .line 28
    iput-object p10, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->ac:Ljava/lang/String;

    .line 29
    return-void

    .line 21
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->setNumber(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->date:J

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->duration:I

    return v0
.end method

.method public getIs_new()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->is_new:I

    return v0
.end method

.method public getMode_id()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->mode_id:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->type:I

    return v0
.end method

.method public get_ID()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->_ID:I

    return v0
.end method

.method public setAc(Ljava/lang/String;)V
    .locals 0
    .parameter "ac"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->ac:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->date:J

    .line 45
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 52
    iput p1, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->duration:I

    .line 53
    return-void
.end method

.method public setIs_new(I)V
    .locals 0
    .parameter "is_new"

    .prologue
    .line 68
    iput p1, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->is_new:I

    .line 69
    return-void
.end method

.method public setMode_id(I)V
    .locals 0
    .parameter "mode_id"

    .prologue
    .line 76
    iput p1, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->mode_id:I

    .line 77
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 60
    iput p1, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->type:I

    .line 61
    return-void
.end method

.method public set_ID(I)V
    .locals 0
    .parameter "_ID"

    .prologue
    .line 36
    iput p1, p0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->_ID:I

    .line 37
    return-void
.end method
