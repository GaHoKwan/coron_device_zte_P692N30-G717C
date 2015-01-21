.class Lams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrl;


# instance fields
.field final synthetic a:Lamr;


# direct methods
.method constructor <init>(Lamr;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lams;->a:Lamr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lams;->a:Lamr;

    invoke-static {v0}, Lamr;->a(Lamr;)Lamv;

    move-result-object v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lamv;->a(III)V

    .line 93
    iget-object v0, p0, Lams;->a:Lamr;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lamr;->a(Lamr;D)D

    .line 94
    return-void
.end method

.method public a(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 81
    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    iget-object v2, p0, Lams;->a:Lamr;

    invoke-static {v2}, Lamr;->a(Lamr;)D

    move-result-wide v2

    const-wide v4, 0x3fa999999999999aL

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 82
    iget-object v0, p0, Lams;->a:Lamr;

    invoke-static {v0}, Lamr;->a(Lamr;)Lamv;

    move-result-object v0

    const/16 v1, 0x67

    invoke-interface {v0, v1, p2, p1}, Lamv;->a(III)V

    .line 83
    iget-object v0, p0, Lams;->a:Lamr;

    int-to-double v1, p1

    int-to-double v3, p2

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lamr;->a(Lamr;D)D

    .line 85
    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lams;->a:Lamr;

    invoke-static {v0}, Lamr;->a(Lamr;)Lamv;

    move-result-object v0

    const/16 v1, 0x68

    invoke-interface {v0, v1, p2, p1}, Lamv;->a(III)V

    .line 89
    return-void
.end method
