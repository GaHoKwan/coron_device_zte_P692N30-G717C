.class Lakp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lajq;


# direct methods
.method constructor <init>(Lajq;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lakp;->a:Lajq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lakp;->a:Lajq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lajq;->b(Lajq;Z)V

    .line 273
    iget-object v0, p0, Lakp;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 274
    return-void
.end method
