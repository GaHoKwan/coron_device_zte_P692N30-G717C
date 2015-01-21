.class public Lcom/itextpdf/text/Header;
.super Lcom/itextpdf/text/Meta;
.source "Header.java"


# instance fields
.field private name:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "content"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/text/Meta;-><init>(ILjava/lang/String;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/Header;->name:Ljava/lang/StringBuffer;

    .line 78
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/itextpdf/text/Header;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
