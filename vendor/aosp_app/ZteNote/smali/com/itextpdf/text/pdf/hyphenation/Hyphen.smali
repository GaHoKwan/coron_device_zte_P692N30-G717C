.class public Lcom/itextpdf/text/pdf/hyphenation/Hyphen;
.super Ljava/lang/Object;
.source "Hyphen.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6a63985d54150fb7L


# instance fields
.field public noBreak:Ljava/lang/String;

.field public postBreak:Ljava/lang/String;

.field public preBreak:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pre"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->preBreak:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->postBreak:Ljava/lang/String;

    .line 50
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "pre"
    .parameter "no"
    .parameter "post"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->preBreak:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->postBreak:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->postBreak:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->preBreak:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->preBreak:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "-"

    .line 66
    :goto_0
    return-object v1

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, res:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->preBreak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, "}{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->postBreak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v1, "}{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
