.class public Lrf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lrf;


# instance fields
.field private a:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrf;->a:Ljava/util/ArrayList;

    .line 1608
    return-void
.end method

.method public static a()Lrf;
    .locals 1

    .prologue
    .line 1601
    sget-object v0, Lrf;->a:Lrf;

    if-nez v0, :cond_0

    .line 1602
    new-instance v0, Lrf;

    invoke-direct {v0}, Lrf;-><init>()V

    sput-object v0, Lrf;->a:Lrf;

    .line 1604
    :cond_0
    sget-object v0, Lrf;->a:Lrf;

    return-object v0
.end method


# virtual methods
.method a(Lsg;)V
    .locals 3
    .parameter

    .prologue
    .line 1613
    iget-object v0, p0, Lrf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 1614
    iget v0, v0, Lsg;->a:I

    iget v2, p1, Lsg;->a:I

    if-ne v0, v2, :cond_0

    .line 1626
    :goto_0
    return-void

    .line 1619
    :cond_1
    iget-object v0, p0, Lrf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 1630
    iget-object v0, p0, Lrf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 1631
    iget-object v2, v0, Lsg;->a:Lsj;

    if-eqz v2, :cond_0

    .line 1633
    iget-object v2, v0, Lsg;->a:Lsj;

    invoke-interface {v2, v0}, Lsj;->a(Lsg;)Z

    goto :goto_0

    .line 1636
    :cond_1
    iget-object v0, p0, Lrf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1637
    const/4 v0, 0x1

    return v0
.end method
