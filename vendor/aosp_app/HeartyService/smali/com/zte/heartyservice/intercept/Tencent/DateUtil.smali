.class public Lcom/zte/heartyservice/intercept/Tencent/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field private static final DATA_FORMAT_STR:Ljava/lang/String; = "yyyy-MM-dd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearTime(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;
    .locals 1
    .parameter "gc"

    .prologue
    .line 237
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 238
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 239
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 240
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 241
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 242
    return-object p0
.end method

.method public static compareByDateOfMonth(JJ)Z
    .locals 6
    .parameter "dateA"
    .parameter "dateB"

    .prologue
    .line 266
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 267
    .local v0, gc1:Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 269
    .local v1, gc2:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 270
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->clearTime(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 272
    invoke-virtual {v1, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 273
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->clearTime(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 275
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static compareByDateOfMonth(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 6
    .parameter "dateA"
    .parameter "dateB"

    .prologue
    .line 253
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 254
    .local v0, gc1:Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 256
    .local v1, gc2:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 257
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->clearTime(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 259
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 260
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->clearTime(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 262
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static compareByYear(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 5
    .parameter "dateA"
    .parameter "dateB"

    .prologue
    const/4 v2, 0x1

    .line 287
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 288
    .local v0, gc1:Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 289
    .local v1, gc2:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 290
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 291
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static fullTime(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;
    .locals 6
    .parameter "gc"

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0xd

    const/16 v3, 0xc

    const/16 v2, 0xb

    const/16 v1, 0xa

    .line 223
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 224
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 225
    invoke-virtual {p0, v3}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 226
    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    invoke-virtual {p0, v4, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 227
    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 228
    return-object p0
.end method

.method public static getAllDatebyClosingDay(I)Ljava/util/List;
    .locals 6
    .parameter "closing_day"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/GregorianCalendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {v4, p0}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->getPreviewClosingDay(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v3

    .line 127
    .local v3, start_date:Ljava/util/GregorianCalendar;
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {v4, p0}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->getNextClosingDay(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 129
    .local v1, end_date:Ljava/util/GregorianCalendar;
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 130
    .local v2, gc:Ljava/util/GregorianCalendar;
    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0x23

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .local v0, days:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/GregorianCalendar;>;"
    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #gc:Ljava/util/GregorianCalendar;
    check-cast v2, Ljava/util/GregorianCalendar;

    .line 133
    .restart local v2       #gc:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0

    .line 136
    :cond_0
    return-object v0
.end method

.method public static getDayInterval(Ljava/util/Date;Ljava/util/Date;)I
    .locals 6
    .parameter "targetDate"
    .parameter "sourceDate"

    .prologue
    .line 302
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 303
    .local v0, gc1:Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 305
    .local v1, gc2:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 306
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->clearTime(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 308
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 309
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->clearTime(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 310
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v2, v2

    return v2
.end method

.method public static getDaysByMonth(Ljava/util/Date;)I
    .locals 2
    .parameter "date"

    .prologue
    .line 200
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 201
    .local v0, gc:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 202
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    return v1
.end method

.method public static getMax(Ljava/util/Date;)J
    .locals 3
    .parameter "date"

    .prologue
    .line 187
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 188
    .local v0, gc:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 189
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->clearTime(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 190
    const/16 v1, 0xb

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 191
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getMin(Ljava/util/Date;)J
    .locals 3
    .parameter "date"

    .prologue
    .line 175
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 176
    .local v0, gc:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 177
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->clearTime(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getNextClosingDay(Ljava/util/Date;I)Ljava/util/Date;
    .locals 5
    .parameter "date"
    .parameter "closing_day"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 50
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 51
    .local v0, gc:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 53
    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 54
    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 55
    invoke-static {v0, p1}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->setDateToMonth(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 66
    :goto_0
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->clearTime(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 57
    :cond_0
    invoke-virtual {v0, v4, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 58
    invoke-virtual {v0, v3, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 59
    invoke-static {v0, p1}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->setDateToMonth(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0, v4, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 63
    invoke-virtual {v0, v3, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 64
    invoke-static {v0, p1}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->setDateToMonth(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNextClosingDay(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;
    .locals 6
    .parameter "date"
    .parameter "closing_day"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 98
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 99
    .local v0, gc:Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 101
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 102
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 103
    invoke-static {v0, p1}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->setDateToMonth(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 114
    :goto_0
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->clearTime(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v1

    return-object v1

    .line 105
    :cond_0
    invoke-virtual {v0, v4, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 106
    invoke-virtual {v0, v5, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 107
    invoke-static {v0, p1}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->setDateToMonth(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v0, v4, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 111
    invoke-virtual {v0, v5, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 112
    invoke-static {v0, p1}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->setDateToMonth(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPositionInDays(Ljava/util/List;Ljava/util/Date;)I
    .locals 4
    .parameter
    .parameter "the_day"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/Date;",
            ")I"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, dates:Ljava/util/List;,"Ljava/util/List<Ljava/util/Date;>;"
    const/4 v0, 0x0

    .line 148
    .local v0, count:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 149
    .local v1, date:Ljava/util/Date;
    invoke-virtual {p1, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v1           #date:Ljava/util/Date;
    :cond_1
    return v0
.end method

.method public static getPreviewClosingDay(Ljava/util/Date;I)Ljava/util/Date;
    .locals 4
    .parameter "date"
    .parameter "closing_day"

    .prologue
    .line 27
    const/4 v0, 0x5

    .line 28
    .local v0, DATE:I
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 29
    .local v1, gc:Ljava/util/GregorianCalendar;
    invoke-virtual {v1, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 31
    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 32
    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 33
    invoke-virtual {v1, v0, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 40
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->clearTime(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2

    .line 35
    :cond_1
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 36
    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 37
    invoke-static {v1, p1}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->setDateToMonth(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPreviewClosingDay(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;
    .locals 5
    .parameter "date"
    .parameter "closing_day"

    .prologue
    const/4 v4, 0x5

    .line 75
    const/4 v0, 0x5

    .line 76
    .local v0, DATE:I
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 77
    .local v1, gc:Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 79
    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 80
    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-le v2, p1, :cond_1

    .line 81
    invoke-virtual {v1, v0, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 88
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->clearTime(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v2

    return-object v2

    .line 83
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 84
    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 85
    invoke-static {v1, p1}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->setDateToMonth(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v1

    goto :goto_0
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/String;
    .locals 8
    .parameter "date"

    .prologue
    .line 316
    const-string v4, ""

    .line 317
    .local v4, time_text:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, p0

    .line 318
    .local v2, milliseconds:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_1

    .line 319
    move-wide v0, p0

    .line 320
    .local v0, dateTaken:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    .line 321
    const-string v5, "yyyy-MM-dd"

    invoke-static {v5, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 339
    .end local v0           #dateTaken:J
    :cond_0
    :goto_0
    return-object v4

    .line 324
    :cond_1
    const-wide/32 v5, 0xea60

    cmp-long v5, v2, v5

    if-gtz v5, :cond_2

    .line 325
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0234

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 326
    :cond_2
    const-wide/32 v5, 0x36ee80

    cmp-long v5, v2, v5

    if-gtz v5, :cond_3

    .line 327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v6, 0xea60

    div-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0237

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 328
    :cond_3
    const-wide/32 v5, 0x5265c00

    cmp-long v5, v2, v5

    if-gtz v5, :cond_4

    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v6, 0x36ee80

    div-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0236

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 330
    :cond_4
    const-wide/32 v5, 0x240c8400

    cmp-long v5, v2, v5

    if-gez v5, :cond_5

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v6, 0x5265c00

    div-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0235

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 332
    :cond_5
    const-wide/32 v5, 0x240c8400

    cmp-long v5, v2, v5

    if-ltz v5, :cond_0

    .line 333
    move-wide v0, p0

    .line 334
    .restart local v0       #dateTaken:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    .line 335
    const-string v5, "yyyy-MM-dd"

    invoke-static {v5, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static getRelativeTimeSpanString2(Ljava/util/Date;)Ljava/lang/String;
    .locals 9
    .parameter "date"

    .prologue
    .line 344
    const-string v4, ""

    .line 345
    .local v4, time_text:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v2, v5, v7

    .line 346
    .local v2, milliseconds:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_1

    .line 347
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 348
    .local v0, dateTaken:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    .line 349
    const-string v5, "yyyy-MM-dd"

    invoke-static {v5, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 364
    .end local v0           #dateTaken:J
    :cond_0
    :goto_0
    return-object v4

    .line 352
    :cond_1
    const-wide/32 v5, 0xea60

    cmp-long v5, v2, v5

    if-gtz v5, :cond_2

    .line 353
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0234

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 354
    :cond_2
    const-wide/32 v5, 0x36ee80

    cmp-long v5, v2, v5

    if-gtz v5, :cond_3

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v6, 0xea60

    div-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0237

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 356
    :cond_3
    const-wide/32 v5, 0x5265c00

    cmp-long v5, v2, v5

    if-gtz v5, :cond_4

    .line 357
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v6, 0x36ee80

    div-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0236

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 358
    :cond_4
    const-wide/32 v5, 0xf731400

    cmp-long v5, v2, v5

    if-gez v5, :cond_5

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v6, 0x5265c00

    div-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0235

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 361
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v6, 0x5265c00

    div-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0238

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static isDuringDays(Ljava/util/List;Ljava/util/Date;)Z
    .locals 8
    .parameter
    .parameter "the_day"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/Date;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, dates:Ljava/util/List;,"Ljava/util/List<Ljava/util/Date;>;"
    const/4 v7, 0x0

    .line 163
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 164
    .local v4, start_date:J
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 165
    .local v2, end_date:J
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 166
    .local v0, current_date:J
    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public static isTheSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 7
    .parameter "dataA"
    .parameter "dataB"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 368
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 369
    .local v0, c1:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 370
    .local v1, c2:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 371
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 372
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static setDateToMonth(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;
    .locals 2
    .parameter "gc"
    .parameter "closing_day"

    .prologue
    const/4 v1, 0x5

    .line 208
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    .line 209
    .local v0, maximum_day:I
    if-lt v0, p1, :cond_0

    .line 210
    invoke-virtual {p0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 214
    :goto_0
    return-object p0

    .line 212
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_0
.end method
