.class public Lcom/itextpdf/text/pdf/XfaForm$Stack2;
.super Ljava/util/ArrayList;
.source "XfaForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/XfaForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stack2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6768f67767003b6cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 466
    .local p0, this:Lcom/itextpdf/text/pdf/XfaForm$Stack2;,"Lcom/itextpdf/text/pdf/XfaForm$Stack2<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public empty()Z
    .locals 1

    .prologue
    .line 506
    .local p0, this:Lcom/itextpdf/text/pdf/XfaForm$Stack2;,"Lcom/itextpdf/text/pdf/XfaForm$Stack2<TT;>;"
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, this:Lcom/itextpdf/text/pdf/XfaForm$Stack2;,"Lcom/itextpdf/text/pdf/XfaForm$Stack2<TT;>;"
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, this:Lcom/itextpdf/text/pdf/XfaForm$Stack2;,"Lcom/itextpdf/text/pdf/XfaForm$Stack2<TT;>;"
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 485
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 487
    .local v0, ret:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->remove(I)Ljava/lang/Object;

    .line 488
    return-object v0
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, this:Lcom/itextpdf/text/pdf/XfaForm$Stack2;,"Lcom/itextpdf/text/pdf/XfaForm$Stack2<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->add(Ljava/lang/Object;)Z

    .line 498
    return-object p1
.end method
