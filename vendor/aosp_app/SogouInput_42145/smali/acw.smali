.class Lacw;
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
    .line 109
    iput-object p1, p0, Lacw;->a:Lact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    new-instance v0, Lafs;

    iget-object v1, p0, Lacw;->a:Lact;

    iget-object v1, v1, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lafs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lafs;->a()V

    .line 112
    return-void
.end method
