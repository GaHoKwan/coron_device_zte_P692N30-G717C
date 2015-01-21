.class public Lry;
.super Ljava/util/EventObject;
.source "SourceFile"


# instance fields
.field public a:I

.field public a:Ljava/lang/String;

.field final synthetic a:Lrr;

.field public b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lrr;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1354
    iput-object p1, p0, Lry;->a:Lrr;

    .line 1355
    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 1356
    return-void
.end method

.method synthetic constructor <init>(Lrr;Ljava/lang/Object;Lrs;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1349
    invoke-direct {p0, p1, p2}, Lry;-><init>(Lrr;Ljava/lang/Object;)V

    return-void
.end method
