.class final Lcom/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# instance fields
.field private synthetic a:Lcom/a/f;


# direct methods
.method private constructor <init>(Lcom/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/a/j;->a:Lcom/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/f;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/j;-><init>(Lcom/a/f;)V

    return-void
.end method


# virtual methods
.method public final onNmeaReceived(JLjava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x3e8

    const-string v0, "$GPGSA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/j;->a:Lcom/a/f;

    invoke-static {v0, p3}, Lcom/a/f;->a(Lcom/a/f;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    :goto_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    div-long/2addr v0, v4

    :cond_1
    iget-object v2, p0, Lcom/a/j;->a:Lcom/a/f;

    invoke-static {v2, v0, v1}, Lcom/a/f;->c(Lcom/a/f;J)J

    iget-object v0, p0, Lcom/a/j;->a:Lcom/a/f;

    invoke-static {v0, p3}, Lcom/a/f;->b(Lcom/a/f;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/a/f;->B()Lcom/a/k;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/a/f;->B()Lcom/a/k;

    :cond_2
    return-void

    :cond_3
    move-wide v0, p1

    goto :goto_0
.end method
