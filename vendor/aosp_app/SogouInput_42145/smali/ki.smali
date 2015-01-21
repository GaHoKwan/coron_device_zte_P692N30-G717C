.class public final Lki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq;


# instance fields
.field private final a:Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lki;->a:Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lp;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lki;->a:Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a(Lp;)V

    .line 32
    return-void
.end method
