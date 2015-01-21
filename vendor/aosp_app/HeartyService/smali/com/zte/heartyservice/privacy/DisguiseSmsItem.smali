.class public Lcom/zte/heartyservice/privacy/DisguiseSmsItem;
.super Lcom/zte/heartyservice/common/datatype/CommonItem;
.source "DisguiseSmsItem.java"


# instance fields
.field public body:Ljava/lang/String;

.field public date:J

.field public sub_id:I

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 2
    .parameter "id"
    .parameter "name"
    .parameter "number"
    .parameter "body"
    .parameter "date"
    .parameter "type"
    .parameter "sub_id"

    .prologue
    .line 13
    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/zte/heartyservice/common/datatype/CommonItem;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-wide p5, p0, Lcom/zte/heartyservice/privacy/DisguiseSmsItem;->date:J

    .line 15
    iput-object p4, p0, Lcom/zte/heartyservice/privacy/DisguiseSmsItem;->body:Ljava/lang/String;

    .line 16
    iput p7, p0, Lcom/zte/heartyservice/privacy/DisguiseSmsItem;->type:I

    .line 17
    iput p8, p0, Lcom/zte/heartyservice/privacy/DisguiseSmsItem;->sub_id:I

    .line 18
    return-void
.end method
