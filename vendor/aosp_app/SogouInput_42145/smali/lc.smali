.class public final Llc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:I

.field private final a:Lld;


# direct methods
.method public constructor <init>(Lld;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Llc;->a:Lld;

    .line 35
    iput p2, p0, Llc;->a:I

    .line 36
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Llc;->a:Lld;

    iget v1, p0, Llc;->a:I

    invoke-virtual {v0, v1}, Lld;->a(I)V

    .line 40
    return-void
.end method
