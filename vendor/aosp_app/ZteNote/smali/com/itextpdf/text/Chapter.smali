.class public Lcom/itextpdf/text/Chapter;
.super Lcom/itextpdf/text/Section;
.source "Chapter.java"


# static fields
.field private static final serialVersionUID:J = 0x18dae9a4c867f2b1L


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/itextpdf/text/Section;-><init>(Lcom/itextpdf/text/Paragraph;I)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/Chapter;->numbers:Ljava/util/ArrayList;

    .line 82
    iget-object v0, p0, Lcom/itextpdf/text/Chapter;->numbers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iput-boolean v2, p0, Lcom/itextpdf/text/Chapter;->triggerNewPage:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Paragraph;I)V
    .locals 3
    .parameter "title"
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    .line 94
    invoke-direct {p0, p1, v2}, Lcom/itextpdf/text/Section;-><init>(Lcom/itextpdf/text/Paragraph;I)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/Chapter;->numbers:Ljava/util/ArrayList;

    .line 96
    iget-object v0, p0, Lcom/itextpdf/text/Chapter;->numbers:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iput-boolean v2, p0, Lcom/itextpdf/text/Chapter;->triggerNewPage:Z

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "title"
    .parameter "number"

    .prologue
    .line 107
    new-instance v0, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/Paragraph;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/text/Chapter;-><init>(Lcom/itextpdf/text/Paragraph;I)V

    .line 108
    return-void
.end method


# virtual methods
.method public isNestable()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 119
    const/16 v0, 0x10

    return v0
.end method
