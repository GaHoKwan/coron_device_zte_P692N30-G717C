.class public Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;
.super Lcom/zte/heartyservice/common/datatype/CommonItem;
.source "DisguiseCalllogItem.java"


# instance fields
.field public date:J

.field public duration:I

.field public mode_id:I

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IJII)V
    .locals 2
    .parameter "id"
    .parameter "name"
    .parameter "number"
    .parameter "duration"
    .parameter "date"
    .parameter "type"
    .parameter "mode_id"

    .prologue
    .line 13
    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/zte/heartyservice/common/datatype/CommonItem;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-wide p5, p0, Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;->date:J

    .line 15
    iput p4, p0, Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;->duration:I

    .line 16
    iput p7, p0, Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;->type:I

    .line 17
    iput p8, p0, Lcom/zte/heartyservice/privacy/DisguiseCalllogItem;->mode_id:I

    .line 18
    return-void
.end method
