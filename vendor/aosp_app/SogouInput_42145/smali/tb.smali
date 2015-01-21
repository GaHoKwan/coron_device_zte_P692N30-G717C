.class public Ltb;
.super Lta;
.source "SourceFile"

# interfaces
.implements Lazt;


# direct methods
.method constructor <init>(Lsy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lta;-><init>(Lsy;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a()Lbaa;
    .locals 7

    .prologue
    .line 44
    invoke-virtual {p0}, Ltb;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 47
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v3, :cond_1

    .line 48
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "root-layout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lbaa;

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    if-nez v0, :cond_2

    .line 54
    invoke-virtual {p0}, Ltb;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "root-layout"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lbaa;

    .line 55
    const/16 v1, 0x140

    invoke-interface {v0, v1}, Lbaa;->d(I)V

    .line 56
    const/16 v1, 0x1e0

    invoke-interface {v0, v1}, Lbaa;->c(I)V

    .line 57
    invoke-virtual {p0, v0}, Ltb;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 59
    :cond_2
    return-object v0
.end method
