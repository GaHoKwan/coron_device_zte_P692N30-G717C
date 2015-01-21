.class public Lrt;
.super Ljava/util/EventObject;
.source "SourceFile"


# instance fields
.field private a:I

.field final synthetic a:Lrr;


# direct methods
.method public constructor <init>(Lrr;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1399
    iput-object p1, p0, Lrt;->a:Lrr;

    .line 1400
    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 1402
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lrt;->a:Lrr;

    invoke-static {v0}, Lrr;->a(Lrr;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 1409
    iget-object v0, p0, Lrt;->a:Lrr;

    invoke-static {v0, p1}, Lrr;->a(Lrr;I)I

    .line 1410
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 1417
    iput p1, p0, Lrt;->a:I

    .line 1418
    return-void
.end method
