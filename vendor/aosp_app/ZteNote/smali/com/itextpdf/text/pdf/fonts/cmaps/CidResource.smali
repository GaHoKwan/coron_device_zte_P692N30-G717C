.class public Lcom/itextpdf/text/pdf/fonts/cmaps/CidResource;
.super Ljava/lang/Object;
.source "CidResource.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PRTokeniser;
    .locals 6
    .parameter "location"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com/itextpdf/text/pdf/fonts/cmaps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, fullName:Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/text/pdf/BaseFont;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 62
    .local v1, inp:Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 63
    new-instance v2, Ljava/io/IOException;

    const-string v3, "the.cmap.1.was.not.found"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_0
    new-instance v2, Lcom/itextpdf/text/pdf/PRTokeniser;

    new-instance v3, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    return-object v2
.end method
