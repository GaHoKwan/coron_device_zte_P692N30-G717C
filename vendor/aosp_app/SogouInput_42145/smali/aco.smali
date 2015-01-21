.class Laco;
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
    .line 57
    iput-object p1, p0, Laco;->a:Lacn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laco;->a:Lacn;

    iget-object v0, v0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 60
    iget-object v0, p0, Laco;->a:Lacn;

    iget-object v0, v0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    return-void
.end method
