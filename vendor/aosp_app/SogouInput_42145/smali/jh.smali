.class Ljh;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljg;


# direct methods
.method constructor <init>(Ljg;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Ljh;->a:Ljg;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Ljh;->a:Ljg;

    iget-object v0, v0, Ljg;->a:Ljf;

    invoke-static {v0}, Ljf;->h(Ljf;)V

    .line 507
    iget-object v0, p0, Ljh;->a:Ljg;

    iget-object v0, v0, Ljg;->a:Ljf;

    const-string v1, "refreshing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Ljf;->a(Ljf;Ljava/lang/String;)V

    .line 508
    return-void
.end method
