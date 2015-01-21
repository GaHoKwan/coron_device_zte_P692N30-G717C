.class public Lhm;
.super Lhk;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lhn;Lhk;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 375
    invoke-direct {p0, p2}, Lhk;-><init>(Lhk;)V

    .line 376
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhm;->a:Ljava/lang/ref/WeakReference;

    .line 378
    return-void
.end method


# virtual methods
.method public a()Lhn;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lhm;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhn;

    return-object v0
.end method

.method public a(Lhn;)V
    .locals 1
    .parameter

    .prologue
    .line 381
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhm;->a:Ljava/lang/ref/WeakReference;

    .line 383
    return-void
.end method
