.class public Laqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 4000
    iput-object p1, p0, Laqd;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lary;Lary;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 4002
    iget-wide v0, p1, Lary;->a:D

    iget-wide v2, p2, Lary;->a:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 4003
    const/4 v0, -0x1

    .line 4007
    :goto_0
    return v0

    .line 4004
    :cond_0
    iget-wide v0, p1, Lary;->a:D

    iget-wide v2, p2, Lary;->a:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 4005
    const/4 v0, 0x0

    goto :goto_0

    .line 4007
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4000
    check-cast p1, Lary;

    check-cast p2, Lary;

    invoke-virtual {p0, p1, p2}, Laqd;->a(Lary;Lary;)I

    move-result v0

    return v0
.end method
