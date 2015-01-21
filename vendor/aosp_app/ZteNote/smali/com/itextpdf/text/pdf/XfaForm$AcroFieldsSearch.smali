.class public Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;
.super Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;
.source "XfaForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/XfaForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AcroFieldsSearch"
.end annotation


# instance fields
.field private acroShort2LongName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 890
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;-><init>()V

    .line 891
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;->inverseSearch:Ljava/util/HashMap;

    .line 892
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;->acroShort2LongName:Ljava/util/HashMap;

    .line 893
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 894
    .local v3, string:Ljava/lang/String;
    move-object v1, v3

    .line 895
    .local v1, itemName:Ljava/lang/String;
    invoke-static {v1}, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 896
    .local v2, itemShort:Ljava/lang/String;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;->acroShort2LongName:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    iget-object v4, p0, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;->inverseSearch:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;->splitParts(Ljava/lang/String;)Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;->inverseSearchAdd(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/XfaForm$Stack2;Ljava/lang/String;)V

    goto :goto_0

    .line 899
    .end local v1           #itemName:Ljava/lang/String;
    .end local v2           #itemShort:Ljava/lang/String;
    .end local v3           #string:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAcroShort2LongName()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 907
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;->acroShort2LongName:Ljava/util/HashMap;

    return-object v0
.end method

.method public setAcroShort2LongName(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 916
    .local p1, acroShort2LongName:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;->acroShort2LongName:Ljava/util/HashMap;

    .line 917
    return-void
.end method
