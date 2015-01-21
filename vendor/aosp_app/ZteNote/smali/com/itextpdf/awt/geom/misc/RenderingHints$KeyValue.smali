.class Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;
.super Ljava/lang/Object;
.source "RenderingHints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/misc/RenderingHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyValue"
.end annotation


# instance fields
.field private final key:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;


# direct methods
.method protected constructor <init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;->key:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;)Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;->key:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    return-object v0
.end method
