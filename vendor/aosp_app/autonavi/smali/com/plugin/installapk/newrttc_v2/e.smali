.class public Lcom/plugin/installapk/newrttc_v2/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/plugin/installapk/newrttc_v2/e;

.field private static b:Z


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/plugin/installapk/newrttc_v2/e;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/e;->c:Z

    return-void
.end method

.method public static a()Lcom/plugin/installapk/newrttc_v2/e;
    .locals 1

    sget-object v0, Lcom/plugin/installapk/newrttc_v2/e;->a:Lcom/plugin/installapk/newrttc_v2/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/plugin/installapk/newrttc_v2/e;->a:Lcom/plugin/installapk/newrttc_v2/e;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/plugin/installapk/newrttc_v2/e;

    invoke-direct {v0}, Lcom/plugin/installapk/newrttc_v2/e;-><init>()V

    sput-object v0, Lcom/plugin/installapk/newrttc_v2/e;->a:Lcom/plugin/installapk/newrttc_v2/e;

    sget-object v0, Lcom/plugin/installapk/newrttc_v2/e;->a:Lcom/plugin/installapk/newrttc_v2/e;

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    sput-boolean p1, Lcom/plugin/installapk/newrttc_v2/e;->b:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/plugin/installapk/newrttc_v2/e;->c:Z

    return-void
.end method

.method public b()Z
    .locals 1

    sget-boolean v0, Lcom/plugin/installapk/newrttc_v2/e;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/e;->c:Z

    return v0
.end method
