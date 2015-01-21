.class final Lcom/a/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:S

.field protected b:I

.field protected c:Lcom/a/ax;

.field protected d:Lcom/a/au;

.field protected e:Lcom/a/d;

.field protected f:Lcom/a/ba;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v1, p0, Lcom/a/av;->a:S

    iput v1, p0, Lcom/a/av;->b:I

    iput-object v0, p0, Lcom/a/av;->c:Lcom/a/ax;

    iput-object v0, p0, Lcom/a/av;->d:Lcom/a/au;

    iput-object v0, p0, Lcom/a/av;->e:Lcom/a/d;

    iput-object v0, p0, Lcom/a/av;->f:Lcom/a/ba;

    return-void
.end method
