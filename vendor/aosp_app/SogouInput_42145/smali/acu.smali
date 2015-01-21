.class Lacu;
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
    .line 55
    iput-object p1, p0, Lacu;->a:Lact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lacu;->a:Lact;

    iget-object v0, v0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 58
    iget-object v0, p0, Lacu;->a:Lact;

    iget-object v0, v0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 59
    return-void
.end method
