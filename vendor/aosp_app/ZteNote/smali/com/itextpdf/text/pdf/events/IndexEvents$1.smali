.class Lcom/itextpdf/text/pdf/events/IndexEvents$1;
.super Ljava/lang/Object;
.source "IndexEvents.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/events/IndexEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itextpdf/text/pdf/events/IndexEvents;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/events/IndexEvents;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$1;->this$0:Lcom/itextpdf/text/pdf/events/IndexEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;)I
    .locals 3
    .parameter "en1"
    .parameter "en2"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, rt:I
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getIn1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getIn1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getIn1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getIn1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getIn2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getIn2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getIn2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getIn2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getIn3()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getIn3()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getIn3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getIn3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 201
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    check-cast p1, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;

    .end local p1
    check-cast p2, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/pdf/events/IndexEvents$1;->compare(Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;)I

    move-result v0

    return v0
.end method
