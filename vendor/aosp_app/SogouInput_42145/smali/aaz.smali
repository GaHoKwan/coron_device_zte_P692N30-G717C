.class Laaz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laaq;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Laaq;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Laaz;->a:Laaq;

    iput-object p2, p0, Laaz;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 678
    iget-object v0, p0, Laaz;->a:Laaq;

    iget-object v1, p0, Laaz;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Laaq;->a(Laaq;Ljava/lang/String;)V

    .line 679
    return-void
.end method
