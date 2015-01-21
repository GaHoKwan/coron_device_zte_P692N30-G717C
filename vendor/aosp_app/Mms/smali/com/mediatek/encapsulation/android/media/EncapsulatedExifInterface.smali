.class public Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;
.super Landroid/media/ExifInterface;
.source "EncapsulatedExifInterface.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 12
    return-void
.end method
