.class Lcom/mediatek/protect/exchange/SmartPushCalculator$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/protect/exchange/SmartPushCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;
    }
.end annotation


# instance fields
.field a:J

.field b:[Lcom/mediatek/protect/exchange/SmartPushCalculator$a;

.field c:Landroid/content/Context;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;",
            ">;>;"
        }
    .end annotation
.end field

.field e:[I


# direct methods
.method constructor <init>(Landroid/content/Context;JI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->d:Ljava/util/ArrayList;

    .line 108
    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->e:[I

    .line 128
    iput-object p1, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->c:Landroid/content/Context;

    .line 129
    iput-wide p2, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->a:J

    .line 130
    new-array v0, p4, [Lcom/mediatek/protect/exchange/SmartPushCalculator$a;

    iput-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->b:[Lcom/mediatek/protect/exchange/SmartPushCalculator$a;

    .line 131
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 132
    iget-object v1, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->d:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 14
    .parameter

    .prologue
    const-wide/32 v12, 0x5265c00

    const/16 v11, 0xc

    const/4 v8, 0x0

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 144
    div-long/2addr v0, v12

    .line 146
    mul-long v9, v0, v12

    .line 147
    if-eqz p1, :cond_2

    .line 148
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 155
    sub-long v3, v9, v1

    .line 157
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    .line 158
    const/4 v0, -0x1

    .line 166
    :goto_1
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->b:[Lcom/mediatek/protect/exchange/SmartPushCalculator$a;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 170
    add-int/lit8 v3, v0, 0x1

    const v4, 0x5265c00

    mul-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v3, v9, v3

    .line 172
    sub-long v3, v1, v3

    .line 175
    iget-object v1, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/ArrayList;

    new-instance v0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;-><init>(Lcom/mediatek/protect/exchange/SmartPushCalculator$b;IJJ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_1
    div-long/2addr v3, v12

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_1

    .line 185
    :cond_2
    new-array v4, v11, [F

    move v1, v8

    .line 188
    :goto_2
    iget-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->b:[Lcom/mediatek/protect/exchange/SmartPushCalculator$a;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->b:[Lcom/mediatek/protect/exchange/SmartPushCalculator$a;

    new-instance v2, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;-><init>(Lcom/mediatek/protect/exchange/SmartPushCalculator$1;)V

    aput-object v2, v0, v1

    .line 190
    iget-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->b:[Lcom/mediatek/protect/exchange/SmartPushCalculator$a;

    aget-object v2, v0, v1

    iget-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a(Lcom/mediatek/protect/exchange/SmartPushCalculator$a;Ljava/util/ArrayList;)V

    .line 191
    const-string v0, "SmartPushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Table["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] startCalculate..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->b:[Lcom/mediatek/protect/exchange/SmartPushCalculator$a;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a(Lcom/mediatek/protect/exchange/SmartPushCalculator$a;)V

    move v0, v8

    .line 193
    :goto_3
    if-ge v0, v11, :cond_3

    .line 194
    aget v2, v4, v0

    iget-object v3, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->b:[Lcom/mediatek/protect/exchange/SmartPushCalculator$a;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->b(Lcom/mediatek/protect/exchange/SmartPushCalculator$a;)[F

    move-result-object v3

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v4, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 188
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 199
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    array-length v2, v4

    move v0, v8

    :goto_4
    if-ge v0, v2, :cond_5

    aget v3, v4, v0

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 203
    :cond_5
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v0, "SmartPushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chances: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 210
    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    .line 215
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move v3, v8

    move v1, v8

    .line 216
    :goto_5
    const/4 v2, 0x3

    if-ge v3, v2, :cond_9

    move v2, v1

    .line 217
    :goto_6
    add-int/lit8 v1, v3, 0x1

    mul-int/lit8 v1, v1, 0x4

    if-ge v2, v1, :cond_8

    move v1, v8

    .line 218
    :goto_7
    if-ge v1, v11, :cond_6

    .line 219
    aget v6, v4, v1

    aget v7, v0, v2

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 220
    iget-object v6, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->e:[I

    aput v3, v6, v1

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    const-string v6, "SmartPushService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "final mResults["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "]:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    .line 218
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 216
    :cond_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    goto :goto_5

    .line 229
    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/mediatek/protect/exchange/SmartPushCalculator$b;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->a(Landroid/database/Cursor;)V

    return-void
.end method
