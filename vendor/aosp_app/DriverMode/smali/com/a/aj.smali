.class public final Lcom/a/aj;
.super Ljava/lang/Object;


# instance fields
.field public a:D

.field public b:D

.field public c:F

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/a/aj;->a:D

    iput-wide v0, p0, Lcom/a/aj;->b:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/aj;->c:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/a/aj;->d:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/a/aj;->d:J

    return-wide v0
.end method
