.class Laas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Laaq;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Laaq;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1435
    iput-object p1, p0, Laas;->a:Laaq;

    iput-object p2, p0, Laas;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1439
    iget-object v0, p0, Laas;->a:Laaq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laaq;->a(Laaq;Z)V

    .line 1440
    iget-object v0, p0, Laas;->a:Laaq;

    iget-object v1, p0, Laas;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Laaq;->b(Laaq;Ljava/lang/String;)V

    .line 1441
    return-void
.end method
