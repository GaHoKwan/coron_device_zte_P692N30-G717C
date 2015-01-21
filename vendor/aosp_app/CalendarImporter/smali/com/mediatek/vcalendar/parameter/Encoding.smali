.class public Lcom/mediatek/vcalendar/parameter/Encoding;
.super Lcom/mediatek/vcalendar/parameter/Parameter;
.source "Encoding.java"


# static fields
.field public static final BASE64:Ljava/lang/String; = "BASE64"

.field public static final BIT8:Ljava/lang/String; = "8BIT"

.field public static final QUOTED_PRINTABLE:Ljava/lang/String; = "QUOTED-PRINTABLE"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 48
    const-string v0, "ENCODING"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/parameter/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
