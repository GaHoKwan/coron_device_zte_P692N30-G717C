.class public abstract Lqg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lqn;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lqn;

    invoke-direct {v0}, Lqn;-><init>()V

    iput-object v0, p0, Lqg;->a:Lqn;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/sohu/inputmethod/gesture/Gesture;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lqg;->a:Lqn;

    invoke-virtual {v0, p1}, Lqn;->a(Lcom/sohu/inputmethod/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lqg;->a:Lqn;

    invoke-virtual {v0, p1}, Lqn;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lqg;->a:Lqn;

    invoke-virtual {v0}, Lqn;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/sohu/inputmethod/gesture/Gesture;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lqg;->a:Lqn;

    invoke-virtual {v0, p1, p2}, Lqn;->a(Ljava/lang/String;Lcom/sohu/inputmethod/gesture/Gesture;)V

    .line 69
    return-void
.end method

.method public abstract a()Z
.end method

.method public b(Ljava/lang/String;Lcom/sohu/inputmethod/gesture/Gesture;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lqg;->a:Lqn;

    invoke-virtual {v0, p1, p2}, Lqn;->b(Ljava/lang/String;Lcom/sohu/inputmethod/gesture/Gesture;)V

    .line 73
    return-void
.end method

.method public abstract b()Z
.end method
