.class Lacp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lacn;


# direct methods
.method constructor <init>(Lacn;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lacp;->a:Lacn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lacp;->a:Lacn;

    iget-object v0, v0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lacp;->a:Lacn;

    iget-object v1, v1, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Lsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqy;->d(Lsg;)V

    .line 68
    return-void
.end method
