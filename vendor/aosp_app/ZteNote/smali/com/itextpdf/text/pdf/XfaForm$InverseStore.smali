.class public Lcom/itextpdf/text/pdf/XfaForm$InverseStore;
.super Ljava/lang/Object;
.source "XfaForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/XfaForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InverseStore"
.end annotation


# instance fields
.field protected follow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected part:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->part:Ljava/util/ArrayList;

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->follow:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDefaultName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 434
    move-object v1, p0

    .line 436
    .local v1, store:Lcom/itextpdf/text/pdf/XfaForm$InverseStore;
    :goto_0
    iget-object v2, v1, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->follow:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 437
    .local v0, obj:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 438
    check-cast v0, Ljava/lang/String;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0

    .restart local v0       #obj:Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    .line 439
    check-cast v1, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;

    .line 440
    goto :goto_0
.end method

.method public isSimilar(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 452
    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 453
    .local v0, idx:I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 454
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->part:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->part:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    const/4 v2, 0x1

    .line 458
    :goto_1
    return v2

    .line 454
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 458
    goto :goto_1
.end method
