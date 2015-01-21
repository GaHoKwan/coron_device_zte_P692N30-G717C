.class abstract Lef;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lef;->a:I

    .line 38
    return-void
.end method


# virtual methods
.method c()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lef;->a:I

    return v0
.end method
