.class Lmc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lls;


# direct methods
.method constructor <init>(Lls;)V
    .locals 0
    .parameter

    .prologue
    .line 1043
    iput-object p1, p0, Lmc;->a:Lls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1045
    iget-object v0, p0, Lmc;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lkr;

    move-result-object v0

    iget-object v1, p0, Lmc;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr;->a(Ljava/lang/String;)Lko;

    move-result-object v0

    .line 1046
    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {v0}, Lko;->g()V

    .line 1049
    :cond_0
    return-void
.end method
