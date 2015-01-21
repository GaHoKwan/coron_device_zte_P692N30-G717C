.class Llt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lls;


# direct methods
.method constructor <init>(Lls;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Llt;->a:Lls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 670
    iget-object v0, p0, Llt;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 672
    return-void
.end method
