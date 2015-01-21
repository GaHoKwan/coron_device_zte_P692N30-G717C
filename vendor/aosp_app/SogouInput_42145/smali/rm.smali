.class public Lrm;
.super Ljava/util/EventObject;
.source "SourceFile"


# instance fields
.field private a:I

.field final synthetic a:Lri;

.field private b:I


# direct methods
.method public constructor <init>(Lri;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lrm;->a:Lri;

    .line 884
    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 885
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 888
    iget v0, p0, Lrm;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 892
    iput p1, p0, Lrm;->a:I

    .line 893
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Lrm;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 900
    iput p1, p0, Lrm;->b:I

    .line 901
    return-void
.end method
