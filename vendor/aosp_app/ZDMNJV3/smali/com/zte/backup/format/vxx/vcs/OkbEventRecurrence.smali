.class public Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;
.super Ljava/lang/Object;
.source "OkbEventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence$InvalidFormatException;
    }
.end annotation


# static fields
.field public static final DAILY:I = 0x4

.field public static final FR:I = 0x200000

.field public static final HOURLY:I = 0x3

.field public static final MINUTELY:I = 0x2

.field public static final MO:I = 0x20000

.field public static final MONTHLY:I = 0x6

.field public static final SA:I = 0x400000

.field public static final SECONDLY:I = 0x1

.field public static final SU:I = 0x10000

.field public static final TH:I = 0x100000

.field public static final TU:I = 0x40000

.field public static final WE:I = 0x80000

.field public static final WEEKLY:I = 0x5

.field public static final YEARLY:I = 0x7


# instance fields
.field public byday:[I

.field public bydayCount:I

.field public bydayNum:[I

.field public byhour:[I

.field public byhourCount:I

.field public byminute:[I

.field public byminuteCount:I

.field public bymonth:[I

.field public bymonthCount:I

.field public bymonthday:[I

.field public bymonthdayCount:I

.field public bysecond:[I

.field public bysecondCount:I

.field public bysetpos:[I

.field public bysetposCount:I

.field public byweekno:[I

.field public byweeknoCount:I

.field public byyearday:[I

.field public byyeardayCount:I

.field public count:I

.field public freq:I

.field public interval:I

.field public startDate:Landroid/text/format/Time;

.field public until:Ljava/lang/String;

.field public wkst:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/high16 v0, 0x2

    iput v0, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->wkst:I

    .line 21
    return-void
.end method

.method private appendByDay(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 252
    iget v0, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bydayCount:I

    .line 253
    .local v0, count:I
    if-lez v0, :cond_0

    .line 254
    const-string v2, ";BYDAY="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    add-int/lit8 v0, v0, -0x1

    .line 256
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 260
    invoke-direct {p0, p1, v0}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 262
    .end local v1           #i:I
    :cond_0
    return-void

    .line 257
    .restart local v1       #i:I
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 258
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private appendByDay(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter "s"
    .parameter "i"

    .prologue
    .line 181
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bydayNum:[I

    aget v0, v2, p2

    .line 182
    .local v0, n:I
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->byday:[I

    aget v2, v2, p2

    invoke-static {v2}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, str:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    return-void
.end method

.method private appendBysetpos(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 206
    const-string v0, ";BYSETPOS="

    iget v1, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bysetposCount:I

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bysetpos:[I

    invoke-static {p1, v0, v1, v2}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 207
    return-void
.end method

.method private appendCount(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 224
    iget v0, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->count:I

    if-eqz v0, :cond_0

    .line 225
    const-string v0, ";COUNT="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v0, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->count:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    :cond_0
    return-void
.end method

.method private appendFrequency(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 265
    const-string v0, "FREQ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget v0, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->freq:I

    packed-switch v0, :pswitch_data_0

    .line 291
    :goto_0
    return-void

    .line 268
    :pswitch_0
    const-string v0, "SECONDLY"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 271
    :pswitch_1
    const-string v0, "MINUTELY"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :pswitch_2
    const-string v0, "HOURLY"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 277
    :pswitch_3
    const-string v0, "DAILY"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 280
    :pswitch_4
    const-string v0, "WEEKLY"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 283
    :pswitch_5
    const-string v0, "MONTHLY"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 286
    :pswitch_6
    const-string v0, "YEARLY"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private appendInterval(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 217
    iget v0, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->interval:I

    if-eqz v0, :cond_0

    .line 218
    const-string v0, ";INTERVAL="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget v0, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->interval:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    :cond_0
    return-void
.end method

.method private static appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V
    .locals 2
    .parameter "s"
    .parameter "label"
    .parameter "count"
    .parameter "values"

    .prologue
    .line 169
    if-lez p2, :cond_0

    .line 170
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    add-int/lit8 p2, p2, -0x1

    .line 172
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 176
    aget v1, p3, p2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .end local v0           #i:I
    :cond_0
    return-void

    .line 173
    .restart local v0       #i:I
    :cond_1
    aget v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private appendSpecifiers(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 238
    const-string v0, ";BYSECOND="

    iget v1, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bysecondCount:I

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bysecond:[I

    invoke-static {p1, v0, v1, v2}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 239
    const-string v0, ";BYMINUTE="

    iget v1, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->byminuteCount:I

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->byminute:[I

    invoke-static {p1, v0, v1, v2}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 240
    const-string v0, ";BYSECOND="

    iget v1, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->byhourCount:I

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->byhour:[I

    invoke-static {p1, v0, v1, v2}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 243
    invoke-direct {p0, p1}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendByDay(Ljava/lang/StringBuilder;)V

    .line 245
    const-string v0, ";BYMONTHDAY="

    iget v1, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bymonthdayCount:I

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bymonthday:[I

    invoke-static {p1, v0, v1, v2}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 246
    const-string v0, ";BYYEARDAY="

    iget v1, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->byyeardayCount:I

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->byyearday:[I

    invoke-static {p1, v0, v1, v2}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 247
    const-string v0, ";BYWEEKNO="

    iget v1, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->byweeknoCount:I

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->byweekno:[I

    invoke-static {p1, v0, v1, v2}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 248
    const-string v0, ";BYMONTH="

    iget v1, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bymonthCount:I

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bymonth:[I

    invoke-static {p1, v0, v1, v2}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 249
    return-void
.end method

.method private appendUntil(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->until:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const-string v0, ";UNTIL="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_0
    return-void
.end method

.method private appendWkst(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 210
    iget v0, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->wkst:I

    if-eqz v0, :cond_0

    .line 211
    const-string v0, ";WKST="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget v0, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->wkst:I

    invoke-static {v0}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_0
    return-void
.end method

.method private static day2String(I)Ljava/lang/String;
    .locals 3
    .parameter "day"

    .prologue
    .line 130
    sparse-switch p0, :sswitch_data_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad day argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :sswitch_0
    const-string v0, "SU"

    .line 144
    :goto_0
    return-object v0

    .line 134
    :sswitch_1
    const-string v0, "MO"

    goto :goto_0

    .line 136
    :sswitch_2
    const-string v0, "TU"

    goto :goto_0

    .line 138
    :sswitch_3
    const-string v0, "WE"

    goto :goto_0

    .line 140
    :sswitch_4
    const-string v0, "TH"

    goto :goto_0

    .line 142
    :sswitch_5
    const-string v0, "FR"

    goto :goto_0

    .line 144
    :sswitch_6
    const-string v0, "SA"

    goto :goto_0

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static day2TimeDay(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 97
    sparse-switch p0, :sswitch_data_0

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad day of week: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :sswitch_0
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 101
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 105
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 107
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 109
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 111
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static string2day(Ljava/lang/String;)I
    .locals 1
    .parameter "day"

    .prologue
    .line 151
    const-string v0, "SU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/high16 v0, 0x1

    .line 165
    :goto_0
    return v0

    .line 153
    :cond_0
    const-string v0, "MO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const/high16 v0, 0x2

    goto :goto_0

    .line 155
    :cond_1
    const-string v0, "TU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const/high16 v0, 0x4

    goto :goto_0

    .line 157
    :cond_2
    const-string v0, "WE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    const/high16 v0, 0x8

    goto :goto_0

    .line 159
    :cond_3
    const-string v0, "TH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    const/high16 v0, 0x10

    goto :goto_0

    .line 161
    :cond_4
    const-string v0, "FR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    const/high16 v0, 0x20

    goto :goto_0

    .line 163
    :cond_5
    const-string v0, "SA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 164
    const/high16 v0, 0x40

    goto :goto_0

    .line 165
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static timeDay2Day(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 76
    packed-switch p0, :pswitch_data_0

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad day of week: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :pswitch_0
    const/high16 v0, 0x1

    .line 90
    :goto_0
    return v0

    .line 80
    :pswitch_1
    const/high16 v0, 0x2

    goto :goto_0

    .line 82
    :pswitch_2
    const/high16 v0, 0x4

    goto :goto_0

    .line 84
    :pswitch_3
    const/high16 v0, 0x8

    goto :goto_0

    .line 86
    :pswitch_4
    const/high16 v0, 0x10

    goto :goto_0

    .line 88
    :pswitch_5
    const/high16 v0, 0x20

    goto :goto_0

    .line 90
    :pswitch_6
    const/high16 v0, 0x40

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public native parse(Ljava/lang/String;)V
.end method

.method public setStartDate(Landroid/text/format/Time;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->startDate:Landroid/text/format/Time;

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v0, s:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendFrequency(Ljava/lang/StringBuilder;)V

    .line 195
    invoke-direct {p0, v0}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendUntil(Ljava/lang/StringBuilder;)V

    .line 196
    invoke-direct {p0, v0}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendCount(Ljava/lang/StringBuilder;)V

    .line 197
    invoke-direct {p0, v0}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendInterval(Ljava/lang/StringBuilder;)V

    .line 198
    invoke-direct {p0, v0}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendWkst(Ljava/lang/StringBuilder;)V

    .line 199
    invoke-direct {p0, v0}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendSpecifiers(Ljava/lang/StringBuilder;)V

    .line 200
    invoke-direct {p0, v0}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->appendBysetpos(Ljava/lang/StringBuilder;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
