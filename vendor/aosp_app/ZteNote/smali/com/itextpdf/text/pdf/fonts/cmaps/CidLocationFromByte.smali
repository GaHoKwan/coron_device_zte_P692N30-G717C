.class public Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte;
.super Ljava/lang/Object;
.source "CidLocationFromByte.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocation;


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte;->data:[B

    .line 58
    return-void
.end method


# virtual methods
.method public getLocation(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PRTokeniser;
    .locals 2
    .parameter "location"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte;->data:[B

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>([B)V

    return-object v0
.end method
