.class Laki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lajq;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lajq;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1516
    iput-object p1, p0, Laki;->a:Lajq;

    iput-object p2, p0, Laki;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1518
    iget-object v0, p0, Laki;->a:Lajq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lajq;->a(Lajq;Z)Z

    .line 1519
    iget-object v1, p0, Laki;->a:Lajq;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lajq;->a(Lajq;Ljava/lang/String;)Ljava/lang/String;

    .line 1520
    iget-object v0, p0, Laki;->a:Lajq;

    iget-object v1, p0, Laki;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lajq;->b(Lajq;Ljava/lang/String;)Ljava/lang/String;

    .line 1521
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1522
    new-instance v1, Lakx;

    iget-object v2, p0, Laki;->a:Lajq;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lakx;-><init>(Lajq;Lajr;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1523
    return-void
.end method
