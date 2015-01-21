.class public Labw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Labu;

.field a:Landroid/view/View;

.field a:Ljava/lang/String;

.field b:I

.field b:Ljava/lang/String;

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput p1, p0, Labw;->b:I

    .line 280
    iput p2, p0, Labw;->c:I

    .line 281
    iput-object p3, p0, Labw;->a:Ljava/lang/String;

    .line 282
    iput-object p4, p0, Labw;->b:Ljava/lang/String;

    .line 283
    return-void
.end method
