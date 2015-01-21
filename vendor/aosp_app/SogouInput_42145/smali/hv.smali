.class Lhv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhr;


# direct methods
.method constructor <init>(Lhr;)V
    .locals 0
    .parameter

    .prologue
    .line 1673
    iput-object p1, p0, Lhv;->a:Lhr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1676
    iget-object v0, p0, Lhv;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Lrr;

    move-result-object v0

    invoke-virtual {v0}, Lrr;->g()I

    .line 1677
    return-void
.end method
