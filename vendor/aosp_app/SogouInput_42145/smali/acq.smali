.class Lacq;
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
    .line 106
    iput-object p1, p0, Lacq;->a:Lacn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 108
    new-instance v0, Lafs;

    iget-object v1, p0, Lacq;->a:Lacn;

    iget-object v1, v1, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lafs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lafs;->a()V

    .line 109
    return-void
.end method
