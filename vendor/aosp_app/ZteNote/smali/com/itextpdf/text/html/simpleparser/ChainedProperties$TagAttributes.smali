.class final Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;
.super Ljava/lang/Object;
.source "ChainedProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/html/simpleparser/ChainedProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TagAttributes"
.end annotation


# instance fields
.field final attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;->tag:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;->attrs:Ljava/util/Map;

    .line 75
    return-void
.end method