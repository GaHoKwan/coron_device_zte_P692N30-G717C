.class public interface abstract Lcom/pim/vcard/VCardParser;
.super Ljava/lang/Object;
.source "VCardParser.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract parse(Ljava/io/InputStream;Lcom/pim/vcard/VCardInterpreter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/pim/vcard/VCardInterpreter;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation
.end method
