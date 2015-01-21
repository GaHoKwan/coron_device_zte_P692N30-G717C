.class public final Lcom/a/aq;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/a/aq;

.field private static b:Ljava/text/DecimalFormat;

.field private static c:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/a/aq;->a:Lcom/a/aq;

    sput-object v0, Lcom/a/aq;->b:Ljava/text/DecimalFormat;

    sput-object v0, Lcom/a/aq;->c:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/a/aq;->b:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/aq;->b:Ljava/text/DecimalFormat;

    :cond_0
    sget-object v0, Lcom/a/aq;->b:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    sget-object v0, Lcom/a/aq;->b:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
