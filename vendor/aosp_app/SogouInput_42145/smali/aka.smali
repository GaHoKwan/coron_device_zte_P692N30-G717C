.class Laka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lajq;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Lorg/w3c/dom/NamedNodeMap;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Laka;->a:Lajq;

    iput-object p2, p0, Laka;->a:Lorg/w3c/dom/NamedNodeMap;

    iput-object p3, p0, Laka;->a:Ljava/lang/String;

    iput-object p4, p0, Laka;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1155
    iget-object v0, p0, Laka;->a:Lajq;

    iget-object v1, p0, Laka;->a:Lorg/w3c/dom/NamedNodeMap;

    iget-object v2, p0, Laka;->a:Ljava/lang/String;

    iget-object v3, p0, Laka;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lajq;->a(Lajq;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    return-void
.end method
