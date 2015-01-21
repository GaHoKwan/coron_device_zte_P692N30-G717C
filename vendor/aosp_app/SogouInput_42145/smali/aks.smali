.class Laks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lajq;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Lorg/w3c/dom/NamedNodeMap;


# direct methods
.method constructor <init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Laks;->a:Lajq;

    iput-object p2, p0, Laks;->a:Lorg/w3c/dom/NamedNodeMap;

    iput-object p3, p0, Laks;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 661
    iget-object v0, p0, Laks;->a:Lajq;

    iget-object v1, p0, Laks;->a:Lorg/w3c/dom/NamedNodeMap;

    const-string v2, "sogouime:action_share"

    iget-object v3, p0, Laks;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lajq;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    return-void
.end method
