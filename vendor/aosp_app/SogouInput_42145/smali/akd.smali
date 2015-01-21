.class Lakd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lajq;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lajq;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1196
    iput-object p1, p0, Lakd;->a:Lajq;

    iput-object p2, p0, Lakd;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1200
    iget-object v0, p0, Lakd;->a:Lajq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lajq;->b(Lajq;Z)V

    .line 1201
    iget-object v0, p0, Lakd;->a:Lajq;

    iget-object v1, p0, Lakd;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lajq;->a(Lajq;Ljava/lang/String;)V

    .line 1202
    return-void
.end method
