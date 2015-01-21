.class final Ljava/util/concurrent/ForkJoinPool$InvokeAll;
.super Ljava/util/concurrent/RecursiveAction;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InvokeAll"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/RecursiveAction;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6dd53b884cc40927L


# instance fields
.field final tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1610
    .local p0, this:Ljava/util/concurrent/ForkJoinPool$InvokeAll;,"Ljava/util/concurrent/ForkJoinPool$InvokeAll<TT;>;"
    .local p1, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/concurrent/ForkJoinTask<TT;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/RecursiveAction;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAll;->tasks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public compute()V
    .locals 1

    .prologue
    .line 1612
    .local p0, this:Ljava/util/concurrent/ForkJoinPool$InvokeAll;,"Ljava/util/concurrent/ForkJoinPool$InvokeAll<TT;>;"
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAll;->tasks:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/concurrent/ForkJoinPool$InvokeAll;->invokeAll(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    :goto_0
    return-void

    .line 1613
    :catch_0
    move-exception v0

    goto :goto_0
.end method
