.class Lcom/itextpdf/text/pdf/AcroFields$InstHit;
.super Ljava/lang/Object;
.source "AcroFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/AcroFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstHit"
.end annotation


# instance fields
.field hits:Lcom/itextpdf/text/pdf/IntHashtable;


# direct methods
.method public constructor <init>([I)V
    .locals 4
    .parameter "inst"

    .prologue
    .line 2083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2084
    if-nez p1, :cond_1

    .line 2089
    :cond_0
    return-void

    .line 2086
    :cond_1
    new-instance v1, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->hits:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 2087
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2088
    iget-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->hits:Lcom/itextpdf/text/pdf/IntHashtable;

    aget v2, p1, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 2087
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isHit(I)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->hits:Lcom/itextpdf/text/pdf/IntHashtable;

    if-nez v0, :cond_0

    .line 2093
    const/4 v0, 0x1

    .line 2094
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->hits:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v0

    goto :goto_0
.end method
