.class Lagn;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lage;

.field final synthetic a:Lhk;


# direct methods
.method constructor <init>(Lage;Lhk;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1538
    iput-object p1, p0, Lagn;->a:Lage;

    iput-object p2, p0, Lagn;->a:Lhk;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1540
    new-instance v0, Lavo;

    iget-object v1, p0, Lagn;->a:Lage;

    invoke-static {v1}, Lage;->a(Lage;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lagn;->a:Lhk;

    invoke-direct {v0, v1, v2}, Lavo;-><init>(Landroid/content/Context;Lhk;)V

    .line 1541
    return-void
.end method
