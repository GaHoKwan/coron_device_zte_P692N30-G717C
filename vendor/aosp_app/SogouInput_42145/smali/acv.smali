.class Lacv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lact;


# direct methods
.method constructor <init>(Lact;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lacv;->a:Lact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lacv;->a:Lact;

    iget-object v0, v0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lacv;->a:Lact;

    iget-object v1, v1, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Lsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqy;->d(Lsg;)V

    .line 66
    return-void
.end method
