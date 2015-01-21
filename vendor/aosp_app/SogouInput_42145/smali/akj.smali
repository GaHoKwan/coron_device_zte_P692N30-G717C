.class Lakj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lajq;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lajq;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1817
    iput-object p1, p0, Lakj;->a:Lajq;

    iput-object p2, p0, Lakj;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1819
    iget-object v0, p0, Lakj;->a:Lajq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lajq;->a(Lajq;Z)Z

    .line 1820
    iget-object v0, p0, Lakj;->a:Lajq;

    iget-object v1, p0, Lakj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lajq;->a(Lajq;Ljava/lang/String;)V

    .line 1821
    return-void
.end method
