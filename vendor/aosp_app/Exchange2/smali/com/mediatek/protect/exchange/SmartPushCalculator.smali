.class public Lcom/mediatek/protect/exchange/SmartPushCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/protect/exchange/SmartPushCalculator$1;,
        Lcom/mediatek/protect/exchange/SmartPushCalculator$a;,
        Lcom/mediatek/protect/exchange/SmartPushCalculator$b;
    }
.end annotation


# static fields
.field private static b:Lcom/mediatek/protect/exchange/SmartPushCalculator;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/protect/exchange/SmartPushCalculator$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/mediatek/protect/exchange/SmartPushCalculator;

    invoke-direct {v0}, Lcom/mediatek/protect/exchange/SmartPushCalculator;-><init>()V

    sput-object v0, Lcom/mediatek/protect/exchange/SmartPushCalculator;->b:Lcom/mediatek/protect/exchange/SmartPushCalculator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator;->a:Ljava/util/ArrayList;

    .line 235
    return-void
.end method

.method public static getCalculator()Lcom/mediatek/protect/exchange/SmartPushCalculator;
    .locals 1

    .prologue
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 31
    sget-object v0, Lcom/mediatek/protect/exchange/SmartPushCalculator;->b:Lcom/mediatek/protect/exchange/SmartPushCalculator;

    return-object v0
.end method

.method public static getScaleNum()I
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0xc

    return v0
.end method


# virtual methods
.method public getResult(J)[I
    .locals 4
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;

    .line 75
    iget-wide v2, v0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->a:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 76
    iget-object v0, v0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->e:[I

    .line 79
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startCalculate(Landroid/content/Context;Ljava/util/HashMap;[Landroid/database/Cursor;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;[",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    if-nez p1, :cond_1

    .line 62
    :cond_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 54
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 55
    const-string v1, "SmartPushService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accountId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,dayCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;

    invoke-direct {v1, p1, v4, v5, v0}, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;-><init>(Landroid/content/Context;JI)V

    .line 58
    iget-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v0, v2, 0x1

    aget-object v2, p3, v2

    invoke-static {v1, v2}, Lcom/mediatek/protect/exchange/SmartPushCalculator$b;->a(Lcom/mediatek/protect/exchange/SmartPushCalculator$b;Landroid/database/Cursor;)V

    move v2, v0

    .line 61
    goto :goto_0
.end method
