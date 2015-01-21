.class public Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
.super Ljava/lang/Object;
.source "SMSContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/utils/SMSContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMSInfo"
.end annotation


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mBody:Ljava/lang/String;

.field public mCreateData:J

.field public mData:J

.field public mDateSent:J

.field public mSubscription:I

.field public mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;II)V
    .locals 2
    .parameter "address"
    .parameter "data"
    .parameter "date_sent"
    .parameter "body"
    .parameter "type"
    .parameter "subscription"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mAddress:Ljava/lang/String;

    .line 67
    iput-wide p2, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mData:J

    .line 68
    iput-object p6, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mBody:Ljava/lang/String;

    .line 69
    iput p7, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mType:I

    .line 70
    iput p8, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mSubscription:I

    .line 71
    iput-wide p4, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mDateSent:J

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mCreateData:J

    .line 73
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 85
    if-ne p0, p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    instance-of v2, p1, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 90
    check-cast v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;

    .line 91
    .local v0, other:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    iget-object v2, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mAddress:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mBody:Ljava/lang/String;

    iget-object v3, v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    iget-wide v2, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mDateSent:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-wide v2, v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mDateSent:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 94
    iget-wide v2, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mDateSent:J

    iget-wide v4, v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mDateSent:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 104
    .end local v0           #other:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 98
    .restart local v0       #other:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    :cond_3
    iget-wide v2, p0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mData:J

    iget-wide v4, v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mData:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    goto :goto_0
.end method
