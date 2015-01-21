.class public Lcom/zte/heartyservice/common/datatype/DateInfo;
.super Ljava/lang/Object;
.source "DateInfo.java"


# instance fields
.field private day:I

.field private month:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/zte/heartyservice/common/datatype/DateInfo;->year:I

    .line 13
    iput p2, p0, Lcom/zte/heartyservice/common/datatype/DateInfo;->month:I

    .line 14
    iput p3, p0, Lcom/zte/heartyservice/common/datatype/DateInfo;->day:I

    .line 15
    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/DateInfo;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/DateInfo;->month:I

    return v0
.end method

.method public getMonthAndDay()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/DateInfo;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/DateInfo;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/DateInfo;->year:I

    return v0
.end method

.method public setDay(I)V
    .locals 0
    .parameter "day"

    .prologue
    .line 38
    iput p1, p0, Lcom/zte/heartyservice/common/datatype/DateInfo;->day:I

    .line 39
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .parameter "month"

    .prologue
    .line 30
    iput p1, p0, Lcom/zte/heartyservice/common/datatype/DateInfo;->month:I

    .line 31
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .parameter "year"

    .prologue
    .line 22
    iput p1, p0, Lcom/zte/heartyservice/common/datatype/DateInfo;->year:I

    .line 23
    return-void
.end method
