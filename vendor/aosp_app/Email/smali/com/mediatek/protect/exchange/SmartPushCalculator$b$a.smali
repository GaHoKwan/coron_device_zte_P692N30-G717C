.class Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/protect/exchange/SmartPushCalculator$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mediatek/protect/exchange/SmartPushCalculator$b;

.field private b:I

.field private c:J

.field private d:J


# direct methods
.method constructor <init>(Lcom/mediatek/protect/exchange/SmartPushCalculator$b;IJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;->a:Lcom/mediatek/protect/exchange/SmartPushCalculator$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p2, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;->b:I

    .line 118
    iput-wide p3, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;->c:J

    .line 119
    iput-wide p5, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;->d:J

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;)J
    .locals 2
    .parameter

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;->c:J

    return-wide v0
.end method

.method static synthetic b(Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;)I
    .locals 1
    .parameter

    .prologue
    .line 111
    iget v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;->b:I

    return v0
.end method

.method static synthetic c(Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;)J
    .locals 2
    .parameter

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;->d:J

    return-wide v0
.end method
